v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 5 1090 -510 1700 -510 1700 -270 1090 -270 1090 -510 {}
P 4 5 1090 -250 1700 -250 1700 -150 1090 -150 1090 -250 {}
T {deteksi keputusan} 1100 -245 0 0 0.25 0.25 {}
T {rdy = 0 selama kedua node dinamis masih ter-precharge (comparator reset),} 1090 -135 0 0 0.2 0.2 {}
T {rdy = 1 begitu salah satu jatuh. Inilah satu-satunya sinyal balik ke SAR logic.} 1090 -119 0 0 0.2 0.2 {}
T {Input A/B sengaja ditukar terhadap SR latch di atas: comp_vop melihat A pada} 1090 -103 0 0 0.2 0.2 {}
T {xnandp dan B pada xnandrdy, comp_von sebaliknya -> beban kedua node seimbang.} 1090 -87 0 0 0.2 0.2 {}
N 470 -350 470 -310 {lab=pcp}
N 670 -350 670 -310 {lab=pcn}
N 670 -470 670 -410 {lab=comp_vop}
N 470 -470 470 -410 {lab=comp_von}
N 310 -570 830 -570 {lab=vdd}
N 670 -570 670 -530 {lab=vdd}
N 470 -570 470 -530 {lab=vdd}
N 670 -500 690 -500 {lab=vdd}
N 690 -570 690 -500 {lab=vdd}
N 450 -500 470 -500 {lab=vdd}
N 450 -570 450 -500 {lab=vdd}
N 470 -130 670 -130 {lab=vtail}
N 310 -10 830 -10 {lab=vss}
N 570 -40 570 -10 {lab=vss}
N 570 -70 590 -70 {lab=vss}
N 590 -70 590 -10 {lab=vss}
N 670 -250 670 -230 {lab=vtail}
N 470 -250 470 -230 {lab=vtail}
N 570 -140 570 -130 {lab=vtail}
N 820 -570 820 -530 {lab=vdd}
N 320 -570 320 -530 {lab=vdd}
N 830 -570 900 -570 {lab=vdd}
N 900 -570 950 -570 {lab=vdd}
N 230 -570 310 -570 {lab=vdd}
N 190 -570 230 -570 {lab=vdd}
N 320 -330 470 -330 {lab=pcp}
N 800 -500 820 -500 {lab=vdd}
N 800 -570 800 -500 {lab=vdd}
N 860 -500 870 -500 {lab=clk}
N 270 -500 280 -500 {lab=clk}
N 820 -470 820 -450 {lab=comp_vop}
N 670 -450 820 -450 {lab=comp_vop}
N 320 -470 320 -450 {lab=comp_von}
N 320 -450 470 -450 {lab=comp_von}
N 940 -570 940 -530 {lab=vdd}
N 920 -500 940 -500 {lab=vdd}
N 920 -570 920 -500 {lab=vdd}
N 980 -500 1000 -500 {lab=clk}
N 940 -470 940 -330 {lab=pcn}
N 670 -330 940 -330 {lab=pcn}
N 200 -570 200 -530 {lab=vdd}
N 150 -500 160 -500 {lab=clk}
N 200 -470 200 -330 {lab=pcp}
N 200 -330 320 -330 {lab=pcp}
N 520 -70 530 -70 {lab=clk}
N 660 -280 670 -280 {lab=vss}
N 470 -280 480 -280 {lab=vss}
N 670 -380 680 -380 {lab=vss}
N 460 -380 470 -380 {lab=vss}
N 320 -500 340 -500 {lab=vdd}
N 340 -570 340 -500 {lab=vdd}
N 200 -500 220 -500 {lab=vdd}
N 220 -570 220 -500 {lab=vdd}
N 710 -280 730 -280 {lab=vin}
N 410 -280 430 -280 {lab=vip}
N 120 -570 190 -570 {lab=vdd}
N 120 -10 310 -10 {lab=vss}
N 830 -10 960 -10 {lab=vss}
N 610 -380 630 -380 {lab=comp_von}
N 610 -500 610 -380 {lab=comp_von}
N 610 -500 630 -500 {lab=comp_von}
N 510 -500 530 -500 {lab=comp_vop}
N 530 -500 530 -380 {lab=comp_vop}
N 510 -380 530 -380 {lab=comp_vop}
N 530 -450 670 -450 {lab=comp_vop}
N 470 -430 610 -430 {lab=comp_von}
N 1450 -450 1450 -420 {lab=#net1}
N 1300 -360 1450 -420 {lab=#net1}
N 1300 -360 1300 -340 {lab=#net1}
N 1450 -350 1450 -320 {lab=#net2}
N 1300 -410 1450 -350 {lab=#net2}
N 1300 -430 1300 -410 {lab=#net2}
N 1190 -300 1300 -300 {lab=comp_von}
N 1190 -470 1300 -470 {lab=comp_vop}
N 1420 -320 1500 -320 {lab=#net2}
N 1420 -450 1500 -450 {lab=#net1}
N 1580 -450 1620 -450 {lab=von}
N 1580 -320 1620 -320 {lab=vop}
N 1190 -220 1300 -220 {lab=comp_von}
N 1190 -180 1300 -180 {lab=comp_vop}
N 1420 -200 1500 -200 {lab=#net3}
N 1580 -200 1620 -200 {lab=rdy}
N 570 -150 570 -140 {lab=vtail}
N 530 -150 530 -70 {lab=clk}
N 570 -210 570 -180 {lab=vdd}
N 570 -130 570 -100 {lab=vtail}
N 470 -230 470 -130 {lab=vtail}
N 670 -230 670 -130 {lab=vtail}
N 530 -180 530 -150 {lab=clk}
N 570 -230 570 -210 {lab=vdd}
N -370 -640 -330 -640 {lab=vdd}
N -370 -640 -370 -580 {lab=vdd}
N -370 -580 -330 -580 {lab=vdd}
N -330 -640 -330 -580 {lab=vdd}
N -230 -640 -190 -640 {lab=vtail}
N -230 -640 -230 -580 {lab=vtail}
N -230 -580 -190 -580 {lab=vtail}
N -370 -530 -330 -530 {lab=vss}
N -370 -530 -370 -470 {lab=vss}
N -370 -470 -330 -470 {lab=vss}
N -330 -530 -330 -470 {lab=vss}
N -230 -530 -190 -530 {lab=vtail}
N -230 -530 -230 -470 {lab=vtail}
N -230 -470 -190 -470 {lab=vtail}
N -370 -410 -330 -410 {lab=pcp}
N -370 -410 -370 -350 {lab=pcp}
N -370 -350 -330 -350 {lab=pcp}
N -230 -410 -190 -410 {lab=pcn}
N -230 -410 -230 -350 {lab=pcn}
N -230 -350 -190 -350 {lab=pcn}
N -370 -300 -330 -300 {lab=comp_vop}
N -370 -300 -370 -240 {lab=comp_vop}
N -370 -240 -330 -240 {lab=comp_vop}
N -230 -300 -190 -300 {lab=comp_von}
N -230 -300 -230 -240 {lab=comp_von}
N -230 -240 -190 -240 {lab=comp_von}
N -370 -190 -330 -190 {lab=pcp}
N -370 -190 -370 -130 {lab=pcp}
N -370 -130 -330 -130 {lab=pcp}
N -230 -190 -190 -190 {lab=pcn}
N -230 -190 -230 -130 {lab=pcn}
N -230 -130 -190 -130 {lab=pcn}
N -370 -80 -330 -80 {lab=comp_vop}
N -370 -80 -370 -20 {lab=comp_vop}
N -370 -20 -330 -20 {lab=comp_vop}
N -230 -80 -190 -80 {lab=comp_von}
N -230 -80 -230 -20 {lab=comp_von}
N -230 -20 -190 -20 {lab=comp_von}
C {sky130_fd_pr/nfet_01v8.sym} 450 -280 0 0 {name=Minputp
W=2.5
L=0.2
nf=1 
mult=2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 690 -280 0 1 {name=Minputn
W=2.5
L=0.2
nf=1 
mult=2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 490 -380 0 1 {name=M1a
W=0.42
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
C {sky130_fd_pr/nfet_01v8.sym} 650 -380 0 0 {name=M1b
W=0.42
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
C {sky130_fd_pr/pfet_01v8.sym} 490 -500 0 1 {name=M2a
W=0.42
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
C {sky130_fd_pr/pfet_01v8.sym} 650 -500 0 0 {name=M2b
W=0.42
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
C {sky130_fd_pr/nfet_01v8.sym} 550 -70 0 0 {name=Mtail
W=0.42
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
C {sky130_fd_pr/pfet_01v8.sym} 840 -500 0 1 {name=MS3
W=0.42
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
C {sky130_fd_pr/pfet_01v8.sym} 300 -500 0 0 {name=MS2
W=0.42
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
C {sky130_fd_pr/pfet_01v8.sym} 960 -500 0 1 {name=MS4
W=0.42
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
C {sky130_fd_pr/pfet_01v8.sym} 180 -500 0 0 {name=MS1
W=0.42
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
C {lab_pin.sym} 1000 -500 2 0 {name=p3 sig_type=std_logic lab=clk}
C {lab_pin.sym} 150 -500 0 0 {name=p4 sig_type=std_logic lab=clk}
C {lab_pin.sym} 870 -500 2 0 {name=p1 sig_type=std_logic lab=clk}
C {lab_pin.sym} 270 -500 0 0 {name=p2 sig_type=std_logic lab=clk}
C {lab_pin.sym} 520 -70 0 0 {name=p5 sig_type=std_logic lab=clk}
C {lab_pin.sym} 660 -280 0 0 {name=p6 sig_type=std_logic lab=vss}
C {lab_pin.sym} 480 -280 0 1 {name=p7 sig_type=std_logic lab=vss}
C {lab_pin.sym} 680 -380 2 0 {name=p8 sig_type=std_logic lab=vss}
C {lab_pin.sym} 460 -380 0 0 {name=p9 sig_type=std_logic lab=vss}
C {lab_pin.sym} 730 -280 2 0 {name=p10 sig_type=std_logic lab=vin}
C {lab_pin.sym} 410 -280 0 0 {name=p11 sig_type=std_logic lab=vip}
C {lab_wire.sym} 260 -330 0 0 {name=p16 sig_type=std_logic lab=pcp}
C {lab_wire.sym} 880 -330 0 1 {name=p14 sig_type=std_logic lab=pcn}
C {lab_wire.sym} 400 -450 0 0 {name=p12 sig_type=std_logic lab=comp_von}
C {lab_wire.sym} 730 -450 0 1 {name=p13 sig_type=std_logic lab=comp_vop}
C {ipin.sym} 120 -400 0 0 {name=p15 lab=clk}
C {ipin.sym} 120 -380 0 0 {name=p17 lab=vip}
C {ipin.sym} 120 -360 0 0 {name=p18 lab=vin}
C {iopin.sym} 120 -570 2 0 {name=p21 lab=vdd}
C {iopin.sym} 120 -10 2 0 {name=p22 lab=vss}
C {sky130_stdcells/nand2_1.sym} 1360 -450 2 1 {name=xnandp VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 1360 -320 0 0 {name=xnandn VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_4.sym} 1540 -450 0 0 {name=xbuffp VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_4.sym} 1540 -320 0 0 {name=xbuffn VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {lab_pin.sym} 1190 -470 0 0 {name=p23 sig_type=std_logic lab=comp_vop}
C {lab_pin.sym} 1190 -300 0 0 {name=p24 sig_type=std_logic lab=comp_von}
C {opin.sym} 1620 -320 0 0 {name=p19 lab=vop}
C {opin.sym} 1620 -450 0 0 {name=p20 lab=von}
C {sky130_stdcells/nand2_1.sym} 1360 -200 0 0 {name=xnandrdy VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_4.sym} 1540 -200 0 0 {name=xbuffrdy VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {lab_pin.sym} 1190 -220 0 0 {name=p27 sig_type=std_logic lab=comp_von}
C {lab_pin.sym} 1190 -180 0 0 {name=p28 sig_type=std_logic lab=comp_vop}
C {opin.sym} 1620 -200 0 0 {name=p29 lab=rdy}
C {sky130_fd_pr/pfet_01v8.sym} 550 -180 0 0 {name=MS5
W=0.42
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
C {lab_pin.sym} 570 -230 2 0 {name=p30 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 640 -130 0 0 {name=p31 sig_type=std_logic lab=vtail}
C {sky130_fd_pr/pfet_01v8.sym} -350 -610 0 0 {name=Mdummy
W=0.42
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
C {lab_pin.sym} -330 -640 2 0 {name=p25 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} -210 -610 0 0 {name=Mdummy1
W=0.42
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
C {lab_pin.sym} -190 -640 2 0 {name=p26 sig_type=std_logic lab=vtail}
C {sky130_fd_pr/nfet_01v8.sym} -350 -500 0 0 {name=Mdummy2
W=0.42
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
C {lab_pin.sym} -330 -530 0 1 {name=p32 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} -210 -500 0 0 {name=Mdummy3
W=0.42
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
C {lab_pin.sym} -190 -530 0 1 {name=p33 sig_type=std_logic lab=vtail}
C {sky130_fd_pr/nfet_01v8.sym} -350 -380 0 0 {name=Mdummy4
W=2.5
L=0.2
nf=1 
mult=2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -210 -380 0 0 {name=Mdummy5
W=2.5
L=0.2
nf=1 
mult=2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} -190 -380 0 1 {name=p34 sig_type=std_logic lab=vss}
C {lab_pin.sym} -330 -380 0 1 {name=p35 sig_type=std_logic lab=vss}
C {lab_wire.sym} -330 -410 0 0 {name=p36 sig_type=std_logic lab=pcp}
C {lab_wire.sym} -190 -410 0 0 {name=p37 sig_type=std_logic lab=pcn}
C {sky130_fd_pr/nfet_01v8.sym} -350 -270 0 0 {name=Mdummy10
W=0.42
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
C {lab_pin.sym} -330 -270 0 1 {name=p38 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} -210 -270 0 0 {name=Mdummy11
W=0.42
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
C {lab_pin.sym} -190 -270 0 1 {name=p40 sig_type=std_logic lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} -350 -160 0 0 {name=Mdummy6
W=0.42
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
C {lab_wire.sym} -330 -190 0 0 {name=p42 sig_type=std_logic lab=pcp}
C {lab_pin.sym} -330 -160 2 0 {name=p43 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} -210 -160 0 0 {name=Mdummy7
W=0.42
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
C {lab_wire.sym} -190 -190 0 0 {name=p44 sig_type=std_logic lab=pcn}
C {lab_pin.sym} -190 -160 2 0 {name=p45 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} -350 -50 0 0 {name=Mdummy8
W=0.42
L=0.15
nf=1
mult=2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {lab_wire.sym} -330 -80 0 0 {name=p46 sig_type=std_logic lab=comp_vop}
C {lab_pin.sym} -330 -50 2 0 {name=p47 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} -210 -50 0 0 {name=Mdummy9
W=0.42
L=0.15
nf=1
mult=2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {lab_wire.sym} -190 -80 0 0 {name=p48 sig_type=std_logic lab=comp_von}
C {lab_pin.sym} -190 -50 2 0 {name=p49 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -190 -500 0 1 {name=p50 sig_type=std_logic lab=vss}
C {lab_pin.sym} -190 -610 2 0 {name=p51 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -330 -300 0 0 {name=p39 sig_type=std_logic lab=comp_vop}
C {lab_wire.sym} -190 -300 0 0 {name=p41 sig_type=std_logic lab=comp_von}
