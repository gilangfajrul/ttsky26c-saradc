v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 100 -1000 900 -600 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-2072034064
rawfile=$netlist_dir/tb4_kickback.raw
autoload=1
sim_type=tran}
N 430 -510 480 -510 {lab=vtopp}
N 480 -510 480 -430 {lab=vtopp}
N 480 -430 660 -430 {lab=vtopp}
N 430 -320 480 -320 {lab=vtopn}
N 480 -390 480 -320 {lab=vtopn}
N 480 -390 660 -390 {lab=vtopn}
N 530 -390 530 -380 {lab=vtopn}
N 530 -440 530 -430 {lab=vtopp}
N 530 -320 530 -310 {lab=0}
N 530 -510 530 -500 {lab=0}
N 780 -300 780 -290 {lab=0}
N 750 -300 750 -290 {lab=0}
N 370 -240 370 -230 {lab=0}
N 370 -430 370 -420 {lab=0}
N 80 -150 80 -120 {lab=clks}
N 80 -60 80 -50 {lab=0}
N 80 -190 80 -150 {lab=clks}
N 160 -190 160 -150 {lab=clksb}
N 480 -60 480 -50 {lab=0}
N 390 -60 390 -50 {lab=0}
N 670 -60 670 -50 {lab=0}
N 580 -60 580 -50 {lab=0}
N 850 -390 910 -390 {lab=von}
N 850 -430 910 -430 {lab=vop}
N 770 -60 770 -50 {lab=0}
C {comparator.sym} 560 -210 0 0 {name=x1}
C {bootstrap.sym} 310 -180 0 0 {name=x2}
C {bootstrap.sym} 310 -370 0 0 {name=x3}
C {capa.sym} 530 -350 0 0 {name=C1
m=1
value=1.25p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 530 -470 2 0 {name=C2
m=1
value=1.25p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 530 -310 0 0 {name=l1 lab=0}
C {gnd.sym} 530 -510 2 0 {name=l2 lab=0}
C {gnd.sym} 750 -290 0 0 {name=l3 lab=0}
C {gnd.sym} 780 -290 0 0 {name=l4 lab=0}
C {gnd.sym} 370 -230 0 0 {name=l5 lab=0}
C {gnd.sym} 370 -420 0 0 {name=l6 lab=0}
C {lab_pin.sym} 370 -380 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 370 -570 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 750 -500 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 780 -500 2 0 {name=p4 sig_type=std_logic lab=dvdd}
C {vsource.sym} 80 -90 0 0 {name=Vclks value="PULSE(0 \{vdd_v\} \{ts\} \{trf\} \{trf\} \{tsamp\} \{ts\})" savecurrent=false}
C {code.sym} 1110 -370 0 0 {name=param only_toplevel=false value="
.param tcomp_d = 'ts + 20e-9'    $ strobe 5 ns setelah switch membuka
.param tcomp_w = 25e-9
.param vdd_v   = 1.8
.param fs      = 10e6
.param ts      = '1/fs'          $ 100 ns
.param tsamp   = 15e-9           $ jendela track
.param trf     = 100e-12         $ rise/fall clock (buffer riil, bukan 1 ps)
"}
C {gnd.sym} 80 -50 0 0 {name=l7 lab=0}
C {sky130_stdcells/inv_2.sym} 120 -150 0 0 {name=x4 VGND=0 VNB=0 VPB=dvdd VPWR=dvdd prefix=sky130_fd_sc_hd__ }
C {lab_pin.sym} 80 -190 0 0 {name=p5 sig_type=std_logic lab=clks}
C {lab_pin.sym} 160 -190 0 0 {name=p6 sig_type=std_logic lab=clksb}
C {code.sym} 1230 -370 0 0 {name=ngspice only_toplevel=false value="
.control
  echo ''
  echo '=== TB4  kickback comparator ===================================='
  echo '1 LSB differential = 14.0625 mV.  Batas wajar: kickback'
  echo 'differential < 0.25 LSB = 3.5 mV, dan yang lebih penting,'
  echo 'VARIASI-nya terhadap kode input harus < 0.25 LSB (itu yang'
  echo 'jadi INL; bagian yang konstan hanya jadi offset).'
  echo ''

  foreach vd 0.00703 0.0703 0.703 1.700
    let vp = 0.9 + $vd/2
    let vn = 0.9 - $vd/2
    alter Vvinp dc = $&vp
    alter Vvinn dc = $&vn

    * ---- run A: comparator DIAM (referensi droop) -------------------
    alter @vclkc[pulse] = [ 0 0 120n 100p 100p 25n 100n ]
    tran 20p 400n
    setplot $curplot
    meas tran a0p FIND v(vtopp) AT=319.5n
    meas tran a0n FIND v(vtopn) AT=319.5n
    meas tran a1p FIND v(vtopp) AT=395n
    meas tran a1n FIND v(vtopn) AT=395n
    let ref_d  = (a1p - a1n) - (a0p - a0n)
    let ref_cm = (a1p + a1n)/2 - (a0p + a0n)/2
    * Tiap `tran` membuat PLOT BARU. Vektor dari run sebelumnya tidak
    * terlihat dari plot baru, jadi nilainya harus dipindah ke shell
    * variable dulu -- itu satu-satunya yang lintas-plot.
    set refd = $&ref_d
    set refcm = $&ref_cm

    * ---- run B: comparator MEN-STROBE -------------------------------
    alter @vclkc[pulse] = [ 0 1.8 120n 100p 100p 25n 100n ]
    tran 20p 400n
    setplot $curplot
    meas tran b0p FIND v(vtopp) AT=319.5n
    meas tran b0n FIND v(vtopn) AT=319.5n
    meas tran b1p FIND v(vtopp) AT=395n
    meas tran b1n FIND v(vtopn) AT=395n
    meas tran bpk MIN v(vtopp) FROM=320n TO=330n
    let act_d  = (b1p - b1n) - (b0p - b0n)
    let act_cm = (b1p + b1n)/2 - (b0p + b0n)/2

    * ---- kickback murni = selisih kedua run -------------------------
    let kb_d    = (act_d - $refd)*1e3
    let kb_cm   = (act_cm - $refcm)*1e3
    let kb_lsb  = kb_d/14.0625
    let kb_peak = (bpk - b0p)*1e3
    let vin_lsb = $vd/0.0140625
    meas tran vopf FIND v(vop) AT=140n

    echo '  vin_diff=$vd V ($&vin_lsb LSB) | kick_diff=$&kb_d mV ($&kb_lsb LSB) | kick_cm=$&kb_cm mV | peak_dip=$&kb_peak mV | vop=$&vopf V'
  end
  echo ''

  write tb4_kickback.raw v(vtopp) v(vtopn) v(clks) v(clkc) v(vop) v(von) v(rdy)
.endc
"}
C {lab_pin.sym} 290 -270 0 0 {name=p7 sig_type=std_logic lab=clksb}
C {lab_pin.sym} 290 -290 0 0 {name=p8 sig_type=std_logic lab=clks}
C {lab_pin.sym} 290 -460 0 0 {name=p9 sig_type=std_logic lab=clksb}
C {lab_pin.sym} 290 -480 0 0 {name=p10 sig_type=std_logic lab=clks}
C {vsource.sym} 390 -90 0 0 {name=Vvinp value="DC 0.9" savecurrent=false}
C {vsource.sym} 480 -90 0 0 {name=Vvinn value="DC 0.9" savecurrent=false}
C {gnd.sym} 390 -50 0 0 {name=l8 lab=0}
C {gnd.sym} 480 -50 0 0 {name=l9 lab=0}
C {lab_pin.sym} 290 -320 0 0 {name=p11 sig_type=std_logic lab=vinn}
C {lab_pin.sym} 290 -510 0 0 {name=p12 sig_type=std_logic lab=vinp}
C {lab_pin.sym} 850 -350 2 0 {name=p15 sig_type=std_logic lab=rdy}
C {vsource.sym} 580 -90 0 0 {name=Vvdd value="DC 1.8" savecurrent=false}
C {vsource.sym} 670 -90 0 0 {name=Vdvdd value="DC 1.8" savecurrent=false}
C {gnd.sym} 580 -50 0 0 {name=l10 lab=0}
C {gnd.sym} 670 -50 0 0 {name=l11 lab=0}
C {lab_pin.sym} 390 -120 1 0 {name=p16 sig_type=std_logic lab=vinp}
C {lab_pin.sym} 480 -120 1 0 {name=p17 sig_type=std_logic lab=vinn}
C {lab_pin.sym} 580 -120 1 0 {name=p18 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 670 -120 1 0 {name=p19 sig_type=std_logic lab=dvdd}
C {lab_wire.sym} 590 -430 0 0 {name=p20 sig_type=std_logic lab=vtopp}
C {lab_wire.sym} 590 -390 0 0 {name=p21 sig_type=std_logic lab=vtopn}
C {devices/code.sym} 1110 -220 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {lab_wire.sym} 910 -390 0 0 {name=p13 sig_type=std_logic lab=von}
C {lab_wire.sym} 910 -430 0 0 {name=p14 sig_type=std_logic lab=vop}
C {vsource.sym} 770 -90 0 0 {name=Vclkc value="PULSE(0 \{vdd_v\} \{tcomp_d\} \{trf\} \{trf\} \{tcomp_w\} \{ts\})" savecurrent=false}
C {gnd.sym} 770 -50 0 0 {name=l12 lab=0}
C {lab_pin.sym} 660 -350 0 0 {name=p22 sig_type=std_logic lab=clkc}
C {lab_pin.sym} 770 -120 1 0 {name=p23 sig_type=std_logic lab=clkc}
