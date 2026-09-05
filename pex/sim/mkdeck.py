#!/usr/bin/env python3
"""Bangun deck perbandingan CDAC: skematik vs PEX(C) vs PEX(RC).

Jaringan CDAC murni kapasitif -> linier -> bobot tiap bottom-plate
(w_k = C_k/C_tot) cukup diukur sekali dengan .ac, lalu seluruh kode
dihitung dengan superposisi (eksak, bukan aproksimasi).
"""
import os, re

ROOT = '/foss/designs/ttsky26c-saradc'
SIM  = os.path.join(ROOT, 'pex/sim')
NODES = ['b0','b1','b2','b3a','b3b','b4a','b4b','b5a','b5b','b6a','b6b','vssp']

# ---------------------------------------------------------------- subckt sch
raw = open(os.path.join(ROOT, 'xschem/sar-adc/simulation/cdac.spice')).read()
sch = []
for ln in raw.splitlines():
    if ln.startswith('**.subckt') or ln.startswith('**.ends'):
        sch.append(ln[2:])          # buang marker komentar xschem
    elif ln.startswith('*') or ln.startswith('.end'):
        continue
    else:
        sch.append(ln)
open(os.path.join(SIM, 'cdac_sch.spice'), 'w').write('\n'.join(sch) + '\n')

# ------------------------------------------------- subckt pex (C dan full-RC)
# magic memberi node substrat implisit tanpa jalur DC; di ADC pin vss cdac
# tersambung ke avss, jadi node itu diikat ke pin vss.
for tag, src in (('pex', 'pex/c/cdac.pex.spice'), ('rc', 'pex/rc/cdac.pex.spice')):
    raw = open(os.path.join(ROOT, src)).read()
    # magic menamai node substrat implisit 'w_n<x>_n<y>#' atau 'VSUBS',
    # tergantung apakah layout punya definisi substrat bernama
    subs = sorted(set(re.findall(r'\bw_n\d+_n\d+#', raw)) |
                  set(re.findall(r'\bVSUBS\b', raw)))
    assert len(subs) == 1, subs
    out = []
    for ln in raw.splitlines():
        if ln.strip().lower().startswith('.ends'):
            out.append('* substrat magic diikat ke pin vss (di ADC pin ini = avss)')
            out.append('Vsub %s vss 0' % subs[0])
        out.append(ln)
    open(os.path.join(SIM, 'cdac_%s.spice' % tag), 'w').write('\n'.join(out) + '\n')
    print('%-4s node substrat: %s' % (tag, subs[0]))

HDR = """.lib /foss/pdks/sky130A/libs.tech/combined/sky130.lib.spice tt
.temp 27
.include {inc}
.options reltol=1e-5 vntol=1e-9 abstol=1e-15 chgtol=1e-16
"""

# ---------------------------------------------------------------- deck bobot
W_DECK = """* ekstraksi bobot CDAC -- {flav}
""" + HDR + """
Xdut ctop b1 b2 b3a b4a b5b b6b b0 vssp b4b b5a b6a b3b cdac
Rleak ctop 0 1T
{srcs}
Ictop 0 ctop dc 0 ac 0

.control
set noaskquit
* kapasitansi total di ctop: |v| = 1/(2 pi f Ctot)
alter @ictop[acmag]=1
ac lin 1 1e6 1e6
let ztop = mag(v(ctop))
echo CTOT {flav} $&ztop
alter @ictop[acmag]=0
* bobot tiap bottom-plate: w_k = C_k / C_tot
foreach nn {nodes}
  alter v$nn acmag = 1
  ac lin 1 1e6 1e6
  let wk = mag(v(ctop))
  echo W {flav} $nn $&wk
  alter v$nn acmag = 0
  destroy all
end
quit
.endc
.end
"""

# ------------------------------------------------------- deck settling MSB
# Transisi clk1: b6a 0->D7, b6b 1->D7. Kasus D7=0 -> b6b jatuh 1.8->0
# (32 unit, ayunan terbesar). Driver std-cell or2_4 didekati R seri 150 ohm
# + rise/fall 150 ps; identik untuk ketiga flavor sehingga selisih yang
# terlihat murni milik CDAC.
T_DECK = """* settling MSB CDAC -- {flav}
""" + HDR + """
Xdut ctop b1 b2 b3a b4a b5b b6b b0 vssp b4b b5a b6a b3b cdac
Rleak ctop 0 1T

* bottom-plate yang diam pada keadaan awal konversi (semua B=1, A=0)
{quiet}
* MSB-B yang beralih 1.8 -> 0
Vd6b  d6b  0 PULSE(1.8 0 1n 150p 150p 100n 200n)
Rd6b  d6b  b6b 150

.control
set noaskquit
save v(ctop) v(b6b)
tran 1p 6n
meas tran vfin FIND v(ctop) AT=5.9n
let err = abs(v(ctop) - vfin)
meas tran t05 WHEN err=7.03125m FALL=LAST
meas tran t01 WHEN err=1.40625m FALL=LAST
echo TSTEP {flav} $&vfin
wrdata tran_{flav}.dat v(ctop)
quit
.endc
.end
"""

for flav, inc in (('sch','cdac_sch.spice'), ('pex','cdac_pex.spice'), ('rc','cdac_rc.spice')):
    srcs = '\n'.join('V%-5s %-5s 0 dc 0 ac 0' % (n, n) for n in NODES)
    open(os.path.join(SIM, 'w_%s.sp' % flav), 'w').write(
        W_DECK.format(flav=flav, inc=inc, srcs=srcs, nodes=' '.join(NODES)))
    # keadaan awal konversi: B-cap = 1.8, A-cap = 0, dummy = 0
    hi = ['b5b','b4b','b3b','b2','b1','b0']
    lo = ['b6a','b5a','b4a','b3a','vssp']
    quiet = '\n'.join(['V%-5s %-5s 0 DC 1.8' % (n,n) for n in hi] +
                      ['V%-5s %-5s 0 DC 0'   % (n,n) for n in lo])
    open(os.path.join(SIM, 't_%s.sp' % flav), 'w').write(
        T_DECK.format(flav=flav, inc=inc, quiet=quiet))
print('deck ditulis di', SIM)
