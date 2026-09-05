* NGSPICE file created from bootstrap.ext - technology: sky130A

.subckt bootstrap clk clkb vdd vin_n vin_p vout_n vout_p vss
X0 vss vss vss vss sky130_fd_pr__nfet_01v8 ad=0.165 pd=1.33 as=3.02 ps=26.04 w=1 l=0.15
X1 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_0.C2 clk sky130_fd_pr__pfet_01v8_4VMMWY_0.G2 vss sky130_fd_pr__nfet_01v8 ad=0.145 pd=1.58 as=0.145 ps=1.58 w=0.5 l=0.15
X2 vin_n sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 vout_n vss sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.15
X3 sky130_fd_pr__nfet_01v8_WAW2ZE_1.D2 sky130_fd_pr__nfet_01v8_WAW2ZE_1.D2 sky130_fd_pr__nfet_01v8_WAW2ZE_1.D2 vss sky130_fd_pr__nfet_01v8 ad=0.31 pd=2.62 as=0.64 ps=5.28 w=1 l=0.15
X4 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_1.C1 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_1.C1 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_1.C1 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_1.C1 sky130_fd_pr__pfet_01v8 ad=0.31 pd=2.62 as=1.86 ps=15.72 w=1 l=0.15
X5 sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 vss sky130_fd_pr__nfet_01v8 ad=0.145 pd=1.58 as=0.58 ps=6.32 w=0.5 l=0.15
X6 sky130_fd_pr__nfet_01v8_WAW2ZE_1.D2 sky130_fd_pr__nfet_01v8_WAW2ZE_1.D2 sky130_fd_pr__nfet_01v8_WAW2ZE_1.D2 vss sky130_fd_pr__nfet_g5v0d10v5 ad=0.435 pd=3.29 as=1.74 ps=13.16 w=3 l=0.5
X7 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_0.C2 sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 vin_n vss sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.15
X8 vss vss vss vss sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0 ps=0 w=1 l=0.15
X9 vss clkb sky130_fd_pr__nfet_01v8_WAW2ZE_1.D2 vss sky130_fd_pr__nfet_01v8 ad=0.165 pd=1.33 as=0.165 ps=1.33 w=1 l=0.15
X10 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_0.C1 sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 vdd sky130_fd_pr__cap_mim_m3_1_6ZDEYE_0.C1 sky130_fd_pr__pfet_01v8 ad=0.31 pd=2.62 as=0.31 ps=2.62 w=1 l=0.15
X11 sky130_fd_pr__nfet_g5v0d10v5_WBA3NL_1.D clkb vss vss sky130_fd_pr__nfet_01v8 ad=0.165 pd=1.33 as=0.165 ps=1.33 w=1 l=0.15
X12 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_0.C1 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_0.C2 sky130_fd_pr__cap_mim_m3_1 l=10 w=10
X13 sky130_fd_pr__nfet_01v8_FAHZ66_3.D clk vdd vdd sky130_fd_pr__pfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.15
X14 sky130_fd_pr__nfet_01v8_FAHZ66_3.D clk sky130_fd_pr__nfet_01v8_UVMP7B_7.D vss sky130_fd_pr__nfet_01v8 ad=0.145 pd=1.58 as=0.145 ps=1.58 w=0.5 l=0.15
X15 vss clkb sky130_fd_pr__nfet_01v8_UVMP7B_7.D vss sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.15
X16 sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 sky130_fd_pr__pfet_01v8_4VMMWY_0.G2 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_0.C1 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_0.C1 sky130_fd_pr__pfet_01v8 ad=0.31 pd=2.62 as=0.31 ps=2.62 w=1 l=0.15
X17 vdd clk sky130_fd_pr__pfet_01v8_4VMMWY_0.G2 vdd sky130_fd_pr__pfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.15
X18 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_1.C1 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_1.C1 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_1.C1 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_1.C1 sky130_fd_pr__pfet_01v8 ad=0.31 pd=2.62 as=0 ps=0 w=1 l=0.15
X19 sky130_fd_pr__nfet_01v8_FAHZ66_3.D sky130_fd_pr__nfet_01v8_FAHZ66_3.G sky130_fd_pr__nfet_01v8_UVMP7B_7.D vss sky130_fd_pr__nfet_01v8 ad=0.145 pd=1.58 as=0.145 ps=1.58 w=0.5 l=0.15
X20 vss vss vss vss sky130_fd_pr__nfet_01v8 ad=0.31 pd=2.62 as=0 ps=0 w=1 l=0.15
X21 sky130_fd_pr__nfet_01v8_FAHZ66_3.G sky130_fd_pr__nfet_01v8_FAHZ66_3.G sky130_fd_pr__nfet_01v8_FAHZ66_3.G vss sky130_fd_pr__nfet_g5v0d10v5 ad=0.87 pd=6.58 as=1.74 ps=13.16 w=3 l=0.5
X22 vss vss vss vss sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0 ps=0 w=1 l=0.15
X23 sky130_fd_pr__nfet_g5v0d10v5_WBA3NL_1.D sky130_fd_pr__nfet_g5v0d10v5_WBA3NL_1.D sky130_fd_pr__nfet_g5v0d10v5_WBA3NL_1.D vss sky130_fd_pr__nfet_g5v0d10v5 ad=0.87 pd=6.58 as=1.74 ps=13.16 w=3 l=0.5
X24 sky130_fd_pr__nfet_01v8_FAHZ66_3.G sky130_fd_pr__nfet_01v8_FAHZ66_3.G sky130_fd_pr__nfet_01v8_FAHZ66_3.G vss sky130_fd_pr__nfet_01v8 ad=0.145 pd=1.58 as=0.58 ps=6.32 w=0.5 l=0.15
X25 sky130_fd_pr__nfet_01v8_WAW2ZE_1.D2 vdd sky130_fd_pr__nfet_01v8_FAHZ66_3.G vss sky130_fd_pr__nfet_g5v0d10v5 ad=0.435 pd=3.29 as=0.435 ps=3.29 w=3 l=0.5
X26 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_0.C1 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_0.C1 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_0.C1 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_0.C1 sky130_fd_pr__pfet_01v8 ad=0.31 pd=2.62 as=1.86 ps=15.72 w=1 l=0.15
X27 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_0.C2 sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 sky130_fd_pr__pfet_01v8_4VMMWY_0.G2 vss sky130_fd_pr__nfet_01v8 ad=0.145 pd=1.58 as=0.145 ps=1.58 w=0.5 l=0.15
X28 vin_p sky130_fd_pr__nfet_01v8_FAHZ66_3.G sky130_fd_pr__nfet_01v8_UVMP7B_7.D vss sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.15
X29 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_1.C1 sky130_fd_pr__nfet_01v8_FAHZ66_3.D sky130_fd_pr__nfet_01v8_FAHZ66_3.G sky130_fd_pr__cap_mim_m3_1_6ZDEYE_1.C1 sky130_fd_pr__pfet_01v8 ad=0.31 pd=2.62 as=0.31 ps=2.62 w=1 l=0.15
X30 sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 vss sky130_fd_pr__nfet_01v8 ad=0.145 pd=1.58 as=0 ps=0 w=0.5 l=0.15
X31 vin_p sky130_fd_pr__nfet_01v8_FAHZ66_3.G vout_p vss sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.15
X32 sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 vdd sky130_fd_pr__nfet_g5v0d10v5_WBA3NL_1.D vss sky130_fd_pr__nfet_g5v0d10v5 ad=0.435 pd=3.29 as=0.435 ps=3.29 w=3 l=0.5
X33 sky130_fd_pr__nfet_g5v0d10v5_WBA3NL_1.D sky130_fd_pr__nfet_g5v0d10v5_WBA3NL_1.D sky130_fd_pr__nfet_g5v0d10v5_WBA3NL_1.D vss sky130_fd_pr__nfet_01v8 ad=0.165 pd=1.33 as=0.64 ps=5.28 w=1 l=0.15
X34 sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 vss sky130_fd_pr__nfet_g5v0d10v5 ad=0.435 pd=3.29 as=1.74 ps=13.16 w=3 l=0.5
X35 sky130_fd_pr__nfet_01v8_FAHZ66_3.D sky130_fd_pr__nfet_01v8_FAHZ66_3.D sky130_fd_pr__nfet_01v8_FAHZ66_3.D vdd sky130_fd_pr__pfet_01v8 ad=0.29 pd=2.58 as=0.87 ps=7.74 w=1 l=0.15
X36 vout_p sky130_fd_pr__nfet_01v8_FAHZ66_3.G vin_p vss sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.15
X37 vdd sky130_fd_pr__nfet_01v8_FAHZ66_3.G sky130_fd_pr__cap_mim_m3_1_6ZDEYE_1.C1 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_1.C1 sky130_fd_pr__pfet_01v8 ad=0.31 pd=2.62 as=0.31 ps=2.62 w=1 l=0.15
X38 sky130_fd_pr__nfet_01v8_FAHZ66_3.G sky130_fd_pr__nfet_01v8_FAHZ66_3.G sky130_fd_pr__nfet_01v8_FAHZ66_3.G vss sky130_fd_pr__nfet_01v8 ad=0.145 pd=1.58 as=0 ps=0 w=0.5 l=0.15
X39 vout_n sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 vin_n vss sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.15
X40 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_0.C2 clkb vss vss sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.15
X41 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_1.C1 sky130_fd_pr__nfet_01v8_UVMP7B_7.D sky130_fd_pr__cap_mim_m3_1 l=10 w=10
X42 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_0.C1 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_0.C1 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_0.C1 sky130_fd_pr__cap_mim_m3_1_6ZDEYE_0.C1 sky130_fd_pr__pfet_01v8 ad=0.31 pd=2.62 as=0 ps=0 w=1 l=0.15
X43 sky130_fd_pr__pfet_01v8_4VMMWY_0.G2 sky130_fd_pr__pfet_01v8_4VMMWY_0.G2 sky130_fd_pr__pfet_01v8_4VMMWY_0.G2 vdd sky130_fd_pr__pfet_01v8 ad=0.29 pd=2.58 as=0.87 ps=7.74 w=1 l=0.15
.ends

