v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 280 -120 280 -90 {lab=#net1}
N 300 -120 300 -10 {lab=#net2}
N 280 -10 300 -10 {lab=#net2}
N 280 80 320 80 {lab=#net3}
N 320 -120 320 80 {lab=#net3}
N 340 -120 340 170 {lab=#net4}
N 280 170 340 170 {lab=#net4}
N 280 260 360 260 {lab=#net5}
N 360 -120 360 260 {lab=#net5}
N 380 -120 380 350 {lab=#net6}
N 280 350 380 350 {lab=#net6}
N 420 -120 420 -90 {lab=#net7}
N 400 -120 400 -10 {lab=#net8}
N 480 -120 480 -90 {lab=#net9}
N 460 -10 480 -10 {lab=#net10}
N 460 -120 460 -10 {lab=#net10}
N 450 80 480 80 {lab=#net11}
N 440 80 450 80 {lab=#net11}
N 440 -120 440 80 {lab=#net11}
N 420 170 480 170 {lab=#net7}
N 420 -90 420 170 {lab=#net7}
N 400 260 480 260 {lab=#net8}
N 400 -10 400 250 {lab=#net8}
N 400 250 400 260 {lab=#net8}
N 280 -70 480 -70 {lab=vdd}
N 280 -50 480 -50 {lab=vss}
N 280 10 480 10 {lab=vdd}
N 280 30 480 30 {lab=vss}
N 280 100 480 100 {lab=vdd}
N 280 120 480 120 {lab=vss}
N 280 190 480 190 {lab=vdd}
N 280 210 480 210 {lab=vss}
N 280 280 480 280 {lab=vdd}
N 280 300 480 300 {lab=vss}
N 280 370 290 370 {lab=vdd}
N 290 280 290 370 {lab=vdd}
N 290 190 290 280 {lab=vdd}
N 290 100 290 190 {lab=vdd}
N 290 10 290 100 {lab=vdd}
N 290 -70 290 10 {lab=vdd}
N 280 390 310 390 {lab=vss}
N 310 300 310 390 {lab=vss}
N 310 210 310 300 {lab=vss}
N 310 120 310 210 {lab=vss}
N 310 30 310 120 {lab=vss}
N 310 -50 310 30 {lab=vss}
N 290 370 330 370 {lab=vdd}
N 310 390 330 390 {lab=vss}
C {cdac.sym} 410 -220 0 0 {name=x1}
C {A_CDAC.sym} 130 -70 0 0 {name=x2}
C {B_CDAC.sym} 130 10 0 0 {name=x3}
C {B_CDAC.sym} 130 190 0 0 {name=x4}
C {B_CDAC.sym} 130 370 0 0 {name=x5}
C {A_CDAC.sym} 130 100 0 0 {name=x6}
C {A_CDAC.sym} 130 280 0 0 {name=x7}
C {B_CDAC.sym} 630 190 0 1 {name=x8}
C {A_CDAC.sym} 630 280 0 1 {name=x9}
C {B_CDAC.sym} 630 -70 0 1 {name=x10}
C {B_CDAC.sym} 630 10 0 1 {name=x11}
C {B_CDAC.sym} 630 100 0 1 {name=x12}
C {ipin.sym} -230 -200 0 0 {name=p1 lab=D[7..1]}
C {iopin.sym} -230 -280 0 1 {name=p59 lab=vdd}
C {iopin.sym} -230 -260 0 1 {name=p60 lab=vss}
C {ipin.sym} -230 -220 0 0 {name=p13 lab=clk[1..7]}
C {lab_pin.sym} -20 -90 0 0 {name=p2 sig_type=std_logic lab=clk1}
C {lab_pin.sym} -20 -10 0 0 {name=p3 sig_type=std_logic lab=clk1}
C {lab_pin.sym} -20 80 0 0 {name=p4 sig_type=std_logic lab=clk2}
C {lab_pin.sym} -20 170 0 0 {name=p5 sig_type=std_logic lab=clk2}
C {lab_pin.sym} -20 260 0 0 {name=p6 sig_type=std_logic lab=clk3}
C {lab_pin.sym} -20 350 0 0 {name=p7 sig_type=std_logic lab=clk3}
C {lab_pin.sym} 780 -90 0 1 {name=p8 sig_type=std_logic lab=clk7}
C {lab_pin.sym} 780 -10 0 1 {name=p9 sig_type=std_logic lab=clk6}
C {lab_pin.sym} 780 80 0 1 {name=p10 sig_type=std_logic lab=clk5}
C {lab_pin.sym} 780 260 0 1 {name=p14 sig_type=std_logic lab=clk4}
C {lab_pin.sym} 780 170 0 1 {name=p15 sig_type=std_logic lab=clk4}
C {lab_pin.sym} -20 -70 0 0 {name=p16 sig_type=std_logic lab=D7}
C {lab_pin.sym} -20 10 0 0 {name=p17 sig_type=std_logic lab=D7}
C {lab_pin.sym} -20 100 0 0 {name=p18 sig_type=std_logic lab=D6}
C {lab_pin.sym} -20 190 0 0 {name=p19 sig_type=std_logic lab=D6}
C {lab_pin.sym} -20 280 0 0 {name=p20 sig_type=std_logic lab=D5}
C {lab_pin.sym} -20 370 0 0 {name=p21 sig_type=std_logic lab=D5}
C {lab_pin.sym} 780 -70 0 1 {name=p22 sig_type=std_logic lab=D1}
C {lab_pin.sym} 780 10 0 1 {name=p23 sig_type=std_logic lab=D2}
C {lab_pin.sym} 780 100 0 1 {name=p24 sig_type=std_logic lab=D3}
C {lab_pin.sym} 780 190 0 1 {name=p25 sig_type=std_logic lab=D4}
C {lab_pin.sym} 780 280 0 1 {name=p26 sig_type=std_logic lab=D4}
C {iopin.sym} -230 -240 2 0 {name=p28 lab=ctop}
C {lab_pin.sym} 420 -280 0 0 {name=p27 sig_type=std_logic lab=ctop}
C {lab_pin.sym} 520 -120 0 1 {name=p33 sig_type=std_logic lab=vss}
C {lab_pin.sym} 330 370 0 1 {name=p11 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 330 390 0 1 {name=p12 sig_type=std_logic lab=vss}
