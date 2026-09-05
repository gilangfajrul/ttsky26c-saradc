v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 200 -380 230 -380 {lab=delay1}
N 310 -380 340 -380 {lab=delay2}
N 420 -380 450 -380 {lab=delay3}
N 530 -380 560 -380 {lab=delay4}
N 640 -380 680 -380 {lab=delay5}
N 760 -380 790 -380 {lab=delay6}
N 870 -380 910 -380 {lab=valid_delayed}
C {lab_pin.sym} 120 -380 0 0 {name=p41 sig_type=std_logic lab=valid}
C {lab_wire.sym} 220 -380 0 0 {name=p42 sig_type=std_logic lab=delay1}
C {lab_wire.sym} 330 -380 0 0 {name=p43 sig_type=std_logic lab=delay2}
C {lab_wire.sym} 440 -380 0 0 {name=p44 sig_type=std_logic lab=delay3}
C {lab_wire.sym} 550 -380 0 0 {name=p45 sig_type=std_logic lab=delay4}
C {lab_pin.sym} 910 -380 2 0 {name=p47 sig_type=std_logic lab=valid_delayed}
C {sky130_stdcells/clkdlybuf4s50_1.sym} 160 -380 0 0 {name=x20 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 270 -380 0 0 {name=x21 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 380 -380 0 0 {name=x22 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 490 -380 0 0 {name=x23 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 600 -380 0 0 {name=x24 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 780 -380 0 0 {name=p46 sig_type=std_logic lab=delay6}
C {sky130_stdcells/clkdlybuf4s50_1.sym} 720 -380 0 0 {name=x25 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 830 -380 0 0 {name=x26 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 670 -380 0 0 {name=p48 sig_type=std_logic lab=delay5}
C {ipin.sym} 130 -630 0 0 {name=p25 lab=valid}
C {iopin.sym} 130 -670 0 0 {name=p34 lab=vdd}
C {iopin.sym} 130 -650 0 0 {name=p35 lab=vss}
C {opin.sym} 130 -610 0 0 {name=p1 lab=valid_delayed}
