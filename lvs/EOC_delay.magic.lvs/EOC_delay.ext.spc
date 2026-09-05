* NGSPICE file created from EOC_delay.ext - technology: sky130A

.subckt EOC_delay vdd vss clk8 EOC
X0 a_283_47# a_27_47# vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.2173 pd=2.17 as=0.1701 ps=1.36 w=0.82 l=0.5
X1 sky130_fd_sc_hd__clkdlybuf4s50_1_1.X a_n346_47# vss vss sky130_fd_pr__nfet_01v8 ad=0.1491 pd=1.55 as=0.097 ps=0.975 w=0.42 l=0.15
X2 sky130_fd_sc_hd__clkdlybuf4s50_1_1.X a_n346_47# vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.355 pd=2.71 as=0.15575 ps=1.325 w=1 l=0.15
X3 vdd sky130_fd_sc_hd__clkdlybuf4s50_1_1.X a_27_47# vdd sky130_fd_pr__pfet_01v8_hvt ad=0.1701 pd=1.36 as=0.27 ps=2.54 w=1 l=0.15
X4 vdd a_283_47# a_390_47# vdd sky130_fd_pr__pfet_01v8_hvt ad=0.15575 pd=1.325 as=0.2173 ps=2.17 w=0.82 l=0.5
X5 vss a_n453_47# a_n346_47# vss sky130_fd_pr__nfet_01v8 ad=0.097 pd=0.975 as=0.17225 ps=1.83 w=0.65 l=0.5
X6 vss a_283_47# a_390_47# vss sky130_fd_pr__nfet_01v8 ad=0.097 pd=0.975 as=0.17225 ps=1.83 w=0.65 l=0.5
X7 EOC a_390_47# vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.355 pd=2.71 as=0.15575 ps=1.325 w=1 l=0.15
X8 vss sky130_fd_sc_hd__clkdlybuf4s50_1_1.X a_27_47# vss sky130_fd_pr__nfet_01v8 ad=0.10435 pd=1.01 as=0.1134 ps=1.38 w=0.42 l=0.15
X9 vdd a_n453_47# a_n346_47# vdd sky130_fd_pr__pfet_01v8_hvt ad=0.15575 pd=1.325 as=0.2173 ps=2.17 w=0.82 l=0.5
X10 vdd clk8 a_n709_47# vdd sky130_fd_pr__pfet_01v8_hvt ad=0.1701 pd=1.36 as=0.27 ps=2.54 w=1 l=0.15
X11 vss clk8 a_n709_47# vss sky130_fd_pr__nfet_01v8 ad=0.10435 pd=1.01 as=0.1134 ps=1.38 w=0.42 l=0.15
X12 a_n453_47# a_n709_47# vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.2173 pd=2.17 as=0.1701 ps=1.36 w=0.82 l=0.5
X13 a_n453_47# a_n709_47# vss vss sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.10435 ps=1.01 w=0.65 l=0.5
X14 a_283_47# a_27_47# vss vss sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.10435 ps=1.01 w=0.65 l=0.5
X15 EOC a_390_47# vss vss sky130_fd_pr__nfet_01v8 ad=0.1491 pd=1.55 as=0.097 ps=0.975 w=0.42 l=0.15
.ends

