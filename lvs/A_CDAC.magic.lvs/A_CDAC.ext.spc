* NGSPICE file created from A_CDAC.ext - technology: sky130A

.subckt A_CDAC vss A_out clki data vdd
X0 vss a_1023_105# A_out vss sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X1 vdd clki a_1023_105# vdd sky130_fd_pr__pfet_01v8_hvt ad=0.185 pd=1.37 as=0.135 ps=1.27 w=1 l=0.15
X2 a_1029_257# data vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.1113 pd=1.37 as=0.15575 ps=1.355 w=0.42 l=0.15
X3 a_1023_105# a_1029_257# vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X4 vdd a_1023_105# A_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.15575 pd=1.355 as=0.135 ps=1.27 w=1 l=0.15
X5 A_out a_1023_105# vss vss sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X6 A_out a_1023_105# vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X7 vdd a_1023_105# A_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.15 ps=1.3 w=1 l=0.15
X8 a_1105_105# a_1029_257# a_1023_105# vss sky130_fd_pr__nfet_01v8 ad=0.0715 pd=0.87 as=0.169 ps=1.82 w=0.65 l=0.15
X9 A_out a_1023_105# vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.15 pd=1.3 as=0.185 ps=1.37 w=1 l=0.15
X10 vss a_1023_105# A_out vss sky130_fd_pr__nfet_01v8 ad=0.10675 pd=1.005 as=0.091 ps=0.93 w=0.65 l=0.15
X11 a_1029_257# data vss vss sky130_fd_pr__nfet_01v8 ad=0.1113 pd=1.37 as=0.10675 ps=1.005 w=0.42 l=0.15
X12 vss clki a_1105_105# vss sky130_fd_pr__nfet_01v8 ad=0.1365 pd=1.07 as=0.0715 ps=0.87 w=0.65 l=0.15
X13 A_out a_1023_105# vss vss sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.1365 ps=1.07 w=0.65 l=0.15
.ends

