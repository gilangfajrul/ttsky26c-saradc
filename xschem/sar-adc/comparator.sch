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
N 470 -230 670 -230 {lab=#net1}
N 310 -130 830 -130 {lab=vss}
N 570 -160 570 -130 {lab=vss}
N 570 -190 590 -190 {lab=vss}
N 590 -190 590 -130 {lab=vss}
N 670 -250 670 -230 {lab=#net1}
N 470 -250 470 -230 {lab=#net1}
N 570 -230 570 -220 {lab=#net1}
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
N 520 -190 530 -190 {lab=clk}
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
N 120 -130 310 -130 {lab=vss}
N 830 -130 960 -130 {lab=vss}
N 610 -380 630 -380 {lab=comp_von}
N 610 -500 610 -380 {lab=comp_von}
N 610 -500 630 -500 {lab=comp_von}
N 510 -500 530 -500 {lab=comp_vop}
N 530 -500 530 -380 {lab=comp_vop}
N 510 -380 530 -380 {lab=comp_vop}
N 530 -450 670 -450 {lab=comp_vop}
N 470 -430 610 -430 {lab=comp_von}
N 1450 -450 1450 -420 {lab=#net2}
N 1300 -360 1450 -420 {lab=#net2}
N 1300 -360 1300 -340 {lab=#net2}
N 1450 -350 1450 -320 {lab=#net3}
N 1300 -410 1450 -350 {lab=#net3}
N 1300 -430 1300 -410 {lab=#net3}
N 1190 -300 1300 -300 {lab=comp_von}
N 1190 -470 1300 -470 {lab=comp_vop}
N 1420 -320 1500 -320 {lab=#net3}
N 1420 -450 1500 -450 {lab=#net2}
N 1580 -450 1620 -450 {lab=von}
N 1580 -320 1620 -320 {lab=vop}
N 1190 -220 1300 -220 {lab=comp_von}
N 1190 -180 1300 -180 {lab=comp_vop}
N 1420 -200 1500 -200 {lab=#net4}
N 1580 -200 1620 -200 {lab=rdy}
C {sky130_fd_pr/nfet_01v8.sym} 450 -280 0 0 {name=Minputp
W=5
L=0.2
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
C {sky130_fd_pr/nfet_01v8.sym} 690 -280 0 1 {name=Minputn
W=5
L=0.2
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
C {sky130_fd_pr/nfet_01v8.sym} 550 -190 0 0 {name=Mtail
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
C {lab_pin.sym} 520 -190 0 0 {name=p5 sig_type=std_logic lab=clk}
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
C {iopin.sym} 120 -130 2 0 {name=p22 lab=vss}
C {sky130_stdcells/nand2_1.sym} 1360 -450 0 0 {name=xnandp VGND=dvss VNB=dvss VPB=dvdd VPWR=dvdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 1360 -320 2 1 {name=xnandn VGND=dvss VNB=dvss VPB=dvdd VPWR=dvdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_4.sym} 1540 -450 0 0 {name=xbuffp VGND=dvss VNB=dvss VPB=dvdd VPWR=dvdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_4.sym} 1540 -320 0 0 {name=xbuffn VGND=dvss VNB=dvss VPB=dvdd VPWR=dvdd prefix=sky130_fd_sc_hd__ }
C {lab_pin.sym} 1190 -470 0 0 {name=p23 sig_type=std_logic lab=comp_vop}
C {lab_pin.sym} 1190 -300 0 0 {name=p24 sig_type=std_logic lab=comp_von}
C {opin.sym} 1620 -320 0 0 {name=p19 lab=vop}
C {opin.sym} 1620 -450 0 0 {name=p20 lab=von}
C {iopin.sym} 1320 -510 3 0 {name=p25 lab=dvdd}
C {iopin.sym} 1530 -150 1 0 {name=p26 lab=dvss}
C {sky130_stdcells/nand2_1.sym} 1360 -200 0 0 {name=xnandrdy VGND=dvss VNB=dvss VPB=dvdd VPWR=dvdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_4.sym} 1540 -200 0 0 {name=xbuffrdy VGND=dvss VNB=dvss VPB=dvdd VPWR=dvdd prefix=sky130_fd_sc_hd__ }
C {lab_pin.sym} 1190 -220 0 0 {name=p27 sig_type=std_logic lab=comp_von}
C {lab_pin.sym} 1190 -180 0 0 {name=p28 sig_type=std_logic lab=comp_vop}
C {opin.sym} 1620 -200 0 0 {name=p29 lab=rdy}
