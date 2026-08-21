v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 210 -200 210 -180 {lab=clks}
N 210 -120 210 -100 {lab=0}
N 530 -200 530 -180 {lab=clkc}
N 530 -120 530 -100 {lab=0}
N 440 -330 570 -330 {lab=clk1}
N 810 -200 810 -180 {lab=high}
N 810 -120 810 -100 {lab=0}
N 910 -200 910 -180 {lab=vdd}
N 910 -120 910 -100 {lab=0}
C {sky130_stdcells/dfstp_1.sym} 350 -310 0 0 {name=x1 VGND=0 VNB=0 VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxtp_1.sym} 660 -320 0 0 {name=x9 VGND=0 VNB=0 VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {vsource.sym} 210 -150 0 0 {name=Vclkc3 value="PULSE(0 1.8 0 100p 100p 14.9n 84.9n)" savecurrent=false}
C {lab_pin.sym} 210 -200 0 0 {name=p12 sig_type=std_logic lab=clks}
C {gnd.sym} 210 -100 0 0 {name=l8 lab=0}
C {lab_pin.sym} 260 -290 0 0 {name=p1 sig_type=std_logic lab=clks}
C {vsource.sym} 530 -150 0 0 {name=Vclkc value="PULSE(0 1.8 100n 100p 100p 4.78n 10.625n)" savecurrent=false}
C {lab_pin.sym} 530 -200 0 0 {name=p2 sig_type=std_logic lab=clkc}
C {gnd.sym} 530 -100 0 0 {name=l1 lab=0}
C {lab_wire.sym} 490 -330 0 0 {name=p3 sig_type=std_logic lab=clk1}
C {lab_pin.sym} 260 -310 0 0 {name=p4 sig_type=std_logic lab=high}
C {vsource.sym} 810 -150 0 0 {name=Vhigh value="DC 1.8" savecurrent=false}
C {lab_pin.sym} 810 -200 0 0 {name=p5 sig_type=std_logic lab=high}
C {gnd.sym} 810 -100 0 0 {name=l2 lab=0}
C {lab_pin.sym} 570 -310 0 0 {name=p6 sig_type=std_logic lab=high}
C {vsource.sym} 910 -150 0 0 {name=Vvdd value="DC 1.8" savecurrent=false}
C {lab_pin.sym} 910 -200 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {gnd.sym} 910 -100 0 0 {name=l3 lab=0}
C {lab_pin.sym} 260 -330 0 0 {name=p8 sig_type=std_logic lab=valid}
C {lab_pin.sym} 750 -330 2 0 {name=p9 sig_type=std_logic lab=output}
