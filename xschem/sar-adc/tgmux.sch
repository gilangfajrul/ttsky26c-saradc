v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 260 -330 270 -330 {lab=VN}
N 260 -330 260 -180 {lab=VN}
N 260 -180 270 -180 {lab=VN}
N 330 -330 340 -330 {lab=OUT}
N 340 -330 340 -180 {lab=OUT}
N 330 -180 340 -180 {lab=OUT}
N 260 -610 270 -610 {lab=VP}
N 260 -610 260 -460 {lab=VP}
N 260 -460 270 -460 {lab=VP}
N 330 -610 340 -610 {lab=OUT}
N 340 -610 340 -460 {lab=OUT}
N 330 -460 340 -460 {lab=OUT}
N 300 -420 300 -370 {lab=SB}
N 160 -390 300 -390 {lab=SB}
N 340 -250 360 -250 {lab=OUT}
N 360 -530 360 -250 {lab=OUT}
N 340 -530 360 -530 {lab=OUT}
N 160 -540 260 -540 {lab=VP}
N 160 -240 260 -240 {lab=VN}
N 360 -390 430 -390 {lab=OUT}
N 300 -140 300 -120 {lab=S}
N 150 -120 300 -120 {lab=S}
N 300 -670 300 -650 {lab=S}
N 160 -670 300 -670 {lab=S}
N 300 -200 300 -180 {lab=VDD}
N 300 -330 300 -310 {lab=VSS}
N 300 -480 300 -460 {lab=VDD}
N 300 -610 300 -590 {lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 300 -350 1 0 {name=M1
W=2.5
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 300 -160 3 0 {name=M2
W=5
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 300 -630 1 0 {name=M3
W=2.5
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 300 -440 3 0 {name=M4
W=5
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 160 -670 0 0 {name=p1 sig_type=std_logic lab=S}
C {lab_pin.sym} 150 -120 0 0 {name=p2 sig_type=std_logic lab=S}
C {lab_pin.sym} 160 -390 0 0 {name=p3 sig_type=std_logic lab=SB}
C {lab_pin.sym} 160 -540 0 0 {name=p4 sig_type=std_logic lab=VP}
C {lab_pin.sym} 160 -240 0 0 {name=p5 sig_type=std_logic lab=VN}
C {lab_pin.sym} 430 -390 2 0 {name=p6 sig_type=std_logic lab=OUT}
C {iopin.sym} 550 -630 0 0 {name=p7 lab=VP}
C {iopin.sym} 550 -610 0 0 {name=p8 lab=VN}
C {ipin.sym} 550 -590 0 0 {name=p9 lab=S}
C {opin.sym} 550 -550 0 0 {name=p11 lab=OUT}
C {lab_pin.sym} 300 -590 3 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 300 -310 3 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 300 -200 1 0 {name=p14 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 300 -480 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {iopin.sym} 550 -530 0 0 {name=p16 lab=VDD}
C {iopin.sym} 550 -510 0 0 {name=p17 lab=VSS}
C {sky130_stdcells/inv_4.sym} 50 -390 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {lab_pin.sym} 10 -390 0 0 {name=p10 sig_type=std_logic lab=S}
C {lab_pin.sym} 90 -390 2 0 {name=p18 sig_type=std_logic lab=SB}
