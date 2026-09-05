* settling MSB CDAC -- rc
.lib /foss/pdks/sky130A/libs.tech/combined/sky130.lib.spice tt
.temp 27
.include cdac_rc.spice
.options reltol=1e-5 vntol=1e-9 abstol=1e-15 chgtol=1e-16

Xdut ctop b1 b2 b3a b4a b5b b6b b0 vssp b4b b5a b6a b3b cdac
Rleak ctop 0 1T

* bottom-plate yang diam pada keadaan awal konversi (semua B=1, A=0)
Vb5b   b5b   0 DC 1.8
Vb4b   b4b   0 DC 1.8
Vb3b   b3b   0 DC 1.8
Vb2    b2    0 DC 1.8
Vb1    b1    0 DC 1.8
Vb0    b0    0 DC 1.8
Vb6a   b6a   0 DC 0
Vb5a   b5a   0 DC 0
Vb4a   b4a   0 DC 0
Vb3a   b3a   0 DC 0
Vvssp  vssp  0 DC 0
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
echo TSTEP rc $&vfin
wrdata tran_rc.dat v(ctop)
quit
.endc
.end
