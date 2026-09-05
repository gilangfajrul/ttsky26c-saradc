v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 320 -1050 1120 -650 {flags=graph
y1=-0.24009017
y2=2.2397029
ypos1=-0.071450677
ypos2=1.5611343
divy=5
subdivy=4
unity=1
x1=2.6215458e-08
x2=2.7966461e-08
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/offset_sar-adc_tb.raw
autoload=1
sim_type=tran
digital=0
hilight_wave=-1
mode=Line
rainbow=1
legend=1
color=4
node=d7}
N 310 -290 310 -270 {lab=clks}
N 310 -210 310 -190 {lab=0}
N 660 -210 660 -190 {lab=0}
N 580 -210 580 -190 {lab=0}
N 660 -290 660 -270 {lab=avdd}
N 580 -290 580 -270 {lab=dvdd}
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
C {vsource.sym} 310 -240 0 0 {name=Vclk value="PULSE(0 1.8 10n 100p 100p 14.9n 100n)" savecurrent=false}
C {lab_pin.sym} 310 -290 0 0 {name=p12 sig_type=std_logic lab=clks}
C {gnd.sym} 310 -190 0 0 {name=l8 lab=0}
C {lab_pin.sym} 360 -450 0 0 {name=p1 sig_type=std_logic lab=clks}
C {vsource.sym} 660 -240 0 0 {name=Vavdd value=1.8 savecurrent=false}
C {vsource.sym} 580 -240 0 0 {name=Vdvdd value=1.8 savecurrent=false}
C {gnd.sym} 580 -190 0 0 {name=l4 lab=0}
C {gnd.sym} 660 -190 0 0 {name=l5 lab=0}
C {lab_pin.sym} 580 -290 2 0 {name=p3 sig_type=std_logic lab=dvdd}
C {lab_pin.sym} 660 -290 2 0 {name=p4 sig_type=std_logic lab=avdd}
C {lab_pin.sym} 530 -560 1 0 {name=p2 sig_type=std_logic lab=avdd}
C {lab_pin.sym} 480 -560 1 0 {name=p5 sig_type=std_logic lab=dvdd}
C {gnd.sym} 540 -420 0 0 {name=l1 lab=0}
C {gnd.sym} 480 -420 0 0 {name=l2 lab=0}
C {lab_pin.sym} 840 -390 2 1 {name=p7 sig_type=std_logic lab=vip}
C {lab_pin.sym} 360 -470 0 0 {name=p8 sig_type=std_logic lab=vip}
C {lab_pin.sym} 360 -510 0 0 {name=p9 sig_type=std_logic lab=vin}
C {simulator_commands.sym} 890 -580 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
 set appendwrite
 foreach vv -0.020 -0.018 -0.016 -0.014 -0.012 -0.010 -0.008 -0.006 -0.004 -0.002
 +        0.000 0.002 0.004 0.006 0.008 0.010 0.012 0.014 0.016 0.018 0.020
   alter Vd = $vv
   tran 20p 30n
   meas tran d7v find v(D7) at=29n
   echo 'SWEEP $vv $&d7v'
   write offset_sar-adc_tb.raw v(D7) v(clks) v(xtop.clkc) v(xtop.ctopp) v(xtop.ctopn)
 +      v(xtop.xcomparator.vtail)
   destroy $curplot
 end
 unset appendwrite
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
C {vsource.sym} 960 -190 0 0 {name=Voff value="DC 0.9" savecurrent=false}
C {gnd.sym} 960 -140 0 0 {name=l6 lab=0}
C {vcvs.sym} 1080 -280 0 0 {name=En value=-0.5}
C {vcvs.sym} 840 -280 0 1 {name=Ep value=0.5}
C {lab_pin.sym} 1080 -390 2 0 {name=p6 sig_type=std_logic lab=vin}
C {vsource.sym} 760 -240 0 0 {name=Vd value="DC 0.59434" savecurrent=false}
C {gnd.sym} 760 -190 0 0 {name=l9 lab=0}
C {lab_pin.sym} 660 -450 2 0 {name=p14 sig_type=std_logic lab=EOC}
