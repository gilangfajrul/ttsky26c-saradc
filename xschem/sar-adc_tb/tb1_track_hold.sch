v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 40 -720 840 -320 {flags=graph
y1=-0.043
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=7e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
sim_type=tran
rawfile=$netlist_dir/tb1_track_hold.raw
hilight_wave=-1
color="4 5 6 7"
node="clk
vin
vout
clkb"}
B 2 860 -720 1660 -320 {flags=graph
y1=-0.26
y2=3.7
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=7e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
sim_type=tran
rawfile=$netlist_dir/tb1_track_hold.raw
hilight_wave=3
color="4 5 6 7"
node="xbootstrap.ctop
xbootstrap.cbot
xbootstrap.vgate
xbootstrap.vschtopdrv1"}
N 110 -150 110 -130 {lab=clk}
N 110 -70 110 -60 {lab=0}
N 110 -60 110 -50 {lab=0}
N 230 -190 300 -190 {lab=clkb}
N 110 -210 110 -200 {lab=clk}
N 110 -210 300 -210 {lab=clk}
N 30 -300 380 -300 {lab=vsup}
N 30 -300 30 -290 {lab=vsup}
N 70 -240 300 -240 {lab=vin}
N 440 -240 490 -240 {lab=vout}
N 490 -180 490 -160 {lab=0}
N 110 -150 140 -150 {lab=clk}
N 110 -200 110 -150 {lab=clk}
N 220 -150 230 -150 {lab=clkb}
N 230 -190 230 -150 {lab=clkb}
C {bootstrap.sym} 320 -100 0 0 {name=xbootstrap}
C {vsource.sym} 110 -100 0 1 {name=Vstimulus value="PULSE(0 1.8 100n 100p 100p 15n 100n)"  savecurrent=false}
C {gnd.sym} 110 -50 0 0 {name=l4 lab=0}
C {gnd.sym} 380 -160 0 0 {name=l1 lab=0}
C {vsource.sym} 30 -260 0 0 {name=Vsupply value=1.8  savecurrent=false}
C {gnd.sym} 30 -230 0 0 {name=l2 lab=0}
C {vsource.sym} 70 -210 0 0 {name=Vin value="DC 0.1" savecurrent=false}
C {gnd.sym} 70 -180 0 0 {name=l3 lab=0}
C {capa.sym} 490 -210 0 0 {name=Cload
m=1
value=1.25p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 490 -160 0 0 {name=l5 lab=0}
C {lab_wire.sym} 210 -300 0 0 {name=p1 sig_type=std_logic lab=vsup}
C {lab_wire.sym} 210 -240 0 0 {name=p2 sig_type=std_logic lab=vin}
C {lab_wire.sym} 210 -210 0 0 {name=p3 sig_type=std_logic lab=clk}
C {lab_wire.sym} 260 -190 0 0 {name=p4 sig_type=std_logic lab=clkb}
C {lab_wire.sym} 450 -240 0 1 {name=p5 sig_type=std_logic lab=vout}
C {code.sym} 680 -250 0 0 {name=ngspice only_toplevel=false value="
.ic v(vout)=0
.control
 set filetype = ascii
 set wr_vecnames

 echo '' > tb1_track_hold.log
 echo '=== TB1a  boost / settling / droop  vs  vin ======================' >> tb1_track_hold.log
 echo 'boost_err  = 1.8 - max(vgate-vin)  selama track        [target < 50 mV]' >> tb1_track_hold.log
 echo 'ripple     = variasi (vgate-vin) selama track          [target < 10 mV]' >> tb1_track_hold.log
 echo 'vgate_hold = max vgate selama hold                     [target < 50 mV]' >> tb1_track_hold.log
 echo 't_settle   = waktu vout capai 0.5 LSB dari step FS     [target < 15 ns]' >> tb1_track_hold.log
 echo 'err_track  = vin - vout di ujung jendela track         [target < 3.5 mV]' >> tb1_track_hold.log
 echo 'droop      = perubahan vout selama 84 ns hold          [target < 3.5 mV]' >> tb1_track_hold.log
 echo '' >> tb1_track_hold.log

 foreach vsweep 0.1 0.45 0.9 1.35 1.7
  alter Vin dc = $vsweep
  tran 20p 700n
  setplot $curplot
  
  **Boost Accuracy
  let vboost = v(xbootstrap.vgate) - v(vin)
  meas tran bmin MIN vboost FROM=502n TO=514n
  meas tran bmax MAX vboost FROM=502n TO=514n
  let berr    = (1.8 - bmax)*1e3
  let bripple = (bmax - bmin)*1e3

  **Vgate Hold
  meas tran vgh MAX v(xbootstrap.vgate) FROM=560n TO=595n
  let vgh_mv = vgh*1e3

  ** Settling
  let vtgt = $vsweep - 3.516e-3
  meas tran tset WHEN v(vout)=$&vtgt RISE=1
  let tset_ns = (tset - 100e-9)*1e9
  meas tran vend FIND v(vout) AT=114.9n
  let errtrack = ($vsweep - vend)*1e3

  **Droop
  meas tran vh0 FIND v(vout) AT=514.9n
  meas tran vh1 FIND v(vout) AT=599n
  let droop = (vh1 - vh0)*1e3

  echo 'vin=$vsweep | boost_err=$&berr mV | ripple=$&bripple mV | vgate_hold=$&vgh_mv mV | t_settle=$&tset_ns ns | err_track=$&errtrack mV | droop=$&droop mV' >> tb1_track_hold.log
 end
 

 echo '' >> tb1_track_hold.log
 echo '=== RELIABILITY (vin = 1.70 V, worst case, siklus 5) ===========' >> tb1_track_hold.log
 echo 'Batas sky130 1.8V device: |V| <= 1.98 V' >> tb1_track_hold.log
 echo '' >> tb1_track_hold.log
 alter Vin dc = 1.70
 tran 20p 700n

 let sw_vgs   = v(xbootstrap.vgate) - v(vin)
 let sw_vgd   = v(xbootstrap.vgate) - v(vout)
 let chtop_v  = v(xbootstrap.ctop)  - v(vsup)
 let drv1_vds = v(xbootstrap.vgate) - v(xbootstrap.vschtopdrv1)
 let drv2_vds = v(xbootstrap.vschtopdrv1)
 let distop_v = v(xbootstrap.vgdistop) - v(xbootstrap.ctop)
 let cboot_v  = v(xbootstrap.ctop) - v(xbootstrap.cbot)

 meas tran m1 MAX  v(xbootstrap.ctop)  FROM=500n TO=600n
 meas tran m2 MAX  v(xbootstrap.vgate) FROM=500n TO=600n
 meas tran m3 MAX  sw_vgs      FROM=500n TO=600n
 meas tran m4 MIN  sw_vgs      FROM=500n TO=600n
 meas tran m5 MAX  sw_vgd      FROM=500n TO=600n
 meas tran m6 MAX  chtop_v     FROM=500n TO=600n
 meas tran m7 MAX  drv1_vds    FROM=500n TO=600n
 meas tran m8 MAX  drv2_vds    FROM=500n TO=600n
 meas tran m9 MIN  distop_v    FROM=500n TO=600n
 meas tran m10 MAX cboot_v     FROM=500n TO=600n

 let m9p = -m9
 echo '  v(ctop) max              = $&m1 V'					>> tb1_track_hold.log
 echo '  v(vgate) max             = $&m2 V'					>> tb1_track_hold.log
 echo '  Mswitch     Vgs max      = $&m3 V     (harus ~1.8 = boost penuh)'	>> tb1_track_hold.log
 echo '  Mswitch     Vgs min      = $&m4 V     (saat hold, = -vin)'		>> tb1_track_hold.log
 echo '  Mswitch     Vgd max      = $&m5 V'					>> tb1_track_hold.log
 echo '  Mchtop      |Vds| max    = $&m6 V     (ctop-vdd)'			>> tb1_track_hold.log
 echo '  Mchtopdrv1  Vds max      = $&m7 V     <-- titik stres tertinggi'	>> tb1_track_hold.log
 echo '  Mchtopdrv2  Vds max      = $&m8 V'					>> tb1_track_hold.log
 echo '  Mdistop     |Vgs| max    = $&m9p V'					>> tb1_track_hold.log
 echo '  Cboot       V max        = $&m10 V'					>> tb1_track_hold.log
 echo ''

 write tb1_track_hold.raw

.endc
"}
C {sky130_stdcells/inv_2.sym} 180 -150 0 0 {name=x2 VGND=0 VNB=0 VPB=vsup VPWR=vsup prefix=sky130_fd_sc_hd__ }
C {devices/code.sym} 560 -250 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
