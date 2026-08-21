v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 350 -380 350 -350 {lab=ctop}
N 350 -380 1370 -380 {lab=ctop}
N 1370 -380 1370 -350 {lab=ctop}
N 1250 -380 1250 -350 {lab=ctop}
N 1100 -380 1100 -350 {lab=ctop}
N 950 -380 950 -350 {lab=ctop}
N 800 -380 800 -350 {lab=ctop}
N 650 -380 650 -350 {lab=ctop}
N 500 -380 500 -350 {lab=ctop}
N 800 -420 800 -380 {lab=ctop}
N 650 -420 650 -380 {lab=ctop}
N 500 -420 500 -380 {lab=ctop}
N 350 -420 350 -380 {lab=ctop}
N 1370 -380 1440 -380 {lab=ctop}
N 280 -380 350 -380 {lab=ctop}
N 1370 -290 1370 -260 {lab=vss}
N 1250 -290 1250 -260 {lab=b1}
N 1100 -290 1100 -260 {lab=b2}
N 950 -290 950 -260 {lab=b3}
N 800 -290 800 -260 {lab=b4b}
N 650 -290 650 -260 {lab=b5b}
N 500 -290 500 -260 {lab=b6b}
N 350 -290 350 -260 {lab=b7b}
N 800 -510 800 -480 {lab=b4a}
N 650 -510 650 -480 {lab=b5a}
N 500 -510 500 -480 {lab=b6a}
N 350 -510 350 -480 {lab=b7a}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1250 -320 0 0 {name=C1 model=cap_mim_m3_1 W=2 L=2 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1100 -320 0 0 {name=C2 model=cap_mim_m3_1 W=2 L=2 MF=2 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 950 -320 0 0 {name=C3 model=cap_mim_m3_1 W=2 L=2 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 800 -320 0 0 {name=C4a model=cap_mim_m3_1 W=2 L=2 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 650 -320 0 0 {name=C5a model=cap_mim_m3_1 W=2 L=2 MF=8 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 500 -320 0 0 {name=C6a model=cap_mim_m3_1 W=2 L=2 MF=16 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 350 -320 0 0 {name=C7a model=cap_mim_m3_1 W=2 L=2 MF=32 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1370 -320 0 0 {name=Cdummy model=cap_mim_m3_1 W=2 L=2 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 350 -450 2 1 {name=C7b model=cap_mim_m3_1 W=2 L=2 MF=32 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 500 -450 2 1 {name=C6b model=cap_mim_m3_1 W=2 L=2 MF=16 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 650 -450 2 1 {name=C5b model=cap_mim_m3_1 W=2 L=2 MF=8 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 800 -450 2 1 {name=C4b model=cap_mim_m3_1 W=2 L=2 MF=4 spiceprefix=X}
C {lab_pin.sym} 280 -380 0 0 {name=p1 sig_type=std_logic lab=ctop}
C {lab_pin.sym} 1370 -260 3 0 {name=p2 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1250 -260 3 0 {name=p3 sig_type=std_logic lab=b1}
C {lab_pin.sym} 1100 -260 3 0 {name=p4 sig_type=std_logic lab=b2}
C {lab_pin.sym} 950 -260 3 0 {name=p5 sig_type=std_logic lab=b3}
C {lab_pin.sym} 800 -510 1 0 {name=p6 sig_type=std_logic lab=b4a}
C {lab_pin.sym} 650 -510 1 0 {name=p7 sig_type=std_logic lab=b5a}
C {lab_pin.sym} 800 -260 3 0 {name=p8 sig_type=std_logic lab=b4b}
C {lab_pin.sym} 500 -510 1 0 {name=p9 sig_type=std_logic lab=b6a}
C {lab_pin.sym} 350 -510 1 0 {name=p10 sig_type=std_logic lab=b7a}
C {lab_pin.sym} 650 -260 3 0 {name=p11 sig_type=std_logic lab=b5b}
C {lab_pin.sym} 500 -260 3 0 {name=p12 sig_type=std_logic lab=b6b}
C {lab_pin.sym} 350 -260 3 0 {name=p13 sig_type=std_logic lab=b7b}
C {iopin.sym} 120 -430 2 0 {name=p14 lab=ctop}
C {iopin.sym} 120 -410 2 0 {name=p15 lab=b1}
C {iopin.sym} 120 -390 2 0 {name=p16 lab=b2}
C {iopin.sym} 120 -370 2 0 {name=p17 lab=b3}
C {iopin.sym} 120 -350 2 0 {name=p18 lab=b4a}
C {iopin.sym} 120 -330 2 0 {name=p19 lab=b5a}
C {iopin.sym} 120 -310 2 0 {name=p20 lab=b6a}
C {iopin.sym} 120 -290 2 0 {name=p21 lab=b7a}
C {iopin.sym} 140 -330 0 0 {name=p22 lab=b5b}
C {iopin.sym} 140 -350 0 0 {name=p23 lab=b4b}
C {iopin.sym} 140 -310 0 0 {name=p24 lab=b6b}
C {iopin.sym} 140 -290 0 0 {name=p25 lab=b7b}
C {iopin.sym} 120 -270 2 0 {name=p26 lab=vss}
