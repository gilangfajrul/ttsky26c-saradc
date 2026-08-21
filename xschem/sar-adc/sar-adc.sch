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
N 1120 -520 1160 -520 {lab=comp_valid}
N 1160 -520 1230 -520 {lab=comp_valid}
C {comparator.sym} 830 -380 0 0 {name=xcomparator}
C {cdac.sym} 710 -500 0 0 {name=xcdacn}
C {cdac.sym} 710 -660 2 1 {name=xcdacp}
C {sarlogic.sym} 1380 -590 0 0 {name=x1}
C {lab_wire.sym} 1210 -520 0 0 {name=p1 sig_type=std_logic lab=comp_valid}
C {lab_wire.sym} 1210 -560 0 0 {name=p2 sig_type=std_logic lab=comp_von}
C {lab_wire.sym} 1210 -600 0 0 {name=p3 sig_type=std_logic lab=comp_vop}
C {lab_wire.sym} 890 -600 0 0 {name=p4 sig_type=std_logic lab=ctopp}
C {lab_wire.sym} 890 -560 0 0 {name=p5 sig_type=std_logic lab=ctopn}
C {lab_pin.sym} 930 -520 0 0 {name=p6 sig_type=std_logic lab=clkc}
