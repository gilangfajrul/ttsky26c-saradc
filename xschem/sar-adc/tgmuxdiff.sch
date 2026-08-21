v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 250 -40 250 -20 {lab=VP}
N 250 -20 420 -20 {lab=VP}
N 420 -40 420 -20 {lab=VP}
N 300 -150 320 -150 {lab=VDD}
N 300 -130 320 -130 {lab=VSS}
N 330 -110 350 -110 {lab=SB}
N 470 -150 490 -150 {lab=VDD}
N 470 -130 490 -130 {lab=VSS}
N 160 -110 180 -110 {lab=SA}
N 230 -200 230 -180 {lab=OUTA}
N 400 -200 400 -180 {lab=OUTB}
N 230 -40 230 -10 {lab=VN}
N 230 -10 400 -10 {lab=VN}
N 400 -40 400 -10 {lab=VN}
C {tgmux.sym} 330 -110 0 0 {name=x1}
C {tgmux.sym} 500 -110 0 0 {name=x2}
C {lab_wire.sym} 310 -10 2 0 {name=p1 sig_type=std_logic lab=VN}
C {lab_wire.sym} 280 -20 0 1 {name=p2 sig_type=std_logic lab=VP}
C {lab_pin.sym} 160 -110 0 0 {name=p3 sig_type=std_logic lab=SA}
C {lab_pin.sym} 330 -110 0 0 {name=p4 sig_type=std_logic lab=SB}
C {lab_pin.sym} 320 -150 2 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 320 -130 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 490 -150 2 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 490 -130 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 230 -200 1 0 {name=p11 sig_type=std_logic lab=OUTA}
C {lab_pin.sym} 400 -200 1 0 {name=p12 sig_type=std_logic lab=OUTB}
C {iopin.sym} 50 -180 0 0 {name=p13 lab=VDD}
C {iopin.sym} 50 -160 0 0 {name=p14 lab=VSS}
C {iopin.sym} 50 -140 0 0 {name=p15 lab=VP}
C {iopin.sym} 50 -120 0 0 {name=p16 lab=VN}
C {iopin.sym} 50 -100 0 0 {name=p17 lab=SA}
C {iopin.sym} 50 -60 0 0 {name=p19 lab=OUTA}
C {iopin.sym} 50 -40 0 0 {name=p20 lab=OUTB}
C {iopin.sym} 50 -80 0 0 {name=p21 lab=SB}
C {sky130_stdcells/inv_4.sym} 530 -70 0 0 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {lab_pin.sym} 490 -70 0 0 {name=p23 sig_type=std_logic lab=SA}
C {lab_pin.sym} 570 -70 2 0 {name=p24 sig_type=std_logic lab=SAB}
C {sky130_stdcells/inv_4.sym} 530 -10 0 0 {name=x4 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {lab_pin.sym} 570 -10 2 0 {name=p18 sig_type=std_logic lab=SBB}
C {lab_pin.sym} 490 -10 0 0 {name=p22 sig_type=std_logic lab=SB}
