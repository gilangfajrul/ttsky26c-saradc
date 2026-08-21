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
N 370 -240 370 -230 {lab=0}
N 370 -430 370 -420 {lab=0}
N 80 -150 80 -120 {lab=clks}
N 80 -60 80 -50 {lab=0}
N 80 -190 80 -150 {lab=clks}
N 160 -190 160 -150 {lab=clksb}
N 480 -60 480 -50 {lab=0}
N 390 -60 390 -50 {lab=0}
N 580 -60 580 -50 {lab=0}
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
C {gnd.sym} 370 -230 0 0 {name=l5 lab=0}
C {gnd.sym} 370 -420 0 0 {name=l6 lab=0}
C {lab_pin.sym} 370 -380 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 370 -570 0 0 {name=p2 sig_type=std_logic lab=vdd}
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
  echo '=== TB5  Monte Carlo mismatch pasangan bootstrap ================'
  echo 'Corner tt_mm. Variabel `run` adalah SEED yang dibaca model'
  echo 'sky130; ia harus di-set SEBELUM tiap analisis dan didahului'
  echo '`reset` supaya netlist dievaluasi ulang dengan seed baru.'
  echo ''

  let r = 0
  dowhile r < 100
    reset
    let run = r
    tran 20p 250n
    setplot $curplot
    meas tran op FIND v(vtopp) AT=195n
    meas tran on FIND v(vtopn) AT=195n
    let off_uv = (op - on)*1e6
    echo 'MC $&r $&off_uv'
    let r = r + 1
  end
  echo '=== akhir MC ===================================================='
  echo ''
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
C {vsource.sym} 580 -90 0 0 {name=Vvdd value="DC 1.8" savecurrent=false}
C {gnd.sym} 580 -50 0 0 {name=l10 lab=0}
C {lab_pin.sym} 390 -120 1 0 {name=p16 sig_type=std_logic lab=vinp}
C {lab_pin.sym} 480 -120 1 0 {name=p17 sig_type=std_logic lab=vinn}
C {lab_pin.sym} 580 -120 1 0 {name=p18 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 590 -430 0 0 {name=p20 sig_type=std_logic lab=vtopp}
C {lab_wire.sym} 590 -390 0 0 {name=p21 sig_type=std_logic lab=vtopn}
C {devices/code.sym} 1110 -220 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt_mm
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
