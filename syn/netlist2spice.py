#!/usr/bin/env python3
"""Turn a yosys JSON gate netlist into a SPICE .subckt of standard-cell calls.

Why not `yosys write_spice`?  A SPICE subcircuit call is *positional*, and the
pin order of a sky130 `.subckt` is not the pin order of its liberty cell -- the
liberty file does not even mention VPWR/VGND/VPB/VNB.  So the only trustworthy
source for the order is the vendor SPICE file itself, which is what this script
parses.  Compare, from sky130_fd_sc_hd.spice:

    .subckt sky130_fd_sc_hd__dfrtp_1 CLK D RESET_B VGND VNB VPB VPWR Q
    .subckt sky130_fd_sc_hd__conb_1  VGND VNB VPB VPWR HI LO

Same library, different conventions.  Guess the order and the netlist still
simulates -- it just simulates the wrong circuit.

Usage:
    netlist2spice.py netlist.json --top sar_top --cells <lib>.spice -o out.spice
"""

import argparse
import json
import os
import re
import sys

# Cell bulk/supply pins are not in the yosys netlist; they are tied by name.
SUPPLY_ALIAS = {"VPWR": "VPWR", "VPB": "VPWR", "VGND": "VGND", "VNB": "VGND"}

SUBCKT_RE = re.compile(r"^\s*\.subckt\s+(\S+)\s*(.*)$", re.IGNORECASE)


def read_subckt_pins(paths):
    """cell name -> ordered pin list, taken from the vendor SPICE .subckt lines."""
    pins = {}
    for path in paths:
        with open(path) as fh:
            for line in fh:
                m = SUBCKT_RE.match(line)
                if m:
                    # drop any name=value params, keep bare node names
                    ports = [p for p in m.group(2).split() if "=" not in p]
                    pins[m.group(1)] = ports
    return pins


def sanitise(name):
    """Make a RTLIL signal name safe to use as a SPICE node name."""
    name = name.lstrip("\\")
    name = name.replace("[", "_").replace("]", "")
    return re.sub(r"[^A-Za-z0-9_]", "_", name)


def expand_ports(module):
    """[(spice terminal name, direction)] -- one entry per BIT, not per port.

    A multi-bit port is one entry in module["ports"] but N terminals in SPICE.
    Collapsing it to a single name produces a .subckt that still parses and
    still simulates, with the bus bits quietly turned into internal floating
    nets.  Expanding here keeps the terminal list in step with build_net_names().
    """
    dirmap = {"input": "in", "output": "out", "inout": "inout"}
    out = []
    for pname, port in module["ports"].items():
        bits = port["bits"]
        direction = dirmap[port["direction"]]
        if len(bits) == 1:
            out.append((sanitise(pname), direction))
        else:
            out += [(sanitise("%s[%d]" % (pname, i)), direction)
                    for i in range(len(bits))]
    return out


def check_unique(kind, items):
    """SPICE is case-insensitive, and sanitise() is many-to-one.

    `foo.bar` and `foo$bar` both become `foo_bar`.  For instance names that is
    a duplicate-device error; for NET names it silently shorts two nodes, which
    is far worse.  Refuse to emit either.
    """
    seen = {}
    for original, spice in items:
        key = spice.lower()
        if key in seen and seen[key] != original:
            raise SystemExit(
                "%s name collision: %r and %r both map to %r.\n"
                "Rename in RTL, or extend sanitise()." % (kind, seen[key], original, spice))
        seen[key] = original


def build_net_names(module):
    """bit id -> SPICE node name, preferring names a human wrote."""
    names = {}
    # ports win outright: they are the subckt's own terminals
    for pname, port in module["ports"].items():
        for idx, bit in enumerate(port["bits"]):
            if isinstance(bit, int):
                names[bit] = sanitise(pname if len(port["bits"]) == 1
                                      else "%s[%d]" % (pname, idx))
    # then any surviving public wire name, then a generated one
    for nname, net in module.get("netnames", {}).items():
        if net.get("hide_name"):
            continue
        for idx, bit in enumerate(net["bits"]):
            if isinstance(bit, int) and bit not in names:
                names[bit] = sanitise(nname if len(net["bits"]) == 1
                                      else "%s[%d]" % (nname, idx))
    return names


def bit_to_node(bit, names, vpwr, vgnd):
    if bit == "0":
        return vgnd
    if bit == "1":
        return vpwr
    if not isinstance(bit, int):
        raise SystemExit("cannot netlist undriven/tristate bit %r" % (bit,))
    return names.setdefault(bit, "net%d" % bit)


def write_symbol(path, top, spice_file, pins):
    """Emit an xschem symbol whose pin *names* match the .subckt terminals.

    xschem's has_included_subcircuit() reads the .subckt line out of the
    included file and reorders @pinlist to match it by name, so as long as the
    names agree the terminal order can never silently drift out of sync with
    the netlist.
    """
    ins = [(n, d) for n, d in pins if d == "in"]
    outs = [(n, d) for n, d in pins if d == "out"]
    sups = [(n, d) for n, d in pins if d == "inout"]

    pitch = 20
    height = max(len(ins), len(outs)) * pitch + pitch
    left, right = -140, 140

    body = []
    labels = []

    def place(items, x_stub, x_body, side):
        for i, (name, direction) in enumerate(items):
            y = pitch * (i + 1)
            body.append("L 4 %d %d %d %d {}" % (x_stub, y, x_body, y))
            body.append("B 5 %g %g %g %g {name=%s dir=%s}"
                        % (x_stub - 2.5, y - 2.5, x_stub + 2.5, y + 2.5, name, direction))
            labels.append("T {%s} %d %d 0 %d 0.2 0.2 {}"
                          % (name, x_body + (6 if side == "l" else -6), y - 4,
                             0 if side == "l" else 1))

    place(ins, left - 20, left, "l")
    place(outs, right + 20, right, "r")

    # supplies enter vertically, top and bottom
    for i, (name, direction) in enumerate(sups):
        top_pin = (i == 0)
        y_stub = -20 if top_pin else height + 20
        y_body = 0 if top_pin else height
        body.append("L 7 0 %d 0 %d {}" % (y_stub, y_body))
        body.append("B 5 -2.5 %g 2.5 %g {name=%s dir=%s}"
                    % (y_stub - 2.5, y_stub + 2.5, name, direction))
        labels.append("T {%s} %d %d 0 %d 0.2 0.2 {}"
                      % (name, 8, y_body + (6 if top_pin else -16), 0, ))

    with open(path, "w") as fh:
        fh.write("v {xschem version=3.4.8RC file_version=1.3}\n")
        fh.write("G {}\n")
        fh.write("K {type=subcircuit\n"
                 'format="@name @pinlist @symname"\n'
                 'template="name=x1"\n'
                 'spice_sym_def="tcleval(.include [abs_sym_path %s])"\n'
                 "}\n" % spice_file)
        fh.write("V {}\nS {}\nF {}\nE {}\n")
        fh.write("\n".join(body) + "\n")
        fh.write("P 4 5 %d 0 %d 0 %d %d %d %d %d 0 {}\n"
                 % (right, left, left, height, right, height, right))
        fh.write("T {@symname} %d %d 0 0 0.3 0.3 {}\n" % (left + 20, height // 2))
        fh.write("T {@name} %d -12 0 0 0.2 0.2 {}\n" % (right - 40))
        fh.write("\n".join(labels) + "\n")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("json")
    ap.add_argument("--top", required=True)
    ap.add_argument("--cells", nargs="+", required=True,
                    help="vendor SPICE file(s) providing the .subckt pin order")
    ap.add_argument("--vpwr", default="VPWR")
    ap.add_argument("--vgnd", default="VGND")
    ap.add_argument("-o", "--output", required=True)
    ap.add_argument("--sym", help="also write a matching xschem symbol here")
    args = ap.parse_args()

    pinmap = read_subckt_pins(args.cells)
    design = json.load(open(args.json))
    if args.top not in design["modules"]:
        raise SystemExit("no module %r in %s" % (args.top, args.json))
    module = design["modules"][args.top]

    # `read_liberty -lib` leaves a black-box module per cell; that is the only
    # place a pin the instance never mentions still has a known direction.
    celldirs = {
        name: {p: d["direction"] for p, d in mod.get("ports", {}).items()}
        for name, mod in design["modules"].items()
    }

    names = build_net_names(module)
    sympins = expand_ports(module) + [(args.vpwr, "inout"), (args.vgnd, "inout")]
    ports = [p for p, _ in sympins]
    check_unique("terminal", [(p, p) for p in ports])
    check_unique("instance", [(c, sanitise(c)) for c in module["cells"]])

    lines = [
        "* %s -- standard-cell netlist generated from %s" % (args.top, args.json),
        "* Generated by syn/netlist2spice.py -- do not edit by hand.",
        "* Pin order of every X-line is taken from: %s" % ", ".join(args.cells),
        "*",
        ".subckt %s %s" % (args.top, " ".join(ports)),
    ]

    histogram = {}
    for cname, cell in sorted(module["cells"].items()):
        ctype = cell["type"]
        if ctype not in pinmap:
            raise SystemExit("cell %s not found in the supplied SPICE libs" % ctype)
        histogram[ctype] = histogram.get(ctype, 0) + 1
        nodes = []
        for pin in pinmap[ctype]:
            if pin in SUPPLY_ALIAS:
                nodes.append(args.vpwr if SUPPLY_ALIAS[pin] == "VPWR" else args.vgnd)
                continue
            conn = cell["connections"].get(pin)
            if conn is None:
                # e.g. hilomap only uses conb_1's HI pin; SPICE still needs a
                # node there, so give the unused output a private dangling net.
                direction = (cell.get("port_directions", {}).get(pin)
                             or celldirs.get(ctype, {}).get(pin))
                if direction == "output":
                    nodes.append("%s_%s_nc" % (sanitise(cname), pin))
                    continue
                raise SystemExit("cell %s (%s) leaves input pin %s unconnected"
                                 % (cname, ctype, pin))
            if len(conn) != 1:
                raise SystemExit("pin %s of %s is not 1 bit wide" % (pin, cname))
            nodes.append(bit_to_node(conn[0], names, args.vpwr, args.vgnd))
        lines.append("X%s %s %s" % (sanitise(cname), " ".join(nodes), ctype))

    # bit_to_node() invents names lazily, so injectivity can only be checked now
    check_unique("net", [(str(bit), n) for bit, n in names.items()])

    ties = sum(1 for cell in module["cells"].values()
               for conn in cell["connections"].values()
               for bit in conn if bit in ("0", "1"))
    if ties:
        print("WARNING: %d cell pin(s) tied straight to a supply rail.\n"
              "         Run `hilomap` in yosys to use real tie cells instead."
              % ties, file=sys.stderr)

    lines += [".ends %s" % args.top, ""]
    with open(args.output, "w") as fh:
        fh.write("\n".join(lines))

    print("wrote %s: %d instances, %d terminals" % (args.output, len(module["cells"]), len(ports)))
    for ctype, n in sorted(histogram.items()):
        print("  %4d x %s  (%s)" % (n, ctype, " ".join(pinmap[ctype])))

    if args.sym:
        write_symbol(args.sym, args.top, os.path.basename(args.output), sympins)
        print("wrote %s: %d pins" % (args.sym, len(sympins)))
    return 0


if __name__ == "__main__":
    sys.exit(main())
