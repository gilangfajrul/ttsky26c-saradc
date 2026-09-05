v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 280 -1060 1080 -660 {flags=graph
y1=0
y2=1.8
ypos1=1.3877788e-17
ypos2=1.8
divy=5
subdivy=1
unity=1
x1=0
x2=3.5e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="clks
xtop.comp_valid
xtop.comp_von
xtop.comp_vop
vip
vin
xtop.clkc"
color="4 5 6 7 8 9 10"
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
sim_type=tran
digital=1
rawfile=$netlist_dir/sar-adc_tb.raw}
B 2 1120 -1060 1920 -660 {flags=graph
y1=0
y2=1.8
ypos1=0.18
ypos2=1.98
divy=5
subdivy=1
unity=1
x1=0
x2=3.5e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/sar-adc_tb.raw
autoload=1
sim_type=tran
digital=1
color="4 5 6 7 8 9 10 11 12 13 14 15"
node="clks
xtop.clkc
EOC
data;d7,d6,d5,d4,d3,d2,d1,d0
d7
d6
d5
d4
d3
d2
d1
d0"}
B 2 280 -1500 1080 -1100 {flags=graph
y1=-1.0549589
y2=3.5069915
ypos1=-0.071450677
ypos2=1.5611343
divy=5
subdivy=4
unity=1
x1=0
x2=3.5e-07
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/sar-adc_tb.raw
autoload=1
sim_type=tran
digital=0
color="4 5 6 7"
node="xtop.ctopp xtop.ctopn -
xtop.clkc
xtop.ctopp
xtop.ctopn"
hilight_wave=-1
mode=Line
rainbow=1
legend=1}
B 2 1120 -1500 1920 -1100 {flags=graph
y1=0
y2=1.8
ypos1=0.081528867
ypos2=2.1444945
divy=5
subdivy=1
unity=1
x1=0
x2=3.5e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/sar-adc_tb.raw
autoload=1
sim_type=tran
digital=1
color="4 5 6 7 8 9 10 11 12 13 14"
node="clks
xtop.clkc
xtop.x1.valid_delayed
xtop.clk1
xtop.clk2
xtop.clk3
xtop.clk4
xtop.clk5
xtop.clk6
xtop.clk7
xtop.clk8"}
N 310 -290 310 -270 {lab=clks}
N 310 -210 310 -190 {lab=0}
N 660 -210 660 -190 {lab=0}
N 660 -290 660 -270 {lab=vdd}
N 960 -240 960 -220 {lab=#net1}
N 960 -160 960 -140 {lab=0}
N 880 -260 1040 -260 {lab=0}
N 840 -250 840 -240 {lab=#net1}
N 840 -240 1080 -240 {lab=#net1}
N 1080 -250 1080 -240 {lab=#net1}
N 840 -340 840 -310 {lab=vip}
N 1080 -340 1080 -310 {lab=vin}
N 760 -210 760 -190 {lab=0}
N 760 -360 760 -270 {lab=#net2}
N 760 -360 960 -360 {lab=#net2}
N 840 -390 840 -340 {lab=vip}
N 1080 -390 1080 -340 {lab=vin}
N 880 -300 1040 -300 {lab=#net2}
N 960 -360 960 -300 {lab=#net2}
N 760 -200 910 -200 {lab=0}
N 910 -260 910 -200 {lab=0}
C {sar-adc.sym} 510 -490 0 0 {name=xtop}
C {vsource.sym} 310 -240 0 0 {name=Vclk value="PULSE(0 1.8 10n 100p 100p 14.9n 70n)" savecurrent=true}
C {lab_pin.sym} 310 -290 0 0 {name=p12 sig_type=std_logic lab=clks}
C {gnd.sym} 310 -190 0 0 {name=l8 lab=0}
C {lab_pin.sym} 360 -450 0 0 {name=p1 sig_type=std_logic lab=clks}
C {vsource.sym} 660 -240 0 0 {name=Vavdd value=1.8 savecurrent=true}
C {gnd.sym} 660 -190 0 0 {name=l5 lab=0}
C {lab_pin.sym} 660 -290 2 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 530 -560 1 0 {name=p2 sig_type=std_logic lab=vdd}
C {gnd.sym} 530 -420 0 0 {name=l1 lab=0}
C {lab_pin.sym} 840 -390 2 1 {name=p7 sig_type=std_logic lab=vip}
C {lab_pin.sym} 360 -470 0 0 {name=p8 sig_type=std_logic lab=vip}
C {lab_pin.sym} 360 -510 0 0 {name=p9 sig_type=std_logic lab=vin}
C {simulator_commands.sym} 890 -580 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
 remzerovec
 save v(clks) v(EOC) v(vip) v(vin) v(xtop.d7) v(xtop.d6) v(xtop.d5) v(xtop.d4) v(xtop.d3) v(xtop.d2) v(xtop.d1) v(xtop.d0) v(xtop.ctopp) v(xtop.ctopn) v(xtop.clkc) v(xtop.comp_valid) v(xtop.comp_vop) v(xtop.comp_von) v(xtop.clk1) v(xtop.clk2) v(xtop.clk3) v(xtop.clk4) v(xtop.clk5) v(xtop.clk6) v(xtop.clk7) v(xtop.clk8) v(xtop.xcomparator.vtail)
 + v(xtop.xcomparator.pcp) v(xtop.xcomparator.pcn)
 + v(d7) v(d6) v(d5) v(d4) v(d3) v(d2) v(d1) v(d0)
 tran 20p 350n
 write sar-adc_tb.raw
.endc
"}
C {devices/code.sym} 730 -580 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {lab_pin.sym} 660 -490 2 0 {name=p10 sig_type=std_logic lab=D[7..0]}
C {code.sym} 1050 -580 0 0 {name=param only_toplevel=false value="
.param nfft = 64
.param mcyc = 29
.param fs = 10e6
.param fin  = 'mcyc/nfft*fs'     $ 4.53125 MHz
.param amp  = 0.88               $ hampir full-scale single-ended
.param off  = 0.9                $ V_CM
.param namp = '-amp'             $ amplitudo sisi n (fase berlawanan)
.options reltol=1e-4 vntol=1e-8 abstol=1e-14 chgtol=1e-16
"}
C {vsource.sym} 960 -190 0 0 {name=Voff value="DC 0.9" savecurrent=true}
C {gnd.sym} 960 -140 0 0 {name=l6 lab=0}
C {vcvs.sym} 1080 -280 0 0 {name=En value=-0.5}
C {vcvs.sym} 840 -280 0 1 {name=Ep value=0.5}
C {lab_pin.sym} 1080 -390 2 0 {name=p6 sig_type=std_logic lab=vin}
C {vsource.sym} 760 -240 0 0 {name=Vd value="PWL(0 0.6 50n 0.6 51n 1.588 150n 1.588 151n -1.588)"  savecurrent=true}
C {gnd.sym} 760 -190 0 0 {name=l9 lab=0}
C {lab_pin.sym} 660 -450 2 0 {name=p14 sig_type=std_logic lab=EOC}
