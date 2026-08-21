v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1500 -170 1570 -170 {lab=vin}
N 1630 -170 1700 -170 {lab=vout}
N 1160 -390 1200 -390 {lab=vdd}
N 1470 -230 1600 -230 {lab=vgate}
N 1270 -370 1350 -370 {lab=ctop}
N 1470 -370 1470 -210 {lab=vgate}
N 1410 -370 1470 -370 {lab=vgate}
N 1270 -410 1270 -370 {lab=ctop}
N 1270 -170 1440 -170 {lab=cbot}
N 1420 -230 1470 -230 {lab=vgate}
N 1310 -440 1470 -440 {lab=vgate}
N 1380 -330 1380 -260 {lab=vgdistop}
N 1380 -200 1380 -170 {lab=cbot}
N 1600 -230 1600 -210 {lab=vgate}
N 1470 -370 1520 -370 {lab=vgate}
N 1650 -440 1650 -410 {lab=clkb}
N 1580 -370 1620 -370 {lab=vschtopdrv1}
N 1270 -170 1270 -150 {lab=cbot}
N 1270 -190 1270 -170 {lab=cbot}
N 1160 -330 1160 -300 {lab=vgdistop}
N 1160 -240 1160 -170 {lab=cbot}
N 1160 -170 1270 -170 {lab=cbot}
N 1160 -320 1380 -320 {lab=vgdistop}
N 1270 -370 1270 -250 {lab=ctop}
N 1160 -360 1160 -330 {lab=vgdistop}
N 1160 -470 1160 -420 {lab=vdd}
N 1160 -470 1270 -470 {lab=vdd}
N 1100 -390 1120 -390 {lab=clk}
N 1100 -390 1100 -270 {lab=clk}
N 1100 -270 1120 -270 {lab=clk}
N 1270 -120 1280 -120 {lab=vss}
N 1280 -120 1280 -90 {lab=vss}
N 1270 -90 1280 -90 {lab=vss}
N 1270 -90 1270 -70 {lab=vss}
N 1680 -370 1700 -370 {lab=vss}
N 1060 -330 1100 -330 {lab=clk}
N 1210 -120 1230 -120 {lab=clkb}
N 1130 -470 1160 -470 {lab=vdd}
N 1370 -230 1380 -230 {lab=vss}
N 1470 -170 1470 -160 {lab=vss}
N 1600 -170 1600 -160 {lab=vss}
N 1550 -370 1550 -360 {lab=vss}
N 1650 -370 1650 -360 {lab=vss}
N 1160 -270 1170 -270 {lab=vss}
N 1550 -440 1550 -410 {lab=vdd}
N 1470 -440 1470 -370 {lab=vgate}
N 1550 -470 1550 -440 {lab=vdd}
N 1270 -470 1550 -470 {lab=vdd}
N 1170 -270 1200 -270 {lab=vss}
N 1350 -370 1380 -370 {lab=ctop}
N 1270 -440 1270 -410 {lab=ctop}
C {sky130_fd_pr/nfet_01v8.sym} 1600 -190 3 1 {name=Mswitch
W=2
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
C {sky130_fd_pr/nfet_01v8.sym} 1470 -190 3 1 {name=Mdisbot
W=1
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 1270 -220 0 1 {name=Cboot model=cap_mim_m3_1 W=10 L=10 MF=1 spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 1380 -350 3 0 {name=Mdistop
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 1290 -440 0 1 {name=Mchtop
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 1400 -230 0 1 {name=Mdistopdrv
W=0.5
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
C {sky130_fd_pr/nfet_01v8.sym} 1650 -390 3 1 {name=Mchtopdrv2
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 1250 -120 0 0 {name=Mchbot
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 1140 -390 0 0 {name=M1
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 1140 -270 0 0 {name=M2
W=0.5
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
C {lab_pin.sym} 1270 -70 0 0 {name=p1 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1700 -370 2 0 {name=p2 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1650 -440 2 0 {name=p3 sig_type=std_logic lab=clkb}
C {lab_pin.sym} 1060 -330 0 0 {name=p4 sig_type=std_logic lab=clk}
C {lab_pin.sym} 1210 -120 0 0 {name=p5 sig_type=std_logic lab=clkb}
C {lab_wire.sym} 1310 -370 0 0 {name=p6 sig_type=std_logic lab=ctop}
C {lab_wire.sym} 1320 -170 0 0 {name=p7 sig_type=std_logic lab=cbot}
C {lab_wire.sym} 1520 -230 0 0 {name=p8 sig_type=std_logic lab=vgate}
C {lab_wire.sym} 1380 -280 0 0 {name=p9 sig_type=std_logic lab=vgdistop}
C {lab_pin.sym} 1130 -470 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1370 -230 0 0 {name=p12 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1470 -160 3 0 {name=p13 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1600 -160 3 0 {name=p14 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1550 -360 3 0 {name=p15 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1650 -360 3 0 {name=p16 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1200 -270 2 0 {name=p19 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1200 -390 2 0 {name=p20 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 1530 -170 0 0 {name=p21 sig_type=std_logic lab=vin}
C {lab_wire.sym} 1670 -170 0 1 {name=p22 sig_type=std_logic lab=vout}
C {ipin.sym} 900 -520 0 0 {name=pi1 lab=clk}
C {ipin.sym} 900 -500 0 0 {name=pi2 lab=clkb}
C {ipin.sym} 900 -480 0 0 {name=pi3 lab=vin}
C {opin.sym} 900 -460 0 0 {name=po1 lab=vout}
C {iopin.sym} 900 -440 0 0 {name=pio1 lab=vdd}
C {iopin.sym} 900 -420 0 0 {name=pio2 lab=vss}
C {lab_pin.sym} 1600 -370 1 0 {name=p10 sig_type=std_logic lab=vschtopdrv1}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1550 -390 3 1 {name=XMchtopdrv1
W=3
L=0.5
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
