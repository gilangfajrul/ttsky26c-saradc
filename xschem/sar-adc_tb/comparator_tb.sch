v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 100 -870 900 -470 {flags=graph
y1=-0.081
y2=1.9
ypos1=-0.081
ypos2=1.9
divy=5
subdivy=1
unity=1
x1=2.9072018e-09
x2=1.9988289e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="vip
vin
von
vop
clks
clkc
rdy"
color="4 5 6 7 8 9 4"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/comparator_tb.raw
autoload=1
digital=1
hilight_wave=200559312}
B 2 940 -870 1740 -470 {flags=graph
y1=0.077
y2=1.9
ypos1=-0.081
ypos2=1.9
divy=5
subdivy=1
unity=1
x1=2.9072018e-09
x2=1.9988289e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/comparator_tb.raw
autoload=1
digital=0
hilight_wave=200559312
color="4 5"
node="xcomparator.comp_vop
xcomparator.comp_von"}
B 2 1040 -440 1840 -40 {flags=graph
y1=-0.081
y2=1.9
ypos1=-0.086422931
ypos2=2.4167024
divy=5
subdivy=1
unity=1
x1=2.9072018e-09
x2=1.9988289e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/comparator_tb.raw
autoload=1
digital=1
hilight_wave=-1
color="4 5 6 7 8 9 10 11 12 13 14"
node="rdy
delay1
delay2
delay3
delay4
delay5
delay6
delay7
delay8
delay9
delay10"}
N 210 -230 320 -230 {lab=0}
N 210 -270 320 -270 {lab=#net1}
N 170 -220 170 -180 {lab=#net2}
N 170 -180 270 -180 {lab=#net2}
N 270 -180 360 -180 {lab=#net2}
N 360 -220 360 -180 {lab=#net2}
N 270 -120 270 -100 {lab=0}
N 80 -300 80 -270 {lab=#net1}
N 80 -300 270 -300 {lab=#net1}
N 270 -300 270 -270 {lab=#net1}
N 170 -370 170 -280 {lab=vip}
N 360 -370 360 -280 {lab=vin}
N 80 -270 80 -180 {lab=#net1}
N 80 -120 80 -100 {lab=0}
N 540 -220 540 -200 {lab=0}
N 460 -220 460 -200 {lab=0}
N 540 -300 540 -280 {lab=avdd}
N 460 -300 460 -280 {lab=dvdd}
N 460 -160 460 -140 {lab=clks}
N 460 -80 460 -60 {lab=0}
N 390 70 420 70 {lab=delay1}
N 500 70 530 70 {lab=delay2}
N 610 70 640 70 {lab=delay3}
N 720 70 750 70 {lab=delay4}
N 830 70 870 70 {lab=delay5}
N 950 70 1000 70 {lab=delay6}
N 1080 70 1110 70 {lab=delay7}
N 1190 70 1230 70 {lab=delay8}
N 1310 70 1360 70 {lab=delay9}
N 1440 70 1490 70 {lab=delay10}
C {comparator.sym} 610 -100 0 0 {name=Xcomparator}
C {vsource.sym} 540 -250 0 0 {name=Vavdd value=1.8 savecurrent=false}
C {vsource.sym} 270 -150 0 0 {name=Vcm value=0.9 savecurrent=0.9}
C {vsource.sym} 460 -250 0 0 {name=Vdvdd value=1.8 savecurrent=false}
C {vcvs.sym} 360 -250 0 0 {name=Evin value=-1}
C {vcvs.sym} 170 -250 0 1 {name=Evip value=1}
C {vsource.sym} 80 -150 0 1 {name=Vdiff value="PULSE(-0.75 0.75 0 21.74n 21.74n 1p 43.47n)  " savecurrent=0.9}
C {gnd.sym} 270 -100 0 0 {name=l1 lab=0}
C {gnd.sym} 270 -230 0 0 {name=l2 lab=0}
C {gnd.sym} 80 -100 0 0 {name=l3 lab=0}
C {gnd.sym} 460 -200 0 0 {name=l4 lab=0}
C {gnd.sym} 540 -200 0 0 {name=l5 lab=0}
C {lab_pin.sym} 360 -370 2 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_pin.sym} 170 -370 2 0 {name=p2 sig_type=std_logic lab=vip}
C {lab_pin.sym} 460 -300 2 0 {name=p3 sig_type=std_logic lab=dvdd}
C {lab_pin.sym} 540 -300 2 0 {name=p4 sig_type=std_logic lab=avdd}
C {lab_pin.sym} 800 -390 1 0 {name=p5 sig_type=std_logic lab=avdd}
C {lab_pin.sym} 830 -390 1 0 {name=p6 sig_type=std_logic lab=dvdd}
C {lab_pin.sym} 710 -280 0 0 {name=p7 sig_type=std_logic lab=vin}
C {lab_pin.sym} 710 -320 0 0 {name=p8 sig_type=std_logic lab=vip}
C {lab_pin.sym} 710 -240 0 0 {name=p9 sig_type=std_logic lab=clkc}
C {lab_pin.sym} 900 -280 2 0 {name=p10 sig_type=std_logic lab=von}
C {lab_pin.sym} 900 -320 2 0 {name=p11 sig_type=std_logic lab=vop}
C {lab_pin.sym} 900 -240 2 0 {name=p13 sig_type=std_logic lab=rdy}
C {gnd.sym} 800 -190 0 0 {name=l6 lab=0}
C {gnd.sym} 830 -190 0 0 {name=l7 lab=0}
C {vsource.sym} 460 -110 0 0 {name=Vclk value="PULSE(0 1.8 100n 100p 100p 14.9n 84.9n)" savecurrent=false}
C {lab_pin.sym} 460 -160 0 0 {name=p12 sig_type=std_logic lab=clks}
C {gnd.sym} 460 -60 0 0 {name=l8 lab=0}
C {simulator_commands.sym} 870 -120 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.include ./comparator_tb.save
.control
 save all
 remzerovec
 tran 10p 250n
 write comparator_tb.raw
.endc
"}
C {devices/code.sym} 710 -120 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {sky130_stdcells/nor2_2.sym} 280 -10 0 0 {name=x1 VGND=0 VNB=0 VPB=dvdd VPWR=dvdd prefix=sky130_fd_sc_hd__ }
C {lab_pin.sym} 220 -30 0 0 {name=p14 sig_type=std_logic lab=clks}
C {lab_pin.sym} 340 -10 2 0 {name=p15 sig_type=std_logic lab=clkc}
C {lab_pin.sym} 310 70 0 0 {name=p16 sig_type=std_logic lab=rdy}
C {sky130_stdcells/dlygate4sd3_1.sym} 350 70 0 0 {name=x2 VGND=0 VNB=0 VPB=dvdd VPWR=dvdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dlygate4sd3_1.sym} 460 70 0 0 {name=x3 VGND=0 VNB=0 VPB=dvdd VPWR=dvdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dlygate4sd3_1.sym} 570 70 0 0 {name=x4 VGND=0 VNB=0 VPB=dvdd VPWR=dvdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dlygate4sd3_1.sym} 680 70 0 0 {name=x5 VGND=0 VNB=0 VPB=dvdd VPWR=dvdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dlygate4sd3_1.sym} 790 70 0 0 {name=x6 VGND=0 VNB=0 VPB=dvdd VPWR=dvdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dlygate4sd3_1.sym} 910 70 0 0 {name=x7 VGND=0 VNB=0 VPB=dvdd VPWR=dvdd prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 410 70 0 0 {name=p17 sig_type=std_logic lab=delay1}
C {lab_wire.sym} 520 70 0 0 {name=p18 sig_type=std_logic lab=delay2}
C {lab_wire.sym} 630 70 0 0 {name=p19 sig_type=std_logic lab=delay3}
C {lab_wire.sym} 740 70 0 0 {name=p20 sig_type=std_logic lab=delay4}
C {lab_wire.sym} 860 70 0 0 {name=p21 sig_type=std_logic lab=delay5}
C {lab_pin.sym} 1490 70 2 0 {name=p22 sig_type=std_logic lab=delay10}
C {sky130_stdcells/dlygate4sd3_1.sym} 1040 70 0 0 {name=x9 VGND=0 VNB=0 VPB=dvdd VPWR=dvdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dlygate4sd3_1.sym} 1150 70 0 0 {name=x10 VGND=0 VNB=0 VPB=dvdd VPWR=dvdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dlygate4sd3_1.sym} 1270 70 0 0 {name=x11 VGND=0 VNB=0 VPB=dvdd VPWR=dvdd prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 1100 70 0 0 {name=p27 sig_type=std_logic lab=delay7}
C {lab_wire.sym} 1220 70 0 0 {name=p28 sig_type=std_logic lab=delay8}
C {lab_wire.sym} 980 70 0 0 {name=p29 sig_type=std_logic lab=delay6}
C {lab_wire.sym} 1360 70 0 0 {name=p30 sig_type=std_logic lab=delay9}
C {sky130_stdcells/dlygate4sd3_1.sym} 1400 70 0 0 {name=x12 VGND=0 VNB=0 VPB=dvdd VPWR=dvdd prefix=sky130_fd_sc_hd__ }
C {lab_pin.sym} 220 10 2 1 {name=p31 sig_type=std_logic lab=delay10}
