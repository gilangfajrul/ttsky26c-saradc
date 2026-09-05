#!/bin/sh
#
# LVS runner for ttsky26c-saradc.
#
#   Usage:  lvs/run-lvs.sh [cell ...]
#
# With no arguments it runs every cell in DEFAULT_CELLS below.  Can be called
# from any directory.
#
#
# WHY THIS WRAPPER EXISTS
# -----------------------
# sak-lvs.sh netlists the schematic with an explicit
#
#     --rcfile $PDK_ROOT/$PDK/libs.tech/xschem/xschemrc
#
# Two consequences, both verified by experiment:
#
#   1. Passing --rcfile makes xschem ignore ./xschemrc entirely.  Our
#      xschem/xschemrc -- the one that appends the project directories to
#      XSCHEM_LIBRARY_PATH -- is therefore NOT involved in the sak-lvs path at
#      all.  (Tested: an xschemrc in the cwd that appends the project dir
#      changes nothing; the netlist still comes out empty.)
#
#   2. xschem resolves a relative symbol reference such as {cdac.sym} against
#      the CURRENT WORKING DIRECTORY.  (Tested: copies of the child .sym/.sch
#      in an otherwise empty cwd, no xschemrc at all, parent given by absolute
#      path -> every child resolves.)
#
# So the trigger is purely the cwd: run sak-lvs from xschem/sar-adc and the
# children are found because they sit in the cwd; run it from the repo root or
# from lvs/ and every locally-defined child symbol netlists as a comment
# instead of an instance:
#
#     *  x1 -  cdac  IS MISSING !!!!
#
# xschem still exits 0 and still writes the file.  So the schematic side comes
# out as an empty .subckt, netgen reports every pin as a disconnected node, and
# the run ends with
#
#     Final result: Verify: cell ..._magic.spice has no elements and/or nodes.
#                   Not checked.
#
# That is a silent non-result: exit status 0, a tidy-looking .lvs.out, and two
# lines in it that read "equivalent" (they only compare the pin *names*, which
# survive in *.PININFO even when the body is empty).
#
# The fix is XSCHEM_USER_LIBRARY_PATH.  The PDK rcfile wipes
# XSCHEM_LIBRARY_PATH (line 29, "set XSCHEM_LIBRARY_PATH {}") and rebuilds it,
# so exporting XSCHEM_LIBRARY_PATH is useless -- but line 774 of that same
# rcfile appends $env(XSCHEM_USER_LIBRARY_PATH) AFTER the rebuild (the
# iic-osic-tools hook).  Since sak-lvs uses exactly that rcfile, the hook fires
# and the search path gains our directory regardless of cwd.  Everything else
# here is guard rails.
#
# Only blocks assembled from our own schematics are affected.  Blocks whose
# children are all PDK devices or sky130_fd_sc_hd cells are immune, because the
# PDK rcfile keeps those on the library path -- which is why comparator (6 hd
# cells) and delay_control (7) always passed while CDACnDriver (0 hd cells,
# 3 local children) did not.
#
# verify() below turns that silent failure into a non-zero exit.

set -eu

# PDK pinning, XSCHEM_USER_LIBRARY_PATH and PATH all live in one place, so a
# new flow script inherits the fixes instead of rediscovering the bugs.
# REPO is pre-set so env.sh does not have to guess from $PWD.
REPO=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
. "$REPO/flow/env.sh"

RESDIR=$LVS_DIR

# Cells whose .sch and .mag basenames agree.  Keep this list in sync as blocks
# are added; a cell can also be passed on the command line.
DEFAULT_CELLS="bootstrap comparator delay_control cdac A_CDAC B_CDAC CDACnDriver EOC_delay"

require_tools xschem magic netgen sak-lvs.sh

# ---------------------------------------------------------------------------
# per-cell result check
# ---------------------------------------------------------------------------

# verify <cell> -> prints a verdict, returns non-zero unless it matched
verify() {
	_cell=$1
	_net=$RESDIR/${_cell}_magic.spice
	_out=$RESDIR/$_cell.magic.lvs/$_cell.lvs.out

	if [ ! -f "$_net" ]; then
		echo "FAIL      $_cell -- no schematic netlist produced"
		return 1
	fi
	if grep -q 'IS MISSING' "$_net"; then
		echo "FAIL      $_cell -- schematic netlist is empty (children not found:"
		grep -o '\- *[A-Za-z0-9_+.-]* *IS MISSING' "$_net" |
			awk '{print $2}' | sort -u | tr '\n' ' ' | sed 's/^/          /;s/$/)/'
		echo
		return 1
	fi
	if [ ! -f "$_out" ]; then
		echo "FAIL      $_cell -- no netgen report produced"
		return 1
	fi
	if grep -q 'Not checked' "$_out"; then
		echo "FAIL      $_cell -- netgen did not compare (Not checked)"
		return 1
	fi
	if grep -q 'Circuits match uniquely' "$_out"; then
		echo "PASS      $_cell"
		return 0
	fi
	echo "MISMATCH  $_cell -- see $_out"
	return 1
}

# ---------------------------------------------------------------------------
# main
# ---------------------------------------------------------------------------

[ $# -gt 0 ] && CELLS=$* || CELLS=$DEFAULT_CELLS

mkdir -p "$RESDIR"
failed=0

for cell in $CELLS; do
	sch=$SCH_DIR/$cell.sch
	lay=$MAG_DIR/$cell.mag

	if [ ! -f "$sch" ]; then
		echo "SKIP      $cell -- no schematic at $sch"
		failed=$((failed + 1))
		continue
	fi
	if [ ! -f "$lay" ]; then
		echo "SKIP      $cell -- no layout at $lay"
		failed=$((failed + 1))
		continue
	fi

	echo "--- $cell ---"
	sak-lvs.sh -m -w "$RESDIR" -s "$sch" -l "$lay" -c "$cell" 2>&1 |
		sed 's/^/          /' || true

	verify "$cell" || failed=$((failed + 1))
done

echo
if [ "$failed" -eq 0 ]; then
	echo "All cells matched."
else
	echo "$failed cell(s) did not match."
fi
exit $((failed > 0))
