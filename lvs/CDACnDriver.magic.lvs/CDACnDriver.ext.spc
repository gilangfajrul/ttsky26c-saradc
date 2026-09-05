* NGSPICE file created from CDACnDriver.ext - technology: sky130A

.subckt CDACnDriver clk1 clk2 clk3 clk4 clk5 clk6 clk7 ctop D1 D2 D3 D4 D5 D6 D7 vdd
+ vss
X0 vdd D5 B_CDAC_4.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1 vdd D2 B_CDAC_0.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X2 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X3 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X4 B_CDAC_5.B_out clk2 a_n17239_11729# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X5 a_n11967_11729# D2 vss vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X6 a_n11090_11729# D1 vss vss sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X7 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X8 ctop A_CDAC_2.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X9 ctop A_CDAC_1.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X10 a_n17239_11729# clk2 B_CDAC_5.B_out vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X11 a_n16703_11831# clk3 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.185 ps=1.37 w=1 l=0.15
X12 vdd D3 B_CDAC_2.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X13 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X14 A_CDAC_2.A_out a_n18462_11831# vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.15 pd=1.3 as=0.135 ps=1.27 w=1 l=0.15
X15 B_CDAC_4.B_out clk3 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X16 a_n12844_11729# D3 vss vss sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X17 B_CDAC_4.B_out D5 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X18 B_CDAC_0.B_out D2 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X19 B_CDAC_0.B_out clk6 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X20 ctop B_CDAC_4.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X21 ctop A_CDAC_1.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X22 ctop B_CDAC_3.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X23 vss D2 a_n11967_11729# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X24 B_CDAC_0.B_out clk6 a_n11967_11729# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X25 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X26 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X27 ctop A_CDAC_2.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X28 B_CDAC_6.B_out D7 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X29 A_CDAC_1.A_out a_n16703_11831# vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.15575 ps=1.355 w=1 l=0.15
X30 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X31 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X32 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X33 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X34 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X35 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X36 ctop B_CDAC_5.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X37 vdd a_n18462_11831# A_CDAC_2.A_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.185 pd=1.37 as=0.15 ps=1.3 w=1 l=0.15
X38 vdd D4 a_n14944_12277# vdd sky130_fd_pr__pfet_01v8_hvt ad=0.15575 pd=1.355 as=0.1113 ps=1.37 w=0.42 l=0.15
X39 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X40 vdd a_n18462_12277# a_n18462_11831# vdd sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X41 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X42 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X43 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X44 ctop B_CDAC_5.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X45 B_CDAC_5.B_out clk2 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X46 ctop A_CDAC_2.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X47 vdd clk2 B_CDAC_5.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X48 ctop A_CDAC_1.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X49 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X50 vdd a_n18462_11831# A_CDAC_2.A_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X51 vdd D4 B_CDAC_3.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X52 ctop A_CDAC_2.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X53 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X54 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X55 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X56 a_n13721_11721# D4 vss vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X57 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X58 ctop B_CDAC_4.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X59 vdd D7 B_CDAC_6.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X60 vdd D5 a_n16703_12277# vdd sky130_fd_pr__pfet_01v8_hvt ad=0.15575 pd=1.355 as=0.1113 ps=1.37 w=0.42 l=0.15
X61 vdd clk5 B_CDAC_2.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X62 a_n11090_11729# clk7 B_CDAC_1.B_out vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X63 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X64 vss a_n20221_11831# A_CDAC_3.A_out vss sky130_fd_pr__nfet_01v8 ad=0.1365 pd=1.07 as=0.091 ps=0.93 w=0.65 l=0.15
X65 vss a_n14944_11831# A_CDAC_0.A_out vss sky130_fd_pr__nfet_01v8 ad=0.1365 pd=1.07 as=0.091 ps=0.93 w=0.65 l=0.15
X66 a_n20221_11831# a_n20221_12277# a_n19875_12233# vss sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.0715 ps=0.87 w=0.65 l=0.15
X67 a_n14944_11831# a_n14944_12277# a_n14598_12233# vss sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.0715 ps=0.87 w=0.65 l=0.15
X68 a_n12844_11729# clk5 B_CDAC_2.B_out vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X69 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X70 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X71 B_CDAC_6.B_out D7 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X72 B_CDAC_6.B_out clk1 a_n18998_11729# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X73 B_CDAC_6.B_out clk1 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X74 ctop B_CDAC_5.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X75 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X76 ctop A_CDAC_1.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X77 ctop B_CDAC_2.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X78 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X79 ctop A_CDAC_2.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X80 a_n18998_11729# clk1 B_CDAC_6.B_out vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X81 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X82 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X83 a_n17239_11729# D6 vss vss sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X84 ctop A_CDAC_2.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X85 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X86 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X87 ctop A_CDAC_1.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X88 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X89 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X90 ctop B_CDAC_5.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X91 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X92 ctop A_CDAC_2.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X93 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X94 B_CDAC_1.B_out clk7 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X95 ctop A_CDAC_1.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X96 ctop B_CDAC_5.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X97 B_CDAC_4.B_out clk3 a_n15480_11728# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X98 vdd clk7 B_CDAC_1.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X99 ctop A_CDAC_2.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X100 a_n15480_11728# clk3 B_CDAC_4.B_out vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X101 vdd clk4 B_CDAC_3.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X102 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X103 a_n13721_11721# clk4 B_CDAC_3.B_out vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X104 ctop A_CDAC_2.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X105 ctop B_CDAC_5.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X106 vss a_n16703_11831# A_CDAC_1.A_out vss sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X107 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X108 ctop B_CDAC_3.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X109 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X110 ctop B_CDAC_4.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X111 vdd D7 a_n20221_12277# vdd sky130_fd_pr__pfet_01v8_hvt ad=0.15575 pd=1.355 as=0.1113 ps=1.37 w=0.42 l=0.15
X112 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X113 ctop B_CDAC_4.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X114 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X115 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X116 vdd D6 B_CDAC_5.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X117 ctop vss sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X118 vss D6 a_n18462_12277# vss sky130_fd_pr__nfet_01v8 ad=0.10675 pd=1.005 as=0.1113 ps=1.37 w=0.42 l=0.15
X119 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X120 ctop A_CDAC_1.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X121 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X122 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X123 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X124 a_n17239_11729# clk2 B_CDAC_5.B_out vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X125 vss D1 a_n11090_11729# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X126 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X127 B_CDAC_2.B_out D3 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X128 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X129 A_CDAC_2.A_out a_n18462_11831# vss vss sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.10675 ps=1.005 w=0.65 l=0.15
X130 B_CDAC_4.B_out clk3 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X131 B_CDAC_0.B_out clk6 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X132 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X133 a_n16357_12233# clk3 vss vss sky130_fd_pr__nfet_01v8 ad=0.0715 pd=0.87 as=0.1365 ps=1.07 w=0.65 l=0.15
X134 vss D3 a_n12844_11729# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X135 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X136 ctop B_CDAC_2.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X137 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X138 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X139 ctop B_CDAC_5.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X140 vdd clk3 B_CDAC_4.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X141 vdd clk6 B_CDAC_0.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X142 B_CDAC_0.B_out clk6 a_n11967_11729# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X143 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X144 ctop B_CDAC_5.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X145 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X146 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X147 ctop A_CDAC_2.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X148 a_n11967_11729# clk6 B_CDAC_0.B_out vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X149 a_n18998_11729# D7 vss vss sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X150 A_CDAC_2.A_out a_n18462_11831# vss vss sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X151 ctop B_CDAC_5.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X152 a_n18462_11831# clk2 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.185 ps=1.37 w=1 l=0.15
X153 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X154 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X155 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X156 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X157 ctop B_CDAC_2.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X158 vdd clk2 B_CDAC_5.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X159 a_n11090_11729# D1 vss vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X160 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X161 ctop B_CDAC_5.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X162 vdd D3 B_CDAC_2.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X163 vdd D1 B_CDAC_1.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X164 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X165 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X166 A_CDAC_2.A_out a_n18462_11831# vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.15575 ps=1.355 w=1 l=0.15
X167 a_n15480_11728# D5 vss vss sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X168 a_n12844_11729# D3 vss vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X169 ctop B_CDAC_4.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X170 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X171 vss D1 a_n11090_11729# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X172 B_CDAC_1.B_out clk7 a_n11090_11729# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X173 B_CDAC_2.B_out D3 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X174 B_CDAC_2.B_out clk5 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X175 vss D3 a_n12844_11729# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X176 B_CDAC_2.B_out clk5 a_n12844_11729# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X177 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X178 ctop B_CDAC_3.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X179 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X180 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X181 vss D7 a_n20221_12277# vss sky130_fd_pr__nfet_01v8 ad=0.10675 pd=1.005 as=0.1113 ps=1.37 w=0.42 l=0.15
X182 vss D4 a_n14944_12277# vss sky130_fd_pr__nfet_01v8 ad=0.10675 pd=1.005 as=0.1113 ps=1.37 w=0.42 l=0.15
X183 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X184 B_CDAC_6.B_out clk1 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X185 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X186 A_CDAC_3.A_out a_n20221_11831# vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.15 pd=1.3 as=0.135 ps=1.27 w=1 l=0.15
X187 a_n18998_11729# clk1 B_CDAC_6.B_out vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X188 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X189 vdd clk1 B_CDAC_6.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X190 ctop B_CDAC_5.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X191 ctop A_CDAC_0.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X192 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X193 A_CDAC_3.A_out a_n20221_11831# vss vss sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.10675 ps=1.005 w=0.65 l=0.15
X194 A_CDAC_0.A_out a_n14944_11831# vss vss sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.10675 ps=1.005 w=0.65 l=0.15
X195 ctop B_CDAC_4.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X196 ctop B_CDAC_0.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X197 vss D6 a_n17239_11729# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X198 A_CDAC_0.A_out a_n14944_11831# vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.15 pd=1.3 as=0.135 ps=1.27 w=1 l=0.15
X199 B_CDAC_3.B_out clk4 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X200 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X201 ctop A_CDAC_2.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X202 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X203 vss a_n16703_11831# A_CDAC_1.A_out vss sky130_fd_pr__nfet_01v8 ad=0.1365 pd=1.07 as=0.091 ps=0.93 w=0.65 l=0.15
X204 vdd D5 B_CDAC_4.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X205 B_CDAC_3.B_out clk4 a_n13721_11721# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X206 vdd D2 B_CDAC_0.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X207 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X208 vdd a_n20221_11831# A_CDAC_3.A_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.185 pd=1.37 as=0.15 ps=1.3 w=1 l=0.15
X209 A_CDAC_3.A_out a_n20221_11831# vss vss sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X210 A_CDAC_0.A_out a_n14944_11831# vss vss sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X211 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X212 a_n16703_11831# a_n16703_12277# a_n16357_12233# vss sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.0715 ps=0.87 w=0.65 l=0.15
X213 a_n11967_11729# D2 vss vss sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X214 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X215 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X216 vdd a_n20221_12277# a_n20221_11831# vdd sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X217 vdd clk7 B_CDAC_1.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X218 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X219 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X220 a_n15480_11728# clk3 B_CDAC_4.B_out vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X221 vdd a_n14944_11831# A_CDAC_0.A_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.185 pd=1.37 as=0.15 ps=1.3 w=1 l=0.15
X222 vdd clk4 B_CDAC_3.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X223 a_n13721_11721# clk4 B_CDAC_3.B_out vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X224 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X225 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X226 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X227 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X228 vdd a_n14944_12277# a_n14944_11831# vdd sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X229 vdd a_n20221_11831# A_CDAC_3.A_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X230 A_CDAC_1.A_out a_n16703_11831# vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.15 pd=1.3 as=0.135 ps=1.27 w=1 l=0.15
X231 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X232 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X233 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X234 a_n17239_11729# D6 vss vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X235 B_CDAC_5.B_out D6 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X236 vdd a_n14944_11831# A_CDAC_0.A_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X237 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X238 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X239 vdd a_n16703_11831# A_CDAC_1.A_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.185 pd=1.37 as=0.15 ps=1.3 w=1 l=0.15
X240 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X241 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X242 vss D6 a_n17239_11729# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X243 B_CDAC_5.B_out clk2 a_n17239_11729# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X244 vdd a_n16703_12277# a_n16703_11831# vdd sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X245 ctop A_CDAC_0.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X246 ctop B_CDAC_5.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X247 ctop A_CDAC_0.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X248 vdd clk3 B_CDAC_4.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X249 ctop B_CDAC_5.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X250 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X251 vss a_n18462_11831# A_CDAC_2.A_out vss sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X252 vdd clk6 B_CDAC_0.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X253 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X254 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X255 a_n11967_11729# clk6 B_CDAC_0.B_out vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X256 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X257 vdd D7 B_CDAC_6.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X258 vdd a_n16703_11831# A_CDAC_1.A_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X259 vss D7 a_n18998_11729# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X260 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X261 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X262 ctop A_CDAC_2.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X263 vdd D6 B_CDAC_5.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X264 vdd D4 B_CDAC_3.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X265 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X266 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X267 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X268 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X269 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X270 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X271 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X272 a_n13721_11721# D4 vss vss sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X273 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X274 a_n18116_12233# clk2 vss vss sky130_fd_pr__nfet_01v8 ad=0.0715 pd=0.87 as=0.1365 ps=1.07 w=0.65 l=0.15
X275 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X276 B_CDAC_5.B_out D6 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X277 B_CDAC_5.B_out clk2 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X278 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X279 B_CDAC_3.B_out D4 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X280 B_CDAC_1.B_out D1 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X281 ctop B_CDAC_4.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X282 ctop B_CDAC_1.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X283 vss D5 a_n15480_11728# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X284 vss D4 a_n13721_11721# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X285 B_CDAC_1.B_out clk7 a_n11090_11729# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X286 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X287 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X288 vdd D6 a_n18462_12277# vdd sky130_fd_pr__pfet_01v8_hvt ad=0.15575 pd=1.355 as=0.1113 ps=1.37 w=0.42 l=0.15
X289 B_CDAC_2.B_out clk5 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X290 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X291 a_n18998_11729# D7 vss vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X292 a_n11090_11729# clk7 B_CDAC_1.B_out vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X293 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X294 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X295 ctop B_CDAC_0.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X296 vdd clk5 B_CDAC_2.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X297 B_CDAC_2.B_out clk5 a_n12844_11729# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X298 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X299 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X300 ctop A_CDAC_2.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X301 a_n12844_11729# clk5 B_CDAC_2.B_out vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X302 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X303 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X304 vdd clk1 B_CDAC_6.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X305 ctop B_CDAC_5.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X306 ctop B_CDAC_2.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X307 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X308 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X309 vss D7 a_n18998_11729# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X310 B_CDAC_6.B_out clk1 a_n18998_11729# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X311 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X312 ctop A_CDAC_2.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X313 ctop A_CDAC_1.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X314 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X315 vss a_n20221_11831# A_CDAC_3.A_out vss sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X316 vss a_n14944_11831# A_CDAC_0.A_out vss sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X317 vdd D1 B_CDAC_1.B_out vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X318 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X319 a_n15480_11728# D5 vss vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X320 ctop A_CDAC_2.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X321 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X322 B_CDAC_4.B_out D5 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X323 B_CDAC_0.B_out D2 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X324 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X325 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X326 vss D2 a_n11967_11729# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X327 a_n20221_11831# clk1 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.185 ps=1.37 w=1 l=0.15
X328 vss D5 a_n16703_12277# vss sky130_fd_pr__nfet_01v8 ad=0.10675 pd=1.005 as=0.1113 ps=1.37 w=0.42 l=0.15
X329 B_CDAC_1.B_out D1 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X330 B_CDAC_1.B_out clk7 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X331 vss D5 a_n15480_11728# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X332 B_CDAC_4.B_out clk3 a_n15480_11728# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X333 B_CDAC_3.B_out D4 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X334 B_CDAC_3.B_out clk4 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X335 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X336 vss D4 a_n13721_11721# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X337 B_CDAC_3.B_out clk4 a_n13721_11721# vss sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X338 ctop A_CDAC_2.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X339 ctop B_CDAC_5.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X340 ctop B_CDAC_5.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X341 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X342 ctop A_CDAC_0.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X343 A_CDAC_1.A_out a_n16703_11831# vss vss sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.10675 ps=1.005 w=0.65 l=0.15
X344 a_n14944_11831# clk4 vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.185 ps=1.37 w=1 l=0.15
X345 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X346 a_n19875_12233# clk1 vss vss sky130_fd_pr__nfet_01v8 ad=0.0715 pd=0.87 as=0.1365 ps=1.07 w=0.65 l=0.15
X347 A_CDAC_3.A_out a_n20221_11831# vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.15575 ps=1.355 w=1 l=0.15
X348 a_n14598_12233# clk4 vss vss sky130_fd_pr__nfet_01v8 ad=0.0715 pd=0.87 as=0.1365 ps=1.07 w=0.65 l=0.15
X349 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X350 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X351 vss a_n18462_11831# A_CDAC_2.A_out vss sky130_fd_pr__nfet_01v8 ad=0.1365 pd=1.07 as=0.091 ps=0.93 w=0.65 l=0.15
X352 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X353 ctop A_CDAC_3.A_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X354 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X355 ctop B_CDAC_3.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X356 a_n18462_11831# a_n18462_12277# a_n18116_12233# vss sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.0715 ps=0.87 w=0.65 l=0.15
X357 A_CDAC_1.A_out a_n16703_11831# vss vss sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X358 A_CDAC_0.A_out a_n14944_11831# vdd vdd sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.15575 ps=1.355 w=1 l=0.15
X359 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X360 ctop ctop sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X361 ctop B_CDAC_4.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X362 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X363 ctop B_CDAC_6.B_out sky130_fd_pr__cap_mim_m3_1 l=2 w=2
.ends

