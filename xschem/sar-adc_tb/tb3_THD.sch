v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 250 -150 250 -130 {lab=clk}
N 250 -70 250 -60 {lab=0}
N 250 -60 250 -50 {lab=0}
N 370 -190 440 -190 {lab=clkb}
N 250 -210 250 -200 {lab=clk}
N 250 -210 440 -210 {lab=clk}
N 170 -300 520 -300 {lab=vsup}
N 170 -300 170 -290 {lab=vsup}
N 210 -240 440 -240 {lab=vinn}
N 580 -240 630 -240 {lab=voutn}
N 250 -150 280 -150 {lab=clk}
N 250 -200 250 -150 {lab=clk}
N 360 -150 370 -150 {lab=clkb}
N 370 -190 370 -150 {lab=clkb}
N 210 -570 440 -570 {lab=vinp}
N 580 -570 630 -570 {lab=voutp}
N 410 -540 440 -540 {lab=clk}
N 410 -520 440 -520 {lab=clkb}
N 630 -510 630 -490 {lab=0}
N 630 -180 630 -160 {lab=0}
C {bootstrap.sym} 460 -100 0 0 {name=xbootstrapn}
C {vsource.sym} 250 -100 0 1 {name=Vstimulus value="PULSE(0 1.8 100n 100p 100p 15n 100n)"  savecurrent=false}
C {gnd.sym} 250 -50 0 0 {name=l4 lab=0}
C {gnd.sym} 520 -160 0 0 {name=l1 lab=0}
C {vsource.sym} 170 -260 0 0 {name=Vsupply value=1.8  savecurrent=false}
C {gnd.sym} 170 -230 0 0 {name=l2 lab=0}
C {vsource.sym} 210 -210 0 0 {name=Vinn value="DC \{off\} SIN(\{off\} \{namp\} \{fin\})" savecurrent=false}
C {gnd.sym} 210 -180 0 0 {name=l3 lab=0}
C {lab_wire.sym} 350 -300 0 0 {name=p1 sig_type=std_logic lab=vsup}
C {lab_wire.sym} 350 -240 0 0 {name=p2 sig_type=std_logic lab=vinn}
C {lab_wire.sym} 350 -210 0 0 {name=p3 sig_type=std_logic lab=clk}
C {lab_wire.sym} 400 -190 0 0 {name=p4 sig_type=std_logic lab=clkb}
C {lab_wire.sym} 590 -240 0 1 {name=p5 sig_type=std_logic lab=voutn}
C {code.sym} 960 -250 0 0 {name=ngspice only_toplevel=false value="
.control
  tran 50p 6.6u
  setplot $curplot

  echo ''
  echo '=== TB3  sampel keluaran (dibaca thd.py) ========================'
  let k = 0
  dowhile k < 64
    let tk = 120e-9 + k*100e-9
    meas tran sp FIND v(voutp) AT=$&tk
    meas tran sn FIND v(voutn) AT=$&tk
    meas tran ip FIND v(vinp)  AT=$&tk
    echo 'SAMPLE $&k $&sp $&sn $&ip'
    let k = k + 1
  end
  echo '=== akhir sampel ================================================'
  echo ''

  write tb3_thd.raw
.endc
"}
C {sky130_stdcells/inv_2.sym} 320 -150 0 0 {name=x2 VGND=0 VNB=0 VPB=vsup VPWR=vsup prefix=sky130_fd_sc_hd__ }
C {devices/code.sym} 720 -250 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {bootstrap.sym} 460 -430 0 0 {name=xbootstrapp}
C {gnd.sym} 520 -490 0 0 {name=l6 lab=0}
C {vsource.sym} 210 -540 0 0 {name=Vinp value="DC \{off\} SIN(\{off\} \{amp\} \{fin\})" savecurrent=false}
C {gnd.sym} 210 -510 0 0 {name=l8 lab=0}
C {lab_wire.sym} 520 -630 0 0 {name=p6 sig_type=std_logic lab=vsup}
C {lab_wire.sym} 350 -570 0 0 {name=p7 sig_type=std_logic lab=vinp}
C {lab_wire.sym} 410 -540 0 0 {name=p8 sig_type=std_logic lab=clk}
C {lab_wire.sym} 410 -520 2 1 {name=p9 sig_type=std_logic lab=clkb}
C {lab_wire.sym} 590 -570 0 1 {name=p10 sig_type=std_logic lab=voutp}
C {code.sym} 840 -250 0 0 {name=param only_toplevel=false value="
.param nfft = 64
.param mcyc = 29
.param fs = 10e6
.param fin  = 'mcyc/nfft*fs'     $ 4.53125 MHz
.param amp  = 0.88               $ hampir full-scale single-ended
.param off  = 0.9                $ V_CM
.param namp = '-amp'             $ amplitudo sisi n (fase berlawanan)
.options reltol=1e-4 vntol=1e-8 abstol=1e-14 chgtol=1e-16
"}
C {capa.sym} 630 -540 0 0 {name=Cloadp
m=1
value=1.25p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 630 -490 0 0 {name=l9 lab=0}
C {capa.sym} 630 -210 0 0 {name=Cloadn
m=1
value=1.25p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 630 -160 0 0 {name=l10 lab=0}
