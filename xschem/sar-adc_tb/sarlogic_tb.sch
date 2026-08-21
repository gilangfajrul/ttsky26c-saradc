v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 100 -750 900 -350 {flags=graph
y1=0
y2=2
ypos1=-0.0045355355
ypos2=2.426477
divy=5
subdivy=1
unity=1
x1=0
x2=1e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="data
d7
d6
d5
d4
d3
d2
d1
d0
clks
valid"
color="4 5 6 7 8 9 10 11 12 13 14"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/sarlogic_tb.raw
sim_type=tran
autoload=1
digital=1}
B 2 950 -750 1750 -350 {flags=graph
y1=0
y2=2
ypos1=-0.025395255
ypos2=2.4056172
divy=5
subdivy=1
unity=1
x1=0
x2=1e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="data
x1.clk1
x1.clk2
x1.clk3
x1.clk4
x1.clk5
x1.clk6
x1.clk7
x1.clk8
clks
valid"
color="4 5 6 7 8 9 10 11 12 13 14"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/sarlogic_tb.raw
sim_type=tran
autoload=1
digital=1}
N 210 -150 210 -130 {lab=clks}
N 210 -70 210 -50 {lab=0}
N 490 -150 490 -130 {lab=valid}
N 490 -70 490 -50 {lab=0}
N 770 -150 770 -130 {lab=data}
N 770 -70 770 -50 {lab=0}
N 1050 -150 1050 -130 {lab=dvdd}
N 1050 -70 1050 -50 {lab=0}
N 680 -290 740 -290 {lab=0}
N 740 -290 770 -290 {lab=0}
C {vsource.sym} 210 -100 0 0 {name=Vclks value="PULSE(0 1.8 0 100p 100p 14.9n 100n)" savecurrent=false}
C {gnd.sym} 210 -50 0 0 {name=l8 lab=0}
C {vsource.sym} 490 -100 0 0 {name=Vclkc value="PULSE(0 1.8 15n 100p 100p 4.78n 10.625n)" savecurrent=false}
C {lab_pin.sym} 490 -150 0 0 {name=p2 sig_type=std_logic lab=valid}
C {gnd.sym} 490 -50 0 0 {name=l1 lab=0}
C {vsource.sym} 770 -100 0 0 {name=Vcomp_out value="PULSE(0 1.8 15n 100p 100p 10.625n 21.25n" savecurrent=false}
C {lab_pin.sym} 770 -150 0 0 {name=p5 sig_type=std_logic lab=data}
C {gnd.sym} 770 -50 0 0 {name=l2 lab=0}
C {vsource.sym} 1050 -100 0 0 {name=Vvdd value="DC 1.8" savecurrent=false}
C {lab_pin.sym} 1050 -150 0 0 {name=p7 sig_type=std_logic lab=dvdd}
C {gnd.sym} 1050 -50 0 0 {name=l3 lab=0}
C {lab_pin.sym} 210 -150 2 0 {name=p10 sig_type=std_logic lab=clks}
C {sarlogic.sym} 530 -290 0 0 {name=x1}
C {lab_pin.sym} 380 -290 0 0 {name=p1 sig_type=std_logic lab=clks}
C {lab_pin.sym} 380 -310 0 0 {name=p3 sig_type=std_logic lab=valid}
C {lab_pin.sym} 680 -310 2 0 {name=p4 sig_type=std_logic lab=dvdd}
C {gnd.sym} 770 -290 0 0 {name=l4 lab=0}
C {lab_pin.sym} 380 -270 0 0 {name=p6 sig_type=std_logic lab=data}
C {lab_pin.sym} 680 -270 2 0 {name=p8 sig_type=std_logic lab=D[7..0]}
C {code.sym} 970 -280 0 0 {name=ngspice only_toplevel=false value="
.control
 tran 10p 100ns
 save all
 remzerovec
 write sarlogic_tb.raw
.endc
"}
C {devices/code.sym} 840 -280 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
