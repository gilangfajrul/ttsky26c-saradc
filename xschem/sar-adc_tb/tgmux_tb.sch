v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 150 -780 950 -380 {flags=graph
y1=-0.0018
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.1955759e-09
x2=8.5936215e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="s
outb
outa"
color="4 5 6"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tgmux_tb.raw
sim_type=tran
autoload=1
hilight_wave=-1
rainbow=0}
N 370 -80 370 -60 {lab=0}
N 430 -100 430 -60 {lab=0}
N 170 -130 290 -130 {lab=#net1}
N 210 -170 250 -170 {lab=0}
N 230 -170 230 -160 {lab=0}
N 230 -160 230 -150 {lab=0}
N 90 -240 90 -220 {lab=#net2}
N 90 -240 230 -240 {lab=#net2}
N 230 -240 230 -210 {lab=#net2}
N 210 -210 250 -210 {lab=#net2}
N 290 -230 290 -220 {lab=SB}
N 290 -230 340 -230 {lab=SB}
N 170 -250 170 -220 {lab=S}
N 170 -250 340 -250 {lab=S}
N 290 -160 290 -130 {lab=#net1}
N 170 -160 170 -130 {lab=#net1}
N 90 -150 230 -150 {lab=0}
N 90 -160 90 -150 {lab=0}
N 90 -150 90 -140 {lab=0}
N 510 -280 510 -210 {lab=#net3}
N 460 -280 510 -280 {lab=#net3}
N 460 -260 480 -260 {lab=0}
N 480 -260 480 -240 {lab=0}
N 430 -170 430 -160 {lab=#net4}
N 410 -170 430 -170 {lab=#net4}
N 370 -170 370 -140 {lab=#net5}
N 370 -170 390 -170 {lab=#net5}
N 390 -330 550 -330 {lab=outa}
N 550 -310 550 -300 {lab=outa}
N 550 -330 550 -310 {lab=outa}
N 390 -330 390 -310 {lab=outa}
N 410 -320 410 -310 {lab=outb}
N 410 -320 610 -320 {lab=outb}
N 550 -240 610 -240 {lab=#net6}
N 610 -320 610 -300 {lab=outb}
C {vsource.sym} 430 -130 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 370 -110 0 0 {name=V2 value=0 savecurrent=false}
C {capa.sym} 550 -270 0 0 {name=C1
m=1
value=305f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 370 -60 0 0 {name=l1 lab=0}
C {gnd.sym} 430 -60 0 0 {name=l2 lab=0}
C {vsource.sym} 90 -190 0 0 {name=V3 value="PULSE(0.9 -0.9 0 10p 10p 5.83n 11.7n)"  savecurrent=false}
C {vcvs.sym} 290 -190 0 0 {name=E1 value=-1}
C {vcvs.sym} 170 -190 0 1 {name=E2 value=1}
C {gnd.sym} 90 -140 0 0 {name=l4 lab=0}
C {code.sym} 990 -330 0 0 {name=ngspice only_toplevel=false value="
*.include ./tgmux_tb.save
.control
 tran 1p 100ns
 save all 
 remzerovec
 *plot S SB out
 write tgmux_tb.raw
.endc
"}
C {sky130_fd_pr/corner.sym} 1120 -330 0 0 {name=CORNER only_toplevel=false corner=tt}
C {lab_wire.sym} 470 -330 0 0 {name=p1 sig_type=std_logic lab=outa}
C {lab_wire.sym} 280 -250 0 0 {name=p2 sig_type=std_logic lab=S}
C {lab_wire.sym} 310 -230 0 0 {name=p3 sig_type=std_logic lab=SB}
C {vsource.sym} 230 -100 0 0 {name=V4 value=0.9  savecurrent=false}
C {gnd.sym} 230 -70 0 0 {name=l6 lab=0}
C {vsource.sym} 510 -180 0 0 {name=V5 value=0.9  savecurrent=false}
C {gnd.sym} 510 -150 0 0 {name=l5 lab=0}
C {gnd.sym} 480 -240 0 0 {name=l7 lab=0}
C {tgmuxdiff.sym} 100 -120 0 0 {name=x1}
C {capa.sym} 610 -270 2 0 {name=C2
m=1
value=305f
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 590 -320 0 0 {name=p4 sig_type=std_logic lab=outb}
