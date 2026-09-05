v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 860 -560 870 -560 {lab=ctopn}
N 870 -560 930 -560 {lab=ctopn}
N 860 -600 930 -600 {lab=ctopp}
N 720 -600 860 -600 {lab=ctopp}
N 720 -560 860 -560 {lab=ctopn}
N 1120 -560 1230 -560 {lab=comp_von}
N 1120 -600 1230 -600 {lab=comp_vop}
N 1230 -560 1270 -560 {lab=comp_von}
N 1230 -600 1270 -600 {lab=comp_vop}
N 500 -600 720 -600 {lab=ctopp}
N 500 -560 720 -560 {lab=ctopn}
N 1160 -520 1270 -520 {lab=comp_valid}
N 1120 -520 1160 -520 {lab=comp_valid}
C {comparator.sym} 830 -380 0 0 {name=xcomparator}
C {sarlogic.sym} 1420 -590 0 0 {name=xsarlogic}
C {lab_wire.sym} 1210 -520 0 0 {name=p1 sig_type=std_logic lab=comp_valid}
C {lab_wire.sym} 1210 -560 0 0 {name=p2 sig_type=std_logic lab=comp_von}
C {lab_wire.sym} 1210 -600 0 0 {name=p3 sig_type=std_logic lab=comp_vop}
C {lab_wire.sym} 890 -600 0 0 {name=p4 sig_type=std_logic lab=ctopp}
C {lab_wire.sym} 890 -560 0 0 {name=p5 sig_type=std_logic lab=ctopn}
C {lab_pin.sym} 930 -520 0 0 {name=p6 sig_type=std_logic lab=clkc}
C {lab_pin.sym} 660 -760 3 1 {name=p10 sig_type=std_logic lab=D[7..1]}
C {lab_pin.sym} 1570 -580 2 0 {name=p11 sig_type=std_logic lab=D[7..0]}
C {lab_pin.sym} 660 -400 3 0 {name=p12 sig_type=std_logic lab=D[7..1]b}
C {lab_pin.sym} 1420 -650 2 0 {name=p16 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1420 -380 2 0 {name=p17 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1020 -470 3 0 {name=p19 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1020 -670 1 0 {name=p21 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 820 -400 3 0 {name=p33 sig_type=std_logic lab=vss}
C {lab_pin.sym} 820 -760 3 1 {name=p45 sig_type=std_logic lab=vss}
C {bootstrap.sym} 350 -460 0 0 {name=xbootstrapp}
C {lab_pin.sym} 410 -660 0 0 {name=p48 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 410 -490 0 0 {name=p49 sig_type=std_logic lab=vss}
C {lab_pin.sym} 330 -540 0 0 {name=p51 sig_type=std_logic lab=clks}
C {lab_pin.sym} 330 -600 0 0 {name=p54 sig_type=std_logic lab=vinp}
C {ipin.sym} 180 -770 0 0 {name=p55 lab=vinn}
C {ipin.sym} 180 -750 0 0 {name=p56 lab=vinp}
C {ipin.sym} 180 -730 0 0 {name=p57 lab=clks}
C {opin.sym} 180 -600 0 0 {name=p58 lab=EOC}
C {iopin.sym} 180 -690 0 0 {name=p59 lab=vdd}
C {iopin.sym} 180 -670 0 0 {name=p60 lab=vss}
C {lab_pin.sym} 1570 -560 2 0 {name=p68 sig_type=std_logic lab=D[7..0]b}
C {lab_pin.sym} 1570 -520 2 0 {name=p69 sig_type=std_logic lab=clk[1..8]}
C {lab_pin.sym} 580 -690 2 1 {name=p70 sig_type=std_logic lab=clk[1..7]}
C {lab_pin.sym} 580 -470 2 1 {name=p71 sig_type=std_logic lab=clk[1..7]}
C {opin.sym} 180 -580 0 0 {name=p73 lab=DO[7..0]}
C {lab_pin.sym} 1570 -540 2 0 {name=p13 sig_type=std_logic lab=DO[7..0]}
C {lab_pin.sym} 330 -560 0 0 {name=p46 sig_type=std_logic lab=vinn}
C {lab_pin.sym} 320 -400 0 0 {name=p47 sig_type=std_logic lab=clks}
C {sky130_stdcells/clkinv_16.sym} 360 -400 0 0 {name=x1 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {lab_pin.sym} 400 -400 2 0 {name=p50 sig_type=std_logic lab=clksb}
C {lab_pin.sym} 330 -520 0 0 {name=p52 sig_type=std_logic lab=clksb}
C {lab_pin.sym} 1270 -430 0 0 {name=p53 sig_type=std_logic lab=clksb}
C {delay_control.sym} 1100 -320 0 0 {name=x2}
C {lab_pin.sym} 950 -340 0 0 {name=p20 sig_type=std_logic lab=comp_valid}
C {lab_pin.sym} 1250 -300 0 1 {name=p74 sig_type=std_logic lab=valid_delayed}
C {lab_pin.sym} 1270 -500 0 0 {name=p75 sig_type=std_logic lab=EOC}
C {lab_pin.sym} 1250 -340 2 0 {name=p77 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1250 -320 2 0 {name=p78 sig_type=std_logic lab=vss}
C {lab_pin.sym} 630 -110 0 0 {name=p65 sig_type=std_logic lab=clks}
C {lab_pin.sym} 750 -150 2 0 {name=p79 sig_type=std_logic lab=clkc}
C {lab_pin.sym} 630 -190 0 0 {name=p80 sig_type=std_logic lab=valid_delayed}
C {lab_pin.sym} 630 -150 0 0 {name=p81 sig_type=std_logic lab=clk8}
C {sky130_stdcells/nor3_2.sym} 690 -150 0 0 {name=x18 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {lab_pin.sym} 950 -260 0 0 {name=p9 sig_type=std_logic lab=clk8}
C {lab_pin.sym} 1250 -260 2 0 {name=p18 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1250 -240 2 0 {name=p61 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1250 -220 0 1 {name=p62 sig_type=std_logic lab=EOC}
C {CDAC+Driver.sym} 330 -350 0 0 {name=x4}
C {lab_pin.sym} 850 -530 2 0 {name=p34 sig_type=std_logic lab=vdd}
C {CDAC+Driver.sym} 330 -810 2 1 {name=x5}
C {lab_pin.sym} 850 -630 2 0 {name=p14 sig_type=std_logic lab=vdd}
C {EOC_delay.sym} 1100 -240 0 0 {name=x3}
