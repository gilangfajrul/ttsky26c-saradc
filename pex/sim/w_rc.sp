* ekstraksi bobot CDAC -- rc
.lib /foss/pdks/sky130A/libs.tech/combined/sky130.lib.spice tt
.temp 27
.include cdac_rc.spice
.options reltol=1e-5 vntol=1e-9 abstol=1e-15 chgtol=1e-16

Xdut ctop b1 b2 b3a b4a b5b b6b b0 vssp b4b b5a b6a b3b cdac
Rleak ctop 0 1T
Vb0    b0    0 dc 0 ac 0
Vb1    b1    0 dc 0 ac 0
Vb2    b2    0 dc 0 ac 0
Vb3a   b3a   0 dc 0 ac 0
Vb3b   b3b   0 dc 0 ac 0
Vb4a   b4a   0 dc 0 ac 0
Vb4b   b4b   0 dc 0 ac 0
Vb5a   b5a   0 dc 0 ac 0
Vb5b   b5b   0 dc 0 ac 0
Vb6a   b6a   0 dc 0 ac 0
Vb6b   b6b   0 dc 0 ac 0
Vvssp  vssp  0 dc 0 ac 0
Ictop 0 ctop dc 0 ac 0

.control
set noaskquit
* kapasitansi total di ctop: |v| = 1/(2 pi f Ctot)
alter @ictop[acmag]=1
ac lin 1 1e6 1e6
let ztop = mag(v(ctop))
echo CTOT rc $&ztop
alter @ictop[acmag]=0
* bobot tiap bottom-plate: w_k = C_k / C_tot
foreach nn b0 b1 b2 b3a b3b b4a b4b b5a b5b b6a b6b vssp
  alter v$nn acmag = 1
  ac lin 1 1e6 1e6
  let wk = mag(v(ctop))
  echo W rc $nn $&wk
  alter v$nn acmag = 0
  destroy all
end
quit
.endc
.end
