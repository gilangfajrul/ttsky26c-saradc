* NGSPICE file created from tt_um_gilangfajrul_sar_adc.ext - technology: sky130A

.subckt tt_um_gilangfajrul_sar_adc clk rst_n ua[0] ua[1] ua[2] ua[3] ua[4] ua[5] ua[6]
+ ua[7] ui_in[0] ui_in[1] ui_in[2] ui_in[3] ui_in[4] ui_in[5] ui_in[6] ui_in[7] uio_in[0]
+ uio_in[1] uio_in[2] uio_in[3] uio_in[4] uio_in[5] uio_in[6] uio_in[7] uio_out[0]
+ uo_out[0] uo_out[1] uo_out[2] uo_out[3] uo_out[4] uo_out[5] uo_out[6] uo_out[7]
+ VDPWR VGND
X0 a_13480_29749# a_12565_29377# a_13133_29345# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0711 pd=0.755 as=0.0999 ps=0.985 w=0.36 l=0.15
X1 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X2 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X3 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X4 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X5 comparator_0.vip CDACnDriver_1.cdac_0.b5b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X6 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X7 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X8 a_19030_24635# a_19030_25081# a_19376_25037# VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.0715 ps=0.87 w=0.65 l=0.15
X9 a_15030_28939# a_14862_29193# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1095 pd=1.075 as=0.17887 ps=1.26 w=0.75 l=0.15
X10 a_13117_29915# a_12951_29915# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1664 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X11 sky130_fd_sc_hd__clkinv_16_0.Y clk VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0588 pd=0.7 as=0.06615 ps=0.735 w=0.42 l=0.15
X12 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X13 VDPWR sarlogic_0.clk1 a_12399_30465# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.1664 ps=1.8 w=0.64 l=0.15
X14 VGND VGND VGND VGND sky130_fd_pr__nfet_01v8 ad=0.165 pd=1.33 as=64.98465 ps=673.53003 w=1 l=0.15
X15 CDACnDriver_0.cdac_0.b1 sarlogic_0.D1b VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X16 VGND a_15679_30763# a_15613_30837# VGND sky130_fd_pr__nfet_01v8 ad=0.12495 pd=1.015 as=0.0669 ps=0.75 w=0.42 l=0.15
X17 VGND comparator_0.sky130_fd_sc_hd__nand2_1_2.Y a_14104_34619# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X18 CDACnDriver_0.cdac_0.b6a a_17271_24635# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.10675 ps=1.005 w=0.65 l=0.15
X19 VDPWR sarlogic_0.D5 a_10885_25081# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15575 pd=1.355 as=0.1113 ps=1.37 w=0.42 l=0.15
X20 a_11902_30825# sky130_fd_sc_hd__clkinv_16_0.Y VGND VGND sky130_fd_pr__nfet_01v8 ad=0.06405 pd=0.725 as=0.12495 ps=1.015 w=0.42 l=0.15
X21 a_18273_29371# sarlogic_0.D2 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0813 pd=0.83 as=0.1092 ps=1.36 w=0.42 l=0.15
X22 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X23 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X24 VGND a_17113_33915# a_17220_33915# VGND sky130_fd_pr__nfet_01v8 ad=0.097 pd=0.975 as=0.17225 ps=1.83 w=0.65 l=0.5
X25 a_15747_30281# a_15049_29915# a_15490_30027# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0684 pd=0.74 as=0.0989 ps=0.995 w=0.36 l=0.15
X26 a_15858_25037# sarlogic_0.clk1 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0715 pd=0.87 as=0.1365 ps=1.07 w=0.65 l=0.15
X27 comparator_0.vin CDACnDriver_0.cdac_0.b3 sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X28 CDACnDriver_0.cdac_0.b5b sarlogic_0.clk3 a_20253_24532# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X29 a_13177_29737# a_13133_29345# a_13011_29749# VGND sky130_fd_pr__nfet_01v8 ad=0.0441 pd=0.63 as=0.1401 ps=1.1 w=0.42 l=0.15
X30 VGND a_11723_30763# a_11657_30837# VGND sky130_fd_pr__nfet_01v8 ad=0.12495 pd=1.015 as=0.0669 ps=0.75 w=0.42 l=0.15
X31 a_17233_35527# a_17332_35349# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2173 pd=2.17 as=0.15575 ps=1.325 w=0.82 l=0.5
X32 VDPWR a_20607_29345# uo_out[1] VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X33 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X34 VGND a_20607_29345# uo_out[1] VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X35 CDACnDriver_1.cdac_0.b6b sarlogic_0.D6 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X36 sarlogic_0.D4b a_17365_29371# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.154 ps=1.335 w=1 l=0.15
X37 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X38 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.D0 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.D0 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.D0 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.D0 sky130_fd_pr__pfet_01v8 ad=0.31 pd=2.62 as=1.86 ps=15.72 w=1 l=0.15
X39 CDACnDriver_1.cdac_0.b5b sarlogic_0.clk3 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X40 VDPWR a_18783_29371# a_18951_29345# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.27 ps=2.54 w=1 l=0.15
X41 a_18484_32091# a_18085_32091# a_18358_32457# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0696 pd=0.765 as=0.0621 ps=0.705 w=0.36 l=0.15
X42 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X43 VGND a_18783_29371# a_18951_29345# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X44 uo_out[6] a_18951_31521# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X45 CDACnDriver_1.cdac_0.b1 sarlogic_0.clk7 a_5644_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X46 uo_out[6] a_18951_31521# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X47 VDPWR sky130_fd_sc_hd__nor3_2_0.A a_17042_36949# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.28 ps=2.56 w=1 l=0.15
X48 VDPWR a_13961_30459# sarlogic_0.D7b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.265 pd=2.53 as=0.135 ps=1.27 w=1 l=0.15
X49 VGND a_17863_30281# a_18031_30183# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X50 a_13219_29064# a_13063_28969# a_13364_29193# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07245 pd=0.765 as=0.1155 ps=0.97 w=0.42 l=0.15
X51 sarlogic_0.clk2 a_12827_31851# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.2087 ps=2.02 w=0.65 l=0.15
X52 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=0.59
X53 a_23766_24533# sarlogic_0.D2b VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X54 sky130_fd_sc_hd__clkinv_16_0.Y clk VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.14 pd=1.28 as=0.14 ps=1.28 w=1 l=0.15
X55 VGND a_19064_35349# a_18804_35349# VGND sky130_fd_pr__nfet_01v8 ad=0.10435 pd=1.01 as=0.169 ps=1.82 w=0.65 l=0.5
X56 a_12761_31925# a_11571_31553# a_12652_31925# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0669 pd=0.75 as=0.0711 ps=0.755 w=0.36 l=0.15
X57 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X58 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.G1 VDPWR bootstrap_0.sky130_fd_pr__nfet_g5v0d10v5_WBA3NL_5.S VGND sky130_fd_pr__nfet_g5v0d10v5 ad=0.435 pd=3.29 as=0.435 ps=3.29 w=3 l=0.5
X59 a_19921_31003# a_18931_31003# a_19795_31369# VGND sky130_fd_pr__special_nfet_01v8 ad=0.066 pd=0.745 as=0.0684 ps=0.74 w=0.36 l=0.15
X60 a_14207_29889# a_14032_29915# a_14386_29915# VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.06405 ps=0.725 w=0.42 l=0.15
X61 CDACnDriver_1.cdac_0.b5a a_10885_24635# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.15575 ps=1.355 w=1 l=0.15
X62 comparator_0.vin CDACnDriver_0.cdac_0.b1 sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X63 a_11793_24533# sarlogic_0.D6 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X64 VGND a_18031_31271# sarlogic_0.D1 VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X65 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=0.59
X66 VDPWR sarlogic_0.clk4 CDACnDriver_1.cdac_0.b4b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X67 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X68 comparator_0.vin CDACnDriver_0.cdac_0.b4a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X69 comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_1.D0 comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_1.D0 comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_1.D0 VGND sky130_fd_pr__nfet_01v8 ad=0.725 pd=5.58 as=4.4802 ps=34.94 w=2.5 l=0.2
X70 VGND sarlogic_0.D5b a_19030_25081# VGND sky130_fd_pr__nfet_01v8 ad=0.10675 pd=1.005 as=0.1113 ps=1.37 w=0.42 l=0.15
X71 a_14939_30837# a_14589_30465# a_14844_30825# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07245 pd=0.765 as=0.0651 ps=0.73 w=0.42 l=0.15
X72 a_17863_31369# a_16999_31003# a_17606_31115# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.1095 ps=1.075 w=0.42 l=0.15
X73 a_17564_29915# a_17165_29915# a_17438_30281# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0696 pd=0.765 as=0.0621 ps=0.705 w=0.36 l=0.15
X74 a_14973_31245# a_14755_31003# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.12915 pd=1.185 as=0.2184 ps=2.2 w=0.84 l=0.15
X75 a_17533_31369# a_16999_31003# a_17438_31369# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07665 pd=0.785 as=0.06825 ps=0.745 w=0.42 l=0.15
X76 a_13195_30977# sky130_fd_sc_hd__clkinv_16_0.Y VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.0819 ps=0.81 w=0.42 l=0.15
X77 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X78 a_15613_30837# a_14423_30465# a_15504_30837# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0669 pd=0.75 as=0.0711 ps=0.755 w=0.36 l=0.15
X79 a_16962_30433# a_16794_30459# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1095 pd=1.075 as=0.17887 ps=1.26 w=0.75 l=0.15
X80 VDPWR a_14973_31245# a_14863_31369# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07035 pd=0.755 as=0.1155 ps=0.97 w=0.42 l=0.15
X81 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=0.59
X82 a_12814_31547# a_11737_31553# a_12652_31925# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.0588 ps=0.7 w=0.42 l=0.15
X83 comparator_0.vin CDACnDriver_0.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X84 VGND a_18951_32359# a_18909_32091# VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.066 ps=0.745 w=0.42 l=0.15
X85 a_20253_24532# sarlogic_0.clk3 CDACnDriver_0.cdac_0.b5b VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X86 sarlogic_0.clk1 a_11723_30763# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.2087 ps=2.02 w=0.65 l=0.15
X87 VGND sky130_fd_sc_hd__clkinv_16_0.Y a_13177_29737# VGND sky130_fd_pr__nfet_01v8 ad=0.1346 pd=1.15 as=0.0441 ps=0.63 w=0.42 l=0.15
X88 VGND a_14403_24635# CDACnDriver_1.cdac_0.b7a VGND sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X89 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X90 VDPWR sarlogic_0.clk2 CDACnDriver_1.cdac_0.b6b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X91 comparator_0.vip CDACnDriver_1.cdac_0.b5b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X92 a_15049_29915# a_14883_29915# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1664 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X93 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X94 a_18085_32091# a_17919_32091# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X95 CDACnDriver_0.cdac_0.b5a a_19030_24635# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X96 VDPWR a_17606_31115# a_17533_31369# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.17887 pd=1.26 as=0.07665 ps=0.785 w=0.42 l=0.15
X97 a_13133_29345# a_12915_29749# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.12915 pd=1.185 as=0.2184 ps=2.2 w=0.84 l=0.15
X98 a_17863_30281# a_16999_29915# a_17606_30027# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.1095 ps=1.075 w=0.42 l=0.15
X99 comparator_0.von a_14104_34619# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X100 a_14660_31003# sarlogic_0.clk7 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.066 pd=0.745 as=0.2205 ps=1.89 w=0.42 l=0.15
X101 VDPWR a_12305_31521# a_12195_31547# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07035 pd=0.755 as=0.1155 ps=0.97 w=0.42 l=0.15
X102 a_17533_30281# a_16999_29915# a_17438_30281# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07665 pd=0.785 as=0.06825 ps=0.745 w=0.42 l=0.15
X103 a_12455_31003# a_11939_31003# a_12360_31003# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0594 pd=0.69 as=0.066 ps=0.745 w=0.36 l=0.15
X104 VDPWR sarlogic_0.D3b CDACnDriver_0.cdac_0.b3 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X105 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X106 a_13729_29915# a_13685_30157# a_13563_29915# VGND sky130_fd_pr__nfet_01v8 ad=0.0441 pd=0.63 as=0.1401 ps=1.1 w=0.42 l=0.15
X107 comparator_0.sky130_fd_sc_hd__nand2_1_1.A comparator_0.sky130_fd_sc_hd__nand2_1_2.B VDPWR VDPWR sky130_fd_pr__pfet_01v8 ad=0.1302 pd=1.46 as=0.1302 ps=1.46 w=0.42 l=0.15
X108 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X109 VDPWR a_18031_30183# sarlogic_0.D0 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X110 comparator_0.sky130_fd_sc_hd__nand2_1_2.B comparator_0.sky130_fd_sc_hd__nand2_1_2.B comparator_0.sky130_fd_sc_hd__nand2_1_2.B VDPWR sky130_fd_pr__pfet_01v8 ad=0.1302 pd=1.46 as=0.7812 ps=8.76 w=0.42 l=0.15
X111 uio_out[0] a_17220_33915# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.355 pd=2.71 as=0.15575 ps=1.325 w=1 l=0.15
X112 comparator_0.vip CDACnDriver_1.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X113 a_12652_31925# a_11737_31553# a_12305_31521# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0711 pd=0.755 as=0.0999 ps=0.985 w=0.36 l=0.15
X114 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X115 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=107.0159 ps=1.01942k w=0.87 l=0.59
X116 comparator_0.vip CDACnDriver_1.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X117 CDACnDriver_0.cdac_0.b2 sarlogic_0.clk6 a_23766_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X118 comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_1.D0 comparator_0.vip comparator_0.sky130_fd_pr__pfet_01v8_F3E8BM_0.D2 VGND sky130_fd_pr__nfet_01v8 ad=0.725 pd=5.58 as=0.725 ps=5.58 w=2.5 l=0.2
X119 comparator_0.vip CDACnDriver_1.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X120 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.D0 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.D0 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.D0 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.D0 sky130_fd_pr__pfet_01v8 ad=0.31 pd=2.62 as=0 ps=0 w=1 l=0.15
X121 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X122 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X123 CDACnDriver_0.cdac_0.b7b sarlogic_0.clk1 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X124 sarlogic_0.D6 a_15455_29095# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X125 VDPWR a_17606_30027# a_17533_30281# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.17887 pd=1.26 as=0.07665 ps=0.785 w=0.42 l=0.15
X126 a_16521_30465# a_16355_30465# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X127 VGND sarlogic_0.D7b a_16735_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X128 VGND a_18561_28827# sarlogic_0.D2b VGND sky130_fd_pr__nfet_01v8 ad=0.17225 pd=1.83 as=0.08775 ps=0.92 w=0.65 l=0.15
X129 a_15413_28827# a_14423_28827# a_15287_29193# VGND sky130_fd_pr__special_nfet_01v8 ad=0.066 pd=0.745 as=0.0684 ps=0.74 w=0.36 l=0.15
X130 CDACnDriver_0.cdac_0.b5a a_19030_24635# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.10675 ps=1.005 w=0.65 l=0.15
X131 sarlogic_0.D1b a_18561_31003# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.154 ps=1.335 w=1 l=0.15
X132 VDPWR a_16445_29915# sarlogic_0.D5b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.265 pd=2.53 as=0.135 ps=1.27 w=1 l=0.15
X133 VGND comparator_0.sky130_fd_sc_hd__nand2_1_1.Y a_14656_34619# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X134 CDACnDriver_1.cdac_0.b6b sarlogic_0.clk2 a_11793_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X135 a_12781_28827# a_12746_29079# a_12459_28801# VGND sky130_fd_pr__nfet_01v8 ad=0.06405 pd=0.725 as=0.1092 ps=1.36 w=0.42 l=0.15
X136 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X137 VDPWR a_15157_30433# a_15047_30459# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07035 pd=0.755 as=0.1155 ps=0.97 w=0.42 l=0.15
X138 VGND clk sky130_fd_sc_hd__clkinv_16_0.Y VGND sky130_fd_pr__nfet_01v8 ad=0.0588 pd=0.7 as=0.0588 ps=0.7 w=0.42 l=0.15
X139 a_13655_29675# sky130_fd_sc_hd__clkinv_16_0.Y VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.0819 ps=0.81 w=0.42 l=0.15
X140 a_11710_30459# a_10633_30465# a_11548_30837# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.0588 ps=0.7 w=0.42 l=0.15
X141 delay_control_0.sky130_fd_sc_hd__clkdlybuf4s50_1_6.X a_16793_34735# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.355 pd=2.71 as=0.15575 ps=1.325 w=1 l=0.15
X142 comparator_0.vip CDACnDriver_1.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X143 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X144 VDPWR a_15985_28827# sarlogic_0.D6b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.265 pd=2.53 as=0.135 ps=1.27 w=1 l=0.15
X145 CDACnDriver_1.cdac_0.b4b sarlogic_0.clk4 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X146 comparator_0.vin CDACnDriver_0.cdac_0.b5b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X147 VDPWR a_15512_24635# CDACnDriver_0.cdac_0.b7a VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.185 pd=1.37 as=0.15 ps=1.3 w=1 l=0.15
X148 a_20182_30433# a_20014_30459# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1095 pd=1.075 as=0.17887 ps=1.26 w=0.75 l=0.15
X149 sky130_fd_sc_hd__clkinv_16_0.Y clk VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.14 pd=1.28 as=0.14 ps=1.28 w=1 l=0.15
X150 a_15504_30837# a_14589_30465# a_15157_30433# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0711 pd=0.755 as=0.0999 ps=0.985 w=0.36 l=0.15
X151 a_17165_29915# a_16999_29915# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X152 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X153 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.G1 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.G1 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.G1 VGND sky130_fd_pr__nfet_g5v0d10v5 ad=0.435 pd=3.29 as=1.74 ps=13.16 w=3 l=0.5
X154 a_22012_24525# sarlogic_0.clk4 CDACnDriver_0.cdac_0.b4b VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X155 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X156 VDPWR a_11201_30433# a_11091_30459# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07035 pd=0.755 as=0.1155 ps=0.97 w=0.42 l=0.15
X157 a_12349_31913# a_12305_31521# a_12183_31925# VGND sky130_fd_pr__nfet_01v8 ad=0.0441 pd=0.63 as=0.1401 ps=1.1 w=0.42 l=0.15
X158 VGND sarlogic_0.D3 a_7398_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X159 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X160 a_13364_29193# a_13150_29193# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1155 pd=0.97 as=0.07035 ps=0.755 w=0.42 l=0.15
X161 comparator_0.vin CDACnDriver_0.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X162 a_13023_29371# sky130_fd_sc_hd__clkinv_16_0.Y VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1092 pd=1.36 as=0.07035 ps=0.755 w=0.42 l=0.15
X163 sarlogic_0.D1 a_18031_31271# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X164 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.D0 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.D0 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.D0 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.D0 sky130_fd_pr__pfet_01v8 ad=0.31 pd=2.62 as=1.86 ps=15.72 w=1 l=0.15
X165 sarlogic_0.D4 a_16835_29345# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X166 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=4.73
X167 sarlogic_0.D4 a_16835_29345# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X168 a_13263_30459# a_12565_30465# a_13006_30433# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0684 pd=0.74 as=0.0989 ps=0.995 w=0.36 l=0.15
X169 VGND a_17606_31115# a_17564_31003# VGND sky130_fd_pr__nfet_01v8 ad=0.12095 pd=1.085 as=0.0696 ps=0.765 w=0.42 l=0.15
X170 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X171 a_15371_29193# a_14589_28827# a_15287_29193# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0882 pd=0.84 as=0.0567 ps=0.69 w=0.42 l=0.15
X172 VGND sarlogic_0.valid a_11939_31003# VGND sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.1092 ps=1.36 w=0.42 l=0.15
X173 a_16686_34735# a_16430_34735# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.10435 ps=1.01 w=0.65 l=0.5
X174 CDACnDriver_1.cdac_0.b2 sarlogic_0.clk6 a_6521_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X175 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X176 CDACnDriver_0.cdac_0.b3 sarlogic_0.D3b VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X177 a_10911_25037# sarlogic_0.clk3 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0715 pd=0.87 as=0.1365 ps=1.07 w=0.65 l=0.15
X178 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X179 VDPWR sarlogic_0.D1b CDACnDriver_0.cdac_0.b1 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X180 VDPWR a_17863_29193# a_18031_29095# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.27 ps=2.54 w=1 l=0.15
X181 a_8275_24525# sarlogic_0.D4 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X182 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X183 comparator_0.vin CDACnDriver_0.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X184 VDPWR a_17917_30459# sarlogic_0.D3b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.265 pd=2.53 as=0.135 ps=1.27 w=1 l=0.15
X185 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=1.97
X186 VDPWR sarlogic_0.clk1 CDACnDriver_0.cdac_0.b7b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X187 a_13150_29193# a_13063_28969# a_12746_29079# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.12915 pd=1.185 as=0.0588 ps=0.7 w=0.42 l=0.15
X188 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X189 a_16368_29749# a_15969_29377# a_16242_29371# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0696 pd=0.765 as=0.0621 ps=0.705 w=0.36 l=0.15
X190 CDACnDriver_1.cdac_0.b7b sarlogic_0.clk1 a_13552_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X191 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=0.59
X192 a_19370_31369# a_19097_31003# a_19285_31003# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.06825 pd=0.745 as=0.05775 ps=0.695 w=0.42 l=0.15
X193 a_18273_31547# sarlogic_0.D6 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0813 pd=0.83 as=0.1092 ps=1.36 w=0.42 l=0.15
X194 a_18867_32457# a_18085_32091# a_18783_32457# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0882 pd=0.84 as=0.0567 ps=0.69 w=0.42 l=0.15
X195 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X196 CDACnDriver_1.cdac_0.b1 sarlogic_0.clk7 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X197 a_16735_24533# sarlogic_0.clk1 CDACnDriver_0.cdac_0.b7b VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X198 a_14863_31369# a_14239_31003# a_14755_31003# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1155 pd=0.97 as=0.07245 ps=0.765 w=0.42 l=0.15
X199 a_11245_30825# a_11201_30433# a_11079_30837# VGND sky130_fd_pr__nfet_01v8 ad=0.0441 pd=0.63 as=0.1401 ps=1.1 w=0.42 l=0.15
X200 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X201 VDPWR sarlogic_0.D7 CDACnDriver_1.cdac_0.b7b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X202 VGND sky130_fd_sc_hd__clkinv_16_0.Y bootstrap_0.sky130_fd_pr__nfet_01v8_UVMP7B_3.D VGND sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.15
X203 sarlogic_0.D0 a_18031_30183# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X204 bootstrap_0.sky130_fd_pr__pfet_01v8_W93KHH_3.D clk VDPWR VDPWR sky130_fd_pr__pfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.15
X205 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=0.59
X206 a_20439_30459# a_19741_30465# a_20182_30433# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0684 pd=0.74 as=0.0989 ps=0.995 w=0.36 l=0.15
X207 a_20014_30459# a_19575_30465# a_19929_30459# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0621 pd=0.705 as=0.0813 ps=0.83 w=0.36 l=0.15
X208 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=4.73
X209 uo_out[0] a_20607_29095# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X210 comparator_0.vin CDACnDriver_0.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X211 sarlogic_0.D6b a_15985_28827# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.10025 ps=0.985 w=0.65 l=0.15
X212 VDPWR a_15287_29193# a_15455_29095# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.27 ps=2.54 w=1 l=0.15
X213 a_13023_29371# a_12399_29377# a_12915_29749# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1155 pd=0.97 as=0.07245 ps=0.765 w=0.42 l=0.15
X214 VDPWR a_17387_30433# a_17303_30459# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1113 pd=1.37 as=0.0882 ps=0.84 w=0.42 l=0.15
X215 bootstrap_0.sky130_fd_pr__nfet_01v8_UVMP7B_7.D clk bootstrap_0.sky130_fd_pr__pfet_01v8_W93KHH_2.D VGND sky130_fd_pr__nfet_01v8 ad=0.145 pd=1.58 as=0.145 ps=1.58 w=0.5 l=0.15
X216 comparator_0.sky130_fd_pr__pfet_01v8_F3E8BM_0.D2 comparator_0.sky130_fd_pr__pfet_01v8_F3E8BM_0.D2 comparator_0.sky130_fd_pr__pfet_01v8_F3E8BM_0.D2 VGND sky130_fd_pr__nfet_01v8 ad=0.1302 pd=1.46 as=3.1688 ps=25.28 w=0.42 l=0.15
X217 a_19370_30281# a_19097_29915# a_19285_29915# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.06825 pd=0.745 as=0.05775 ps=0.695 w=0.42 l=0.15
X218 CDACnDriver_0.cdac_0.b4b sarlogic_0.clk4 a_22012_24525# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X219 a_7398_24533# sarlogic_0.clk5 CDACnDriver_1.cdac_0.b3 VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X220 comparator_0.vip CDACnDriver_1.cdac_0.b5a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X221 a_18526_31521# a_18358_31547# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0989 pd=0.995 as=0.12095 ps=1.085 w=0.64 l=0.15
X222 VGND clk sky130_fd_sc_hd__clkinv_16_0.Y VGND sky130_fd_pr__nfet_01v8 ad=0.0588 pd=0.7 as=0.0588 ps=0.7 w=0.42 l=0.15
X223 comparator_0.vip CDACnDriver_1.cdac_0.b5a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X224 a_17233_35527# a_17332_35349# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.17225 pd=1.83 as=0.097 ps=0.975 w=0.65 l=0.5
X225 a_15512_24635# sarlogic_0.clk1 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.185 ps=1.37 w=1 l=0.15
X226 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=0.59
X227 VDPWR a_13431_30433# a_13347_30459# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1113 pd=1.37 as=0.0882 ps=0.84 w=0.42 l=0.15
X228 VDPWR uio_out[0] a_17919_29377# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.1664 ps=1.8 w=0.64 l=0.15
X229 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.G1 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.G1 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.G1 VGND sky130_fd_pr__nfet_01v8 ad=0.145 pd=1.58 as=0.58 ps=6.32 w=0.5 l=0.15
X230 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X231 comparator_0.vip CDACnDriver_1.cdac_0.b4b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X232 VGND sarlogic_0.clk1 a_12399_30465# VGND sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.1092 ps=1.36 w=0.42 l=0.15
X233 a_11992_31913# sarlogic_0.clk1 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0651 pd=0.73 as=0.1092 ps=1.36 w=0.42 l=0.15
X234 comparator_0.vip CDACnDriver_1.cdac_0.b3 sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X235 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X236 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=4.73
X237 a_6521_24533# sarlogic_0.clk6 CDACnDriver_1.cdac_0.b2 VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X238 VDPWR sarlogic_0.valid a_16430_34735# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1701 pd=1.36 as=0.27 ps=2.54 w=1 l=0.15
X239 CDACnDriver_0.cdac_0.b6b sarlogic_0.clk2 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X240 CDACnDriver_0.cdac_0.b1 sarlogic_0.clk7 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X241 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X242 VDPWR sarlogic_0.valid a_12951_29915# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.1664 ps=1.8 w=0.64 l=0.15
X243 VGND a_13195_30977# sarlogic_0.clk3 VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X244 a_15047_30459# a_14423_30465# a_14939_30837# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1155 pd=0.97 as=0.07245 ps=0.765 w=0.42 l=0.15
X245 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X246 a_18783_29371# a_17919_29377# a_18526_29345# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.1095 ps=1.075 w=0.42 l=0.15
X247 VDPWR a_15512_25081# a_15512_24635# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X248 CDACnDriver_0.cdac_0.b4b sarlogic_0.clk4 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X249 VGND sarlogic_0.D6b a_18494_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X250 ua[1] bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 comparator_0.vin VGND sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.15
X251 a_18453_29371# a_17919_29377# a_18358_29371# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07665 pd=0.785 as=0.06825 ps=0.745 w=0.42 l=0.15
X252 a_18867_31547# a_18085_31553# a_18783_31547# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0882 pd=0.84 as=0.0567 ps=0.69 w=0.42 l=0.15
X253 CDACnDriver_0.cdac_0.b1 sarlogic_0.clk7 a_24643_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X254 comparator_0.sky130_fd_sc_hd__nand2_1_1.Y comparator_0.sky130_fd_sc_hd__nand2_1_1.A a_14902_35321# VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X255 VDPWR a_14032_29915# a_14207_29889# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1134 pd=1.38 as=0.0567 ps=0.69 w=0.42 l=0.15
X256 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X257 VDPWR a_16667_29371# a_16835_29345# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.27 ps=2.54 w=1 l=0.15
X258 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X259 VGND a_16667_29371# a_16835_29345# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X260 a_15417_30281# a_14883_29915# a_15322_30281# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07665 pd=0.785 as=0.06825 ps=0.745 w=0.42 l=0.15
X261 comparator_0.vip CDACnDriver_1.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X262 VDPWR a_16686_34735# a_16793_34735# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15575 pd=1.325 as=0.2173 ps=2.17 w=0.82 l=0.5
X263 comparator_0.vip CDACnDriver_1.cdac_0.b3 sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X264 a_13552_24533# sarlogic_0.clk1 CDACnDriver_1.cdac_0.b7b VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X265 a_15287_29193# a_14423_28827# a_15030_28939# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.1095 ps=1.075 w=0.42 l=0.15
X266 VDPWR sarlogic_0.clk7 CDACnDriver_1.cdac_0.b1 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X267 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X268 VDPWR a_17271_24635# CDACnDriver_0.cdac_0.b6a VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.185 pd=1.37 as=0.15 ps=1.3 w=1 l=0.15
X269 VDPWR a_15915_30183# sarlogic_0.D5 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X270 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=4.73
X271 VGND a_14104_34619# comparator_0.von VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X272 comparator_0.vin CDACnDriver_0.cdac_0.b5b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X273 VDPWR a_20607_30433# a_20523_30459# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1113 pd=1.37 as=0.0882 ps=0.84 w=0.42 l=0.15
X274 VDPWR clk sky130_fd_sc_hd__clkinv_16_0.Y VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.14 pd=1.28 as=0.14 ps=1.28 w=1 l=0.15
X275 CDACnDriver_1.cdac_0.b7b sarlogic_0.D7 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X276 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X277 VDPWR a_18526_29345# a_18453_29371# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.17887 pd=1.26 as=0.07665 ps=0.785 w=0.42 l=0.15
X278 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=1.05
X279 uo_out[1] a_20607_29345# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X280 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X281 uo_out[1] a_20607_29345# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X282 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X283 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X284 sarlogic_0.D3b a_17917_30459# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.154 ps=1.335 w=1 l=0.15
X285 comparator_0.vin CDACnDriver_0.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X286 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X287 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X288 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X289 a_13150_29193# a_13024_29095# a_12746_29079# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0999 pd=0.985 as=0.0711 ps=0.755 w=0.36 l=0.15
X290 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=0.59
X291 a_17606_30027# a_17438_30281# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1095 pd=1.075 as=0.17887 ps=1.26 w=0.75 l=0.15
X292 VDPWR a_20182_30433# a_20109_30459# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.17887 pd=1.26 as=0.07665 ps=0.785 w=0.42 l=0.15
X293 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X294 a_10888_30825# sarlogic_0.x1.D VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0651 pd=0.73 as=0.1092 ps=1.36 w=0.42 l=0.15
X295 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=0.59
X296 a_20565_29749# a_19575_29377# a_20439_29371# VGND sky130_fd_pr__special_nfet_01v8 ad=0.066 pd=0.745 as=0.0684 ps=0.74 w=0.36 l=0.15
X297 VDPWR a_18894_34735# a_19001_34735# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15575 pd=1.325 as=0.2173 ps=2.17 w=0.82 l=0.5
X298 a_16794_30459# a_16521_30465# a_16709_30459# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.06825 pd=0.745 as=0.05775 ps=0.695 w=0.42 l=0.15
X299 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=4.73
X300 a_12673_31245# a_12455_31003# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0999 pd=0.985 as=0.1346 ps=1.15 w=0.64 l=0.15
X301 VGND a_18951_29345# uo_out[2] VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X302 sarlogic_0.D7b a_13961_30459# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.154 ps=1.335 w=1 l=0.15
X303 a_12551_31003# a_12105_31003# a_12455_31003# VGND sky130_fd_pr__special_nfet_01v8 ad=0.1401 pd=1.1 as=0.0594 ps=0.69 w=0.36 l=0.15
X304 comparator_0.vip CDACnDriver_1.cdac_0.b5a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X305 VGND a_20607_29345# a_20565_29749# VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.066 ps=0.745 w=0.42 l=0.15
X306 a_15237_29915# sarlogic_0.comp_op VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0813 pd=0.83 as=0.1092 ps=1.36 w=0.42 l=0.15
X307 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X308 a_19921_29915# a_18931_29915# a_19795_30281# VGND sky130_fd_pr__special_nfet_01v8 ad=0.066 pd=0.745 as=0.0684 ps=0.74 w=0.36 l=0.15
X309 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X310 a_12670_25037# sarlogic_0.clk2 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0715 pd=0.87 as=0.1365 ps=1.07 w=0.65 l=0.15
X311 a_20140_28827# a_19741_28827# a_20014_29193# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0696 pd=0.765 as=0.0621 ps=0.705 w=0.36 l=0.15
X312 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=2.89
X313 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X314 VGND sarlogic_0.D4 a_9126_25081# VGND sky130_fd_pr__nfet_01v8 ad=0.10675 pd=1.005 as=0.1113 ps=1.37 w=0.42 l=0.15
X315 VDPWR a_20439_29193# a_20607_29095# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.27 ps=2.54 w=1 l=0.15
X316 VGND a_18031_30183# sarlogic_0.D0 VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X317 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=0.59
X318 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X319 a_19795_31369# a_19097_31003# a_19538_31115# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0684 pd=0.74 as=0.0989 ps=0.995 w=0.36 l=0.15
X320 a_12563_31369# sky130_fd_sc_hd__clkinv_16_0.Y VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1092 pd=1.36 as=0.07035 ps=0.755 w=0.42 l=0.15
X321 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X322 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=0.59
X323 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=0.59
X324 VDPWR sarlogic_0.clk2 CDACnDriver_0.cdac_0.b6b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X325 comparator_0.sky130_fd_sc_hd__nand2_1_1.A comparator_0.sky130_fd_sc_hd__nand2_1_1.A comparator_0.sky130_fd_sc_hd__nand2_1_1.A VDPWR sky130_fd_pr__pfet_01v8 ad=0.1302 pd=1.46 as=0.7812 ps=8.76 w=0.42 l=0.15
X326 VDPWR sky130_fd_sc_hd__nor3_2_0.Y comparator_0.sky130_fd_sc_hd__nand2_1_2.B VDPWR sky130_fd_pr__pfet_01v8 ad=0.1302 pd=1.46 as=0.1302 ps=1.46 w=0.42 l=0.15
X327 CDACnDriver_1.cdac_0.b5b sarlogic_0.clk3 a_10034_24532# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X328 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=0.59
X329 VDPWR a_19963_31271# a_19879_31369# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1113 pd=1.37 as=0.0882 ps=0.84 w=0.42 l=0.15
X330 a_18494_24533# sarlogic_0.clk2 CDACnDriver_0.cdac_0.b6b VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X331 a_15237_29915# sarlogic_0.comp_op VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.05775 pd=0.695 as=0.1092 ps=1.36 w=0.42 l=0.15
X332 a_24643_24533# sarlogic_0.clk7 CDACnDriver_0.cdac_0.b1 VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X333 CDACnDriver_1.cdac_0.b6a a_12644_24635# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15 pd=1.3 as=0.135 ps=1.27 w=1 l=0.15
X334 a_12105_31003# a_11939_31003# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X335 a_14386_29915# sky130_fd_sc_hd__clkinv_16_0.Y VGND VGND sky130_fd_pr__nfet_01v8 ad=0.06405 pd=0.725 as=0.12495 ps=1.015 w=0.42 l=0.15
X336 VDPWR sky130_fd_sc_hd__nor3_2_0.Y comparator_0.sky130_fd_pr__pfet_01v8_F3E8BM_0.D2 VDPWR sky130_fd_pr__pfet_01v8 ad=0.0693 pd=0.75 as=0.0693 ps=0.75 w=0.42 l=0.15
X337 VDPWR sarlogic_0.valid a_12399_29377# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.1664 ps=1.8 w=0.64 l=0.15
X338 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=4.73
X339 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X340 a_15429_31003# a_14239_31003# a_15320_31003# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0669 pd=0.75 as=0.0711 ps=0.755 w=0.36 l=0.15
X341 CDACnDriver_1.cdac_0.b2 sarlogic_0.D2 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X342 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=0.59
X343 a_15679_30763# a_15504_30837# a_15858_30825# VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.06405 ps=0.725 w=0.42 l=0.15
X344 VGND a_14207_29889# a_14141_29915# VGND sky130_fd_pr__nfet_01v8 ad=0.12495 pd=1.015 as=0.0669 ps=0.75 w=0.42 l=0.15
X345 VGND clk sky130_fd_sc_hd__nor3_2_0.Y VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X346 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=4.73
X347 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=0.59
X348 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=0.59
X349 VDPWR a_19963_30183# a_19879_30281# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1113 pd=1.37 as=0.0882 ps=0.84 w=0.42 l=0.15
X350 a_13006_30433# a_12838_30459# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0989 pd=0.995 as=0.12095 ps=1.085 w=0.64 l=0.15
X351 VDPWR a_17233_35527# sky130_fd_sc_hd__nor3_2_0.A VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15575 pd=1.325 as=0.355 ps=2.71 w=1 l=0.15
X352 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X353 a_12746_29079# a_13063_28969# a_13021_28827# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0711 pd=0.755 as=0.0669 ps=0.75 w=0.36 l=0.15
X354 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X355 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X356 VDPWR sarlogic_0.D3b CDACnDriver_0.cdac_0.b3 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X357 sky130_fd_sc_hd__nor3_2_0.Y sky130_fd_sc_hd__nor3_2_0.B VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X358 a_14207_29889# sky130_fd_sc_hd__clkinv_16_0.Y VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.0819 ps=0.81 w=0.42 l=0.15
X359 a_16794_30459# a_16355_30465# a_16709_30459# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0621 pd=0.705 as=0.0813 ps=0.83 w=0.36 l=0.15
X360 a_17271_24635# sarlogic_0.clk2 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.185 ps=1.37 w=1 l=0.15
X361 a_12565_30465# a_12399_30465# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1664 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X362 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X363 VGND a_18526_32203# a_18484_32091# VGND sky130_fd_pr__nfet_01v8 ad=0.12095 pd=1.085 as=0.0696 ps=0.765 w=0.42 l=0.15
X364 VGND a_20607_29095# a_20565_28827# VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.066 ps=0.745 w=0.42 l=0.15
X365 VDPWR a_17863_31369# a_18031_31271# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.27 ps=2.54 w=1 l=0.15
X366 comparator_0.sky130_fd_pr__pfet_01v8_F3E8BM_0.D2 comparator_0.vin comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_0.S0 VGND sky130_fd_pr__nfet_01v8 ad=0.725 pd=5.58 as=0.725 ps=5.58 w=2.5 l=0.2
X367 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X368 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X369 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=0.59
X370 VDPWR a_20439_29371# a_20607_29345# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.27 ps=2.54 w=1 l=0.15
X371 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=4.73
X372 VGND a_20439_29371# a_20607_29345# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X373 a_13589_29749# a_12399_29377# a_13480_29749# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0669 pd=0.75 as=0.0711 ps=0.755 w=0.36 l=0.15
X374 a_13389_30837# a_12399_30465# a_13263_30459# VGND sky130_fd_pr__special_nfet_01v8 ad=0.066 pd=0.745 as=0.0684 ps=0.74 w=0.36 l=0.15
X375 comparator_0.vin CDACnDriver_0.cdac_0.b5a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X376 sarlogic_0.clk6 a_14207_29889# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.2087 ps=2.02 w=0.65 l=0.15
X377 VDPWR a_17271_25081# a_17271_24635# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X378 a_15287_29193# a_14589_28827# a_15030_28939# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0684 pd=0.74 as=0.0989 ps=0.995 w=0.36 l=0.15
X379 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=4.73
X380 VDPWR a_16835_29345# a_17365_29371# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.154 pd=1.335 as=0.1664 ps=1.8 w=0.64 l=0.15
X381 VDPWR EOC_delay_0.sky130_fd_sc_hd__clkdlybuf4s50_1_1.X a_16857_33915# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1701 pd=1.36 as=0.27 ps=2.54 w=1 l=0.15
X382 sarlogic_0.D2b a_18561_28827# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.10025 ps=0.985 w=0.65 l=0.15
X383 VGND a_13431_30433# a_13389_30837# VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.066 ps=0.745 w=0.42 l=0.15
X384 VDPWR clk sky130_fd_sc_hd__clkinv_16_0.Y VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.14 pd=1.28 as=0.14 ps=1.28 w=1 l=0.15
X385 comparator_0.vip CDACnDriver_1.cdac_0.b5b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X386 VDPWR sarlogic_0.D6b a_17271_25081# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15575 pd=1.355 as=0.1113 ps=1.37 w=0.42 l=0.15
X387 a_20253_24532# sarlogic_0.D5b VGND VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X388 a_20439_29371# a_19575_29377# a_20182_29345# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.1095 ps=1.075 w=0.42 l=0.15
X389 a_18085_29377# a_17919_29377# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1664 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X390 VDPWR clk sky130_fd_sc_hd__clkinv_16_0.Y VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1575 pd=1.315 as=0.2175 ps=1.435 w=1 l=0.15
X391 a_20182_30433# a_20014_30459# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0989 pd=0.995 as=0.12095 ps=1.085 w=0.64 l=0.15
X392 CDACnDriver_0.cdac_0.b7a a_15512_24635# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.15575 ps=1.355 w=1 l=0.15
X393 uo_out[2] a_18951_29345# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X394 a_10034_24532# sarlogic_0.clk3 CDACnDriver_1.cdac_0.b5b VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X395 uo_out[2] a_18951_29345# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X396 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X397 VDPWR a_18951_31521# uo_out[6] VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X398 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X399 comparator_0.vin CDACnDriver_0.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X400 VDPWR a_12644_24635# CDACnDriver_1.cdac_0.b6a VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X401 a_12455_31003# a_12105_31003# a_12360_31003# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07245 pd=0.765 as=0.0651 ps=0.73 w=0.42 l=0.15
X402 VDPWR a_15288_34593# sarlogic_0.comp_op VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X403 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=4.73
X404 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X405 a_18783_29371# a_18085_29377# a_18526_29345# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0684 pd=0.74 as=0.0989 ps=0.995 w=0.36 l=0.15
X406 VGND a_18561_31003# sarlogic_0.D1b VGND sky130_fd_pr__nfet_01v8 ad=0.17225 pd=1.83 as=0.08775 ps=0.92 w=0.65 l=0.15
X407 sarlogic_0.D0 a_18031_30183# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X408 VGND a_12827_31851# sarlogic_0.clk2 VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X409 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=4.73
X410 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X411 comparator_0.vip CDACnDriver_1.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X412 VDPWR sarlogic_0.clk6 CDACnDriver_1.cdac_0.b2 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X413 comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_0.S0 comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_0.S0 comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_0.S0 VGND sky130_fd_pr__nfet_01v8 ad=0.725 pd=5.58 as=4.4802 ps=34.94 w=2.5 l=0.2
X414 a_18894_34735# a_18638_34735# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.10435 ps=1.01 w=0.65 l=0.5
X415 VGND a_17606_30027# a_17564_29915# VGND sky130_fd_pr__nfet_01v8 ad=0.12095 pd=1.085 as=0.0696 ps=0.765 w=0.42 l=0.15
X416 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X417 sky130_fd_sc_hd__nor3_2_0.Y clk VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X418 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X419 VDPWR sarlogic_0.D4 CDACnDriver_1.cdac_0.b4b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X420 VDPWR uio_out[0] a_17919_31553# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.1664 ps=1.8 w=0.64 l=0.15
X421 VDPWR sarlogic_0.D4b a_20789_25081# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15575 pd=1.355 as=0.1113 ps=1.37 w=0.42 l=0.15
X422 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X423 a_13782_29193# a_13024_29095# a_13219_29064# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0651 pd=0.73 as=0.07245 ps=0.765 w=0.42 l=0.15
X424 CDACnDriver_0.cdac_0.b3 sarlogic_0.clk5 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X425 a_13020_31003# a_11939_31003# a_12673_31245# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0588 pd=0.7 as=0.12915 ps=1.185 w=0.42 l=0.15
X426 VGND sky130_fd_sc_hd__nor3_2_0.A sky130_fd_sc_hd__nor3_2_0.Y VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X427 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X428 VGND a_15512_24635# CDACnDriver_0.cdac_0.b7a VGND sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X429 a_8275_24525# sarlogic_0.clk4 CDACnDriver_1.cdac_0.b4b VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X430 comparator_0.vip CDACnDriver_1.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X431 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=1.97
X432 CDACnDriver_0.cdac_0.b3 sarlogic_0.clk5 a_22889_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X433 comparator_0.vin CDACnDriver_0.cdac_0.b5b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X434 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=1.97
X435 a_17863_29193# a_16999_28827# a_17606_28939# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.1095 ps=1.075 w=0.42 l=0.15
X436 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.G1 bootstrap_0.sky130_fd_pr__pfet_01v8_W93KHH_2.D bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.D0 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.D0 sky130_fd_pr__pfet_01v8 ad=0.31 pd=2.62 as=0.31 ps=2.62 w=1 l=0.15
X437 CDACnDriver_1.cdac_0.b4b sarlogic_0.D4 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X438 a_17533_29193# a_16999_28827# a_17438_29193# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07665 pd=0.785 as=0.06825 ps=0.745 w=0.42 l=0.15
X439 a_17947_31369# a_17165_31003# a_17863_31369# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0882 pd=0.84 as=0.0567 ps=0.69 w=0.42 l=0.15
X440 VDPWR a_13020_31003# a_13195_30977# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1134 pd=1.38 as=0.0567 ps=0.69 w=0.42 l=0.15
X441 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X442 VDPWR a_18031_29095# sarlogic_0.D2 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X443 a_13834_29737# sky130_fd_sc_hd__clkinv_16_0.Y VGND VGND sky130_fd_pr__nfet_01v8 ad=0.06405 pd=0.725 as=0.12495 ps=1.015 w=0.42 l=0.15
X444 comparator_0.vip CDACnDriver_1.cdac_0.b5b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X445 a_19929_30459# sarlogic_0.D3 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0813 pd=0.83 as=0.1092 ps=1.36 w=0.42 l=0.15
X446 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X447 VDPWR a_12827_31851# a_12814_31547# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0819 pd=0.81 as=0.0567 ps=0.69 w=0.42 l=0.15
X448 sky130_fd_sc_hd__clkinv_16_0.Y clk VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.14 pd=1.28 as=0.14 ps=1.28 w=1 l=0.15
X449 VDPWR sarlogic_0.D7 CDACnDriver_1.cdac_0.b7b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X450 comparator_0.vin CDACnDriver_0.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X451 VDPWR uio_out[0] a_18931_31003# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.1664 ps=1.8 w=0.64 l=0.15
X452 VGND a_11723_30763# sarlogic_0.clk1 VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X453 a_18328_35349# delay_control_0.sky130_fd_sc_hd__clkdlybuf4s50_1_5.X VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1134 pd=1.38 as=0.10435 ps=1.01 w=0.42 l=0.15
X454 VDPWR a_17606_28939# a_17533_29193# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.17887 pd=1.26 as=0.07665 ps=0.785 w=0.42 l=0.15
X455 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=1.97
X456 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X457 VGND sarlogic_0.D5b a_20253_24532# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X458 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X459 VDPWR sarlogic_0.valid a_11571_31553# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.1664 ps=1.8 w=0.64 l=0.15
X460 a_17947_30281# a_17165_29915# a_17863_30281# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0882 pd=0.84 as=0.0567 ps=0.69 w=0.42 l=0.15
X461 VGND a_15915_30183# sarlogic_0.D5 VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X462 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X463 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.D0 bootstrap_0.sky130_fd_pr__nfet_01v8_UVMP7B_7.D sky130_fd_pr__cap_mim_m3_1 l=10 w=10
X464 VGND VGND VGND VGND sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0 ps=0 w=1 l=0.15
X465 a_19929_29371# sarlogic_0.D1 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.05775 pd=0.695 as=0.1092 ps=1.36 w=0.42 l=0.15
X466 a_13457_28827# sky130_fd_sc_hd__clkinv_16_0.Y VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0441 pd=0.63 as=0.1346 ps=1.15 w=0.42 l=0.15
X467 VGND clk sky130_fd_sc_hd__clkinv_16_0.Y VGND sky130_fd_pr__nfet_01v8 ad=0.0588 pd=0.7 as=0.0588 ps=0.7 w=0.42 l=0.15
X468 a_17422_34735# a_17166_34735# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2173 pd=2.17 as=0.1701 ps=1.36 w=0.82 l=0.5
X469 VGND uio_out[0] a_17919_29377# VGND sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.1092 ps=1.36 w=0.42 l=0.15
X470 a_15322_30281# a_14883_29915# a_15237_29915# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0621 pd=0.705 as=0.0813 ps=0.83 w=0.36 l=0.15
X471 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X472 a_14957_29193# a_14423_28827# a_14862_29193# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07665 pd=0.785 as=0.06825 ps=0.745 w=0.42 l=0.15
X473 a_16157_29371# sarlogic_0.comp_op VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.05775 pd=0.695 as=0.1092 ps=1.36 w=0.42 l=0.15
X474 VDPWR uio_out[0] a_18931_29915# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.1664 ps=1.8 w=0.64 l=0.15
X475 VGND a_15495_30977# a_15429_31003# VGND sky130_fd_pr__nfet_01v8 ad=0.12495 pd=1.015 as=0.0669 ps=0.75 w=0.42 l=0.15
X476 VDPWR clk sky130_fd_sc_hd__clkinv_16_0.Y VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.14 pd=1.28 as=0.14 ps=1.28 w=1 l=0.15
X477 CDACnDriver_1.cdac_0.b3 sarlogic_0.clk5 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X478 a_13480_29749# a_12399_29377# a_13133_29345# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0588 pd=0.7 as=0.12915 ps=1.185 w=0.42 l=0.15
X479 VDPWR delay_control_0.sky130_fd_sc_hd__clkdlybuf4s50_1_2.A a_18638_34735# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1701 pd=1.36 as=0.27 ps=2.54 w=1 l=0.15
X480 VDPWR a_15455_29095# sarlogic_0.D6 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X481 a_15482_31369# a_14405_31003# a_15320_31003# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.0588 ps=0.7 w=0.42 l=0.15
X482 CDACnDriver_1.cdac_0.b5b sarlogic_0.D5 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X483 a_12305_31521# a_12087_31925# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0999 pd=0.985 as=0.1346 ps=1.15 w=0.64 l=0.15
X484 CDACnDriver_0.cdac_0.b4a a_20789_24635# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15 pd=1.3 as=0.135 ps=1.27 w=1 l=0.15
X485 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X486 VDPWR sarlogic_0.D7b CDACnDriver_0.cdac_0.b7b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X487 VGND sarlogic_0.D1 a_5644_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X488 VGND a_17422_34735# a_17529_34735# VGND sky130_fd_pr__nfet_01v8 ad=0.097 pd=0.975 as=0.17225 ps=1.83 w=0.65 l=0.5
X489 VDPWR sarlogic_0.valid a_14423_30465# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.1664 ps=1.8 w=0.64 l=0.15
X490 sarlogic_0.comp_op a_15288_34593# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X491 a_22012_24525# sarlogic_0.D4b VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X492 VDPWR a_18031_30183# a_18561_29915# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.154 pd=1.335 as=0.1664 ps=1.8 w=0.64 l=0.15
X493 VDPWR a_11723_30763# a_11710_30459# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0819 pd=0.81 as=0.0567 ps=0.69 w=0.42 l=0.15
X494 VGND a_14403_24635# CDACnDriver_1.cdac_0.b7a VGND sky130_fd_pr__nfet_01v8 ad=0.1365 pd=1.07 as=0.091 ps=0.93 w=0.65 l=0.15
X495 CDACnDriver_1.cdac_0.b4b sarlogic_0.clk4 a_8275_24525# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X496 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=2.89
X497 a_22889_24533# sarlogic_0.clk5 CDACnDriver_0.cdac_0.b3 VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X498 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X499 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.D0 bootstrap_0.sky130_fd_pr__nfet_01v8_UVMP7B_3.D sky130_fd_pr__cap_mim_m3_1 l=10 w=10
X500 VDPWR sky130_fd_sc_hd__clkinv_16_0.Y a_13364_29193# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07035 pd=0.755 as=0.1092 ps=1.36 w=0.42 l=0.15
X501 VDPWR sarlogic_0.D5b a_19030_25081# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15575 pd=1.355 as=0.1113 ps=1.37 w=0.42 l=0.15
X502 VDPWR a_13133_29345# a_13023_29371# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07035 pd=0.755 as=0.1155 ps=0.97 w=0.42 l=0.15
X503 VDPWR sky130_fd_sc_hd__nor3_2_0.B a_16121_33915# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1701 pd=1.36 as=0.27 ps=2.54 w=1 l=0.15
X504 comparator_0.vin CDACnDriver_0.cdac_0.b5a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X505 comparator_0.vin CDACnDriver_0.cdac_0.b2 sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X506 VGND sarlogic_0.D4b a_22012_24525# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X507 CDACnDriver_0.cdac_0.b6a a_17271_24635# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.15575 ps=1.355 w=1 l=0.15
X508 a_17345_30837# a_16355_30465# a_17219_30459# VGND sky130_fd_pr__special_nfet_01v8 ad=0.066 pd=0.745 as=0.0684 ps=0.74 w=0.36 l=0.15
X509 CDACnDriver_1.cdac_0.b7b sarlogic_0.clk1 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X510 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=1.05
X511 comparator_0.vin CDACnDriver_0.cdac_0.b4a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X512 VDPWR VDPWR VDPWR VDPWR sky130_fd_pr__pfet_01v8 ad=0.0693 pd=0.75 as=0 ps=0 w=0.42 l=0.15
X513 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X514 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X515 VDPWR a_16835_29345# sarlogic_0.D4 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X516 sarlogic_0.D5 a_15915_30183# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X517 VGND a_16835_29345# sarlogic_0.D4 VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X518 VGND a_17387_30433# a_17345_30837# VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.066 ps=0.745 w=0.42 l=0.15
X519 VGND clk sky130_fd_sc_hd__clkinv_16_0.Y VGND sky130_fd_pr__nfet_01v8 ad=0.0588 pd=0.7 as=0.0588 ps=0.7 w=0.42 l=0.15
X520 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X521 VGND sarlogic_0.D6 a_12644_25081# VGND sky130_fd_pr__nfet_01v8 ad=0.10675 pd=1.005 as=0.1113 ps=1.37 w=0.42 l=0.15
X522 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X523 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=4.73
X524 sarlogic_0.D2 a_18031_29095# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X525 VDPWR clk bootstrap_0.sky130_fd_pr__pfet_01v8_W93KHH_2.D VDPWR sky130_fd_pr__pfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.15
X526 a_20439_29371# a_19741_29377# a_20182_29345# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0684 pd=0.74 as=0.0989 ps=0.995 w=0.36 l=0.15
X527 VGND a_18783_32457# a_18951_32359# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X528 a_20014_29371# a_19575_29377# a_19929_29371# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0621 pd=0.705 as=0.0813 ps=0.83 w=0.36 l=0.15
X529 comparator_0.vin CDACnDriver_0.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X530 a_6521_24533# sarlogic_0.D2 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X531 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X532 a_17863_29193# a_17165_28827# a_17606_28939# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0684 pd=0.74 as=0.0989 ps=0.995 w=0.36 l=0.15
X533 uio_out[0] a_17220_33915# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1491 pd=1.55 as=0.097 ps=0.975 w=0.42 l=0.15
X534 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X535 VDPWR sarlogic_0.clk5 CDACnDriver_1.cdac_0.b3 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X536 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X537 a_19795_30281# a_19097_29915# a_19538_30027# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0684 pd=0.74 as=0.0989 ps=0.995 w=0.36 l=0.15
X538 comparator_0.vin CDACnDriver_0.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X539 VDPWR a_20789_24635# CDACnDriver_0.cdac_0.b4a VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X540 VDPWR sarlogic_0.clk3 CDACnDriver_1.cdac_0.b5b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X541 comparator_0.vip CDACnDriver_1.cdac_0.b5a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X542 a_11657_30837# a_10467_30465# a_11548_30837# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0669 pd=0.75 as=0.0711 ps=0.755 w=0.36 l=0.15
X543 VGND delay_control_0.sky130_fd_sc_hd__clkdlybuf4s50_1_1.A a_17902_34735# VGND sky130_fd_pr__nfet_01v8 ad=0.10435 pd=1.01 as=0.1134 ps=1.38 w=0.42 l=0.15
X544 a_13006_30433# a_12838_30459# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1095 pd=1.075 as=0.17887 ps=1.26 w=0.75 l=0.15
X545 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X546 CDACnDriver_0.cdac_0.b7b sarlogic_0.D7b VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X547 a_5644_24533# sarlogic_0.clk7 CDACnDriver_1.cdac_0.b1 VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X548 CDACnDriver_0.cdac_0.b2 sarlogic_0.clk6 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X549 a_13552_24533# sarlogic_0.D7 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X550 VGND a_17969_35527# delay_control_0.sky130_fd_sc_hd__clkdlybuf4s50_1_4.X VGND sky130_fd_pr__nfet_01v8 ad=0.097 pd=0.975 as=0.1491 ps=1.55 w=0.42 l=0.15
X551 VDPWR sarlogic_0.D1 CDACnDriver_1.cdac_0.b1 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X552 comparator_0.vip CDACnDriver_1.cdac_0.b5a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X553 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X554 VGND a_15455_29095# a_15985_28827# VGND sky130_fd_pr__nfet_01v8 ad=0.10025 pd=0.985 as=0.1092 ps=1.36 w=0.42 l=0.15
X555 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X556 VGND sarlogic_0.D2b a_23766_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X557 comparator_0.vip CDACnDriver_1.cdac_0.b5a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X558 VDPWR a_20607_29095# a_20523_29193# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1113 pd=1.37 as=0.0882 ps=0.84 w=0.42 l=0.15
X559 VGND sarlogic_0.valid a_12399_29377# VGND sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.1092 ps=1.36 w=0.42 l=0.15
X560 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X561 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X562 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X563 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=4.73
X564 a_18085_31553# a_17919_31553# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1664 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X565 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=0.59
X566 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X567 CDACnDriver_0.cdac_0.b5b sarlogic_0.clk3 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X568 CDACnDriver_0.cdac_0.b5a a_19030_24635# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15 pd=1.3 as=0.135 ps=1.27 w=1 l=0.15
X569 VGND a_15985_28827# sarlogic_0.D6b VGND sky130_fd_pr__nfet_01v8 ad=0.17225 pd=1.83 as=0.08775 ps=0.92 w=0.65 l=0.15
X570 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X571 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X572 VDPWR a_20182_28939# a_20109_29193# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.17887 pd=1.26 as=0.07665 ps=0.785 w=0.42 l=0.15
X573 a_20182_28939# a_20014_29193# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0989 pd=0.995 as=0.12095 ps=1.085 w=0.64 l=0.15
X574 a_18526_29345# a_18358_29371# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0989 pd=0.995 as=0.12095 ps=1.085 w=0.64 l=0.15
X575 a_13575_30281# sky130_fd_sc_hd__clkinv_16_0.Y VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1092 pd=1.36 as=0.07035 ps=0.755 w=0.42 l=0.15
X576 VGND sarlogic_0.D6 a_11793_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X577 VGND a_10885_24635# CDACnDriver_1.cdac_0.b5a VGND sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X578 a_18783_31547# a_18085_31553# a_18526_31521# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0684 pd=0.74 as=0.0989 ps=0.995 w=0.36 l=0.15
X579 a_20140_30837# a_19741_30465# a_20014_30459# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0696 pd=0.765 as=0.0621 ps=0.705 w=0.36 l=0.15
X580 a_21135_25037# sarlogic_0.clk4 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0715 pd=0.87 as=0.1365 ps=1.07 w=0.65 l=0.15
X581 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X582 VDPWR a_18951_32359# a_18867_32457# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1113 pd=1.37 as=0.0882 ps=0.84 w=0.42 l=0.15
X583 CDACnDriver_1.cdac_0.b4b sarlogic_0.D4 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X584 VDPWR a_16410_29345# a_16337_29371# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.17887 pd=1.26 as=0.07665 ps=0.785 w=0.42 l=0.15
X585 a_13467_29915# a_12951_29915# a_13372_29915# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0594 pd=0.69 as=0.066 ps=0.745 w=0.36 l=0.15
X586 a_13685_30157# a_13467_29915# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.12915 pd=1.185 as=0.2184 ps=2.2 w=0.84 l=0.15
X587 a_19285_31003# sarlogic_0.D7 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0813 pd=0.83 as=0.1092 ps=1.36 w=0.42 l=0.15
X588 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X589 VGND a_15679_30763# sarlogic_0.clk7 VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X590 VDPWR sarlogic_0.clk5 a_16355_30465# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.1664 ps=1.8 w=0.64 l=0.15
X591 a_12565_30465# a_12399_30465# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X592 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X593 VDPWR sarlogic_0.valid a_14239_31003# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.1664 ps=1.8 w=0.64 l=0.15
X594 sky130_fd_sc_hd__nor3_2_0.Y sky130_fd_sc_hd__nor3_2_0.A VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.17875 ps=1.85 w=0.65 l=0.15
X595 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X596 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X597 a_15490_30027# a_15322_30281# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1095 pd=1.075 as=0.17887 ps=1.26 w=0.75 l=0.15
X598 sky130_fd_sc_hd__nor3_2_0.B a_15495_30977# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.3012 ps=2.66 w=1 l=0.15
X599 sky130_fd_sc_hd__clkinv_16_0.Y clk VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0588 pd=0.7 as=0.1113 ps=1.37 w=0.42 l=0.15
X600 comparator_0.vip bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.G1 ua[0] VGND sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.15
X601 a_19097_31003# a_18931_31003# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1664 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X602 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=4.73
X603 a_14403_24635# a_14403_25081# a_14429_25037# VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.0715 ps=0.87 w=0.65 l=0.15
X604 a_15858_30825# sky130_fd_sc_hd__clkinv_16_0.Y VGND VGND sky130_fd_pr__nfet_01v8 ad=0.06405 pd=0.725 as=0.12495 ps=1.015 w=0.42 l=0.15
X605 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=4.73
X606 VGND a_18158_34735# a_18265_34735# VGND sky130_fd_pr__nfet_01v8 ad=0.097 pd=0.975 as=0.17225 ps=1.83 w=0.65 l=0.5
X607 comparator_0.vin CDACnDriver_0.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X608 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X609 a_18909_29749# a_17919_29377# a_18783_29371# VGND sky130_fd_pr__special_nfet_01v8 ad=0.066 pd=0.745 as=0.0684 ps=0.74 w=0.36 l=0.15
X610 EOC_delay_0.sky130_fd_sc_hd__clkdlybuf4s50_1_1.X a_16484_33915# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.355 pd=2.71 as=0.15575 ps=1.325 w=1 l=0.15
X611 a_18867_29371# a_18085_29377# a_18783_29371# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0882 pd=0.84 as=0.0567 ps=0.69 w=0.42 l=0.15
X612 VGND sarlogic_0.D2 a_6521_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X613 VGND a_19795_31369# a_19963_31271# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X614 VDPWR sarlogic_0.D6b CDACnDriver_0.cdac_0.b6b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X615 VGND a_13219_29064# a_13150_29193# VGND sky130_fd_pr__nfet_01v8 ad=0.1346 pd=1.15 as=0.0999 ps=0.985 w=0.64 l=0.15
X616 comparator_0.vin CDACnDriver_0.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X617 a_17606_28939# a_17438_29193# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1095 pd=1.075 as=0.17887 ps=1.26 w=0.75 l=0.15
X618 a_11548_30837# a_10633_30465# a_11201_30433# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0711 pd=0.755 as=0.0999 ps=0.985 w=0.36 l=0.15
X619 VGND a_18951_29345# a_18909_29749# VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.066 ps=0.745 w=0.42 l=0.15
X620 VDPWR sarlogic_0.D4b CDACnDriver_0.cdac_0.b4b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X621 VDPWR a_15747_30281# a_15915_30183# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.27 ps=2.54 w=1 l=0.15
X622 a_20523_30459# a_19741_30465# a_20439_30459# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0882 pd=0.84 as=0.0567 ps=0.69 w=0.42 l=0.15
X623 sarlogic_0.D3 a_17387_30433# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X624 a_24643_24533# sarlogic_0.D1b VGND VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X625 sarlogic_0.D3 a_17387_30433# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X626 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=4.73
X627 VDPWR a_18031_31271# sarlogic_0.D1 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X628 a_18085_29377# a_17919_29377# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X629 VDPWR a_18031_31271# a_17947_31369# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1113 pd=1.37 as=0.0882 ps=0.84 w=0.42 l=0.15
X630 VDPWR a_12652_31925# a_12827_31851# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1134 pd=1.38 as=0.0567 ps=0.69 w=0.42 l=0.15
X631 comparator_0.von a_14104_34619# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X632 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X633 comparator_0.sky130_fd_sc_hd__nand2_1_2.Y comparator_0.sky130_fd_sc_hd__nand2_1_2.B VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X634 VDPWR sarlogic_0.clk6 CDACnDriver_0.cdac_0.b2 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X635 VGND sarlogic_0.D7 a_13552_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X636 a_19097_29915# a_18931_29915# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1664 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X637 a_14660_31003# sarlogic_0.clk7 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0651 pd=0.73 as=0.1092 ps=1.36 w=0.42 l=0.15
X638 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X639 a_20253_24532# sarlogic_0.D5b VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X640 CDACnDriver_1.cdac_0.b1 sarlogic_0.D1 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X641 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=4.73
X642 a_23766_24533# sarlogic_0.clk6 CDACnDriver_0.cdac_0.b2 VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X643 VDPWR a_15679_30763# a_15666_30459# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0819 pd=0.81 as=0.0567 ps=0.69 w=0.42 l=0.15
X644 comparator_0.vin CDACnDriver_0.cdac_0.b5a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X645 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X646 VGND a_18561_29915# sarlogic_0.D0b VGND sky130_fd_pr__nfet_01v8 ad=0.17225 pd=1.83 as=0.08775 ps=0.92 w=0.65 l=0.15
X647 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X648 comparator_0.vin CDACnDriver_0.cdac_0.b5a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X649 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X650 VDPWR sarlogic_0.clk3 CDACnDriver_0.cdac_0.b5b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X651 VDPWR a_19030_24635# CDACnDriver_0.cdac_0.b5a VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X652 VDPWR a_13431_30433# a_13961_30459# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.154 pd=1.335 as=0.1664 ps=1.8 w=0.64 l=0.15
X653 VGND VGND VGND VGND sky130_fd_pr__nfet_01v8 ad=0.31 pd=2.62 as=0 ps=0 w=1 l=0.15
X654 VDPWR a_18951_31521# a_18867_31547# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1113 pd=1.37 as=0.0882 ps=0.84 w=0.42 l=0.15
X655 VDPWR a_15915_30183# a_16445_29915# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.154 pd=1.335 as=0.1664 ps=1.8 w=0.64 l=0.15
X656 VDPWR a_18031_30183# a_17947_30281# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1113 pd=1.37 as=0.0882 ps=0.84 w=0.42 l=0.15
X657 VGND a_13006_30433# a_12964_30837# VGND sky130_fd_pr__nfet_01v8 ad=0.12095 pd=1.085 as=0.0696 ps=0.765 w=0.42 l=0.15
X658 VGND sarlogic_0.D7 a_14403_25081# VGND sky130_fd_pr__nfet_01v8 ad=0.10675 pd=1.005 as=0.1113 ps=1.37 w=0.42 l=0.15
X659 a_11793_24533# sarlogic_0.clk2 CDACnDriver_1.cdac_0.b6b VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X660 VDPWR a_19795_30281# a_19963_30183# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.27 ps=2.54 w=1 l=0.15
X661 VGND uio_out[0] a_17919_31553# VGND sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.1092 ps=1.36 w=0.42 l=0.15
X662 sarlogic_0.D1b a_18561_31003# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.10025 ps=0.985 w=0.65 l=0.15
X663 VDPWR a_15455_29095# a_15985_28827# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.154 pd=1.335 as=0.1664 ps=1.8 w=0.64 l=0.15
X664 VDPWR a_13219_29064# a_13150_29193# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2184 pd=2.2 as=0.12915 ps=1.185 w=0.84 l=0.15
X665 VDPWR a_12673_31245# a_12563_31369# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07035 pd=0.755 as=0.1155 ps=0.97 w=0.42 l=0.15
X666 VDPWR a_15288_34593# sarlogic_0.comp_op VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X667 VDPWR sarlogic_0.clk4 CDACnDriver_1.cdac_0.b4b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X668 VDPWR a_18783_32457# a_18951_32359# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.27 ps=2.54 w=1 l=0.15
X669 comparator_0.vin CDACnDriver_0.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X670 a_12820_29737# sarlogic_0.clk4 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.066 pd=0.745 as=0.2205 ps=1.89 w=0.42 l=0.15
X671 a_13467_29915# a_13117_29915# a_13372_29915# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07245 pd=0.765 as=0.0651 ps=0.73 w=0.42 l=0.15
X672 VGND sarlogic_0.D4b a_22012_24525# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X673 a_15490_30027# a_15322_30281# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0989 pd=0.995 as=0.12095 ps=1.085 w=0.64 l=0.15
X674 VDPWR a_17592_35349# a_17332_35349# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1701 pd=1.36 as=0.2173 ps=2.17 w=0.82 l=0.5
X675 comparator_0.vip CDACnDriver_1.cdac_0.b5b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X676 comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_1.D0 comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_1.D0 comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_1.D0 VDPWR sky130_fd_pr__pfet_01v8 ad=0.1302 pd=1.46 as=0.3906 ps=4.38 w=0.42 l=0.15
X677 comparator_0.vin CDACnDriver_0.cdac_0.b5a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X678 VDPWR sky130_fd_sc_hd__nor3_2_0.Y comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_0.S0 VDPWR sky130_fd_pr__pfet_01v8 ad=0.1302 pd=1.46 as=0.1302 ps=1.46 w=0.42 l=0.15
X679 a_12360_31003# sarlogic_0.clk2 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.066 pd=0.745 as=0.2205 ps=1.89 w=0.42 l=0.15
X680 VGND a_18705_35527# delay_control_0.sky130_fd_sc_hd__clkdlybuf4s50_1_5.X VGND sky130_fd_pr__nfet_01v8 ad=0.097 pd=0.975 as=0.1491 ps=1.55 w=0.42 l=0.15
X681 CDACnDriver_0.cdac_0.b6b sarlogic_0.D6b VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X682 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=1.05
X683 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X684 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X685 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X686 VGND a_16835_29345# a_17365_29371# VGND sky130_fd_pr__nfet_01v8 ad=0.10025 pd=0.985 as=0.1092 ps=1.36 w=0.42 l=0.15
X687 a_10034_24532# sarlogic_0.D5 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X688 comparator_0.vip CDACnDriver_1.cdac_0.b2 sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X689 a_12565_29377# a_12399_29377# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1664 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X690 bootstrap_0.sky130_fd_pr__pfet_01v8_W93KHH_3.D clk bootstrap_0.sky130_fd_pr__nfet_01v8_UVMP7B_3.D VGND sky130_fd_pr__nfet_01v8 ad=0.145 pd=1.58 as=0.145 ps=1.58 w=0.5 l=0.15
X691 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X692 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X693 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X694 sarlogic_0.clk7 a_15679_30763# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.2087 ps=2.02 w=0.65 l=0.15
X695 a_9152_25037# sarlogic_0.clk4 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0715 pd=0.87 as=0.1365 ps=1.07 w=0.65 l=0.15
X696 VGND sarlogic_0.D1b a_24643_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X697 comparator_0.vip CDACnDriver_1.cdac_0.b4a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X698 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X699 VGND a_20182_30433# a_20140_30837# VGND sky130_fd_pr__nfet_01v8 ad=0.12095 pd=1.085 as=0.0696 ps=0.765 w=0.42 l=0.15
X700 comparator_0.vip CDACnDriver_1.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X701 a_14032_29915# a_12951_29915# a_13685_30157# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0588 pd=0.7 as=0.12915 ps=1.185 w=0.42 l=0.15
X702 a_12087_31925# a_11571_31553# a_11992_31913# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0594 pd=0.69 as=0.066 ps=0.745 w=0.36 l=0.15
X703 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X704 CDACnDriver_0.cdac_0.b1 sarlogic_0.D1b VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X705 VGND sarlogic_0.valid a_11571_31553# VGND sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.1092 ps=1.36 w=0.42 l=0.15
X706 comparator_0.vin CDACnDriver_0.cdac_0.b4b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X707 CDACnDriver_0.cdac_0.b5b sarlogic_0.clk3 a_20253_24532# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X708 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 VGND sky130_fd_pr__nfet_01v8 ad=0.145 pd=1.58 as=0.58 ps=6.32 w=0.5 l=0.15
X709 CDACnDriver_1.cdac_0.b6b sarlogic_0.clk2 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X710 delay_control_0.sky130_fd_sc_hd__clkdlybuf4s50_1_2.A a_18265_34735# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.355 pd=2.71 as=0.15575 ps=1.325 w=1 l=0.15
X711 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X712 sarlogic_0.valid a_14656_34619# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X713 VGND a_12644_24635# CDACnDriver_1.cdac_0.b6a VGND sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X714 bootstrap_0.sky130_fd_pr__nfet_g5v0d10v5_WBA3NL_5.S bootstrap_0.sky130_fd_pr__nfet_g5v0d10v5_WBA3NL_5.S bootstrap_0.sky130_fd_pr__nfet_g5v0d10v5_WBA3NL_5.S VGND sky130_fd_pr__nfet_g5v0d10v5 ad=0.87 pd=6.58 as=1.74 ps=13.16 w=3 l=0.5
X715 comparator_0.vip CDACnDriver_1.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X716 comparator_0.vin CDACnDriver_0.cdac_0.b5a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X717 CDACnDriver_1.cdac_0.b7a a_14403_24635# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X718 CDACnDriver_1.cdac_0.b4a a_9126_24635# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15 pd=1.3 as=0.135 ps=1.27 w=1 l=0.15
X719 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X720 comparator_0.vip CDACnDriver_1.cdac_0.b5a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X721 VDPWR a_17219_30459# a_17387_30433# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.27 ps=2.54 w=1 l=0.15
X722 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=1.05
X723 VDPWR uio_out[0] a_17919_32091# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.1664 ps=1.8 w=0.64 l=0.15
X724 sarlogic_0.D5 a_15915_30183# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X725 comparator_0.vin CDACnDriver_0.cdac_0.b5b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X726 a_20182_29345# a_20014_29371# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0989 pd=0.995 as=0.12095 ps=1.085 w=0.64 l=0.15
X727 a_20109_30459# a_19575_30465# a_20014_30459# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07665 pd=0.785 as=0.06825 ps=0.745 w=0.42 l=0.15
X728 sarlogic_0.D1 a_18031_31271# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X729 a_13020_31003# a_12105_31003# a_12673_31245# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0711 pd=0.755 as=0.0999 ps=0.985 w=0.36 l=0.15
X730 VGND sky130_fd_sc_hd__clkinv_16_0.Y a_15017_31003# VGND sky130_fd_pr__nfet_01v8 ad=0.1346 pd=1.15 as=0.0441 ps=0.63 w=0.42 l=0.15
X731 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X732 VGND sarlogic_0.valid a_14423_30465# VGND sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.1092 ps=1.36 w=0.42 l=0.15
X733 VDPWR sarlogic_0.D7b CDACnDriver_0.cdac_0.b7b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X734 VGND a_18031_29095# a_18561_28827# VGND sky130_fd_pr__nfet_01v8 ad=0.10025 pd=0.985 as=0.1092 ps=1.36 w=0.42 l=0.15
X735 VDPWR a_13263_30459# a_13431_30433# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.27 ps=2.54 w=1 l=0.15
X736 comparator_0.vin CDACnDriver_0.cdac_0.b5b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X737 comparator_0.vip VGND sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X738 VGND a_13263_30459# a_13431_30433# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X739 a_16920_30837# a_16521_30465# a_16794_30459# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0696 pd=0.765 as=0.0621 ps=0.705 w=0.36 l=0.15
X740 VGND a_14207_29889# sarlogic_0.clk6 VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X741 a_15666_30459# a_14589_30465# a_15504_30837# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.0588 ps=0.7 w=0.42 l=0.15
X742 a_13063_28969# sarlogic_0.valid VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X743 VDPWR sky130_fd_sc_hd__clkinv_16_0.Y a_12459_28801# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0819 pd=0.81 as=0.0567 ps=0.69 w=0.42 l=0.15
X744 a_22012_24525# sarlogic_0.clk4 CDACnDriver_0.cdac_0.b4b VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X745 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=1.05
X746 CDACnDriver_1.cdac_0.b7a a_14403_24635# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.10675 ps=1.005 w=0.65 l=0.15
X747 sky130_fd_sc_hd__clkinv_16_0.Y clk VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.14 pd=1.28 as=0.14 ps=1.28 w=1 l=0.15
X748 VDPWR a_18951_29345# uo_out[2] VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X749 a_17989_28827# a_16999_28827# a_17863_29193# VGND sky130_fd_pr__special_nfet_01v8 ad=0.066 pd=0.745 as=0.0684 ps=0.74 w=0.36 l=0.15
X750 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=2.89
X751 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X752 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=0.59
X753 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=4.73
X754 VDPWR sarlogic_0.clk7 a_16999_31003# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.1664 ps=1.8 w=0.64 l=0.15
X755 VDPWR a_15495_30977# sky130_fd_sc_hd__nor3_2_0.B VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X756 sarlogic_0.comp_op a_15288_34593# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X757 VGND sarlogic_0.D5 a_10034_24532# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X758 VDPWR a_12644_24635# CDACnDriver_1.cdac_0.b6a VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.185 pd=1.37 as=0.15 ps=1.3 w=1 l=0.15
X759 a_17617_25037# sarlogic_0.clk2 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0715 pd=0.87 as=0.1365 ps=1.07 w=0.65 l=0.15
X760 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X761 a_13063_28969# sarlogic_0.valid VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1664 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X762 VGND sarlogic_0.clk3 a_14883_29915# VGND sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.1092 ps=1.36 w=0.42 l=0.15
X763 a_12838_30459# a_12565_30465# a_12753_30459# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.06825 pd=0.745 as=0.05775 ps=0.695 w=0.42 l=0.15
X764 bootstrap_0.sky130_fd_pr__nfet_g5v0d10v5_WBA3NL_1.D VDPWR bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 VGND sky130_fd_pr__nfet_g5v0d10v5 ad=0.435 pd=3.29 as=0.435 ps=3.29 w=3 l=0.5
X765 a_17219_30459# a_16521_30465# a_16962_30433# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0684 pd=0.74 as=0.0989 ps=0.995 w=0.36 l=0.15
X766 a_19370_31369# a_18931_31003# a_19285_31003# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0621 pd=0.705 as=0.0813 ps=0.83 w=0.36 l=0.15
X767 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=4.73
X768 a_12915_29749# a_12399_29377# a_12820_29737# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0594 pd=0.69 as=0.066 ps=0.745 w=0.36 l=0.15
X769 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=0.59
X770 sky130_fd_sc_hd__clkinv_16_0.Y clk VGND VGND sky130_fd_pr__nfet_01v8 ad=0.09135 pd=0.855 as=0.0588 ps=0.7 w=0.42 l=0.15
X771 VDPWR sarlogic_0.clk7 CDACnDriver_0.cdac_0.b1 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X772 sarlogic_0.clk2 a_12827_31851# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.3012 ps=2.66 w=1 l=0.15
X773 a_8275_24525# sarlogic_0.D4 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X774 a_20014_30459# a_19741_30465# a_19929_30459# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.06825 pd=0.745 as=0.05775 ps=0.695 w=0.42 l=0.15
X775 a_19929_29371# sarlogic_0.D1 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0813 pd=0.83 as=0.1092 ps=1.36 w=0.42 l=0.15
X776 a_12563_31369# a_11939_31003# a_12455_31003# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1155 pd=0.97 as=0.07245 ps=0.765 w=0.42 l=0.15
X777 VDPWR clk sky130_fd_sc_hd__clkinv_16_0.Y VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.14 pd=1.28 as=0.14 ps=1.28 w=1 l=0.15
X778 VDPWR sarlogic_0.clk2 CDACnDriver_1.cdac_0.b6b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X779 a_15831_30281# a_15049_29915# a_15747_30281# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0882 pd=0.84 as=0.0567 ps=0.69 w=0.42 l=0.15
X780 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X781 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=0.59
X782 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=1.97
X783 a_16157_29371# sarlogic_0.comp_op VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0813 pd=0.83 as=0.1092 ps=1.36 w=0.42 l=0.15
X784 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X785 VDPWR sky130_fd_sc_hd__nor3_2_0.B a_16999_29915# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.1664 ps=1.8 w=0.64 l=0.15
X786 delay_control_0.sky130_fd_sc_hd__clkdlybuf4s50_1_1.A a_17529_34735# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1491 pd=1.55 as=0.097 ps=0.975 w=0.42 l=0.15
X787 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X788 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X789 VDPWR a_9126_24635# CDACnDriver_1.cdac_0.b4a VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X790 a_13563_29915# a_13117_29915# a_13467_29915# VGND sky130_fd_pr__special_nfet_01v8 ad=0.1401 pd=1.1 as=0.0594 ps=0.69 w=0.36 l=0.15
X791 a_6521_24533# sarlogic_0.D2 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X792 a_17592_35349# delay_control_0.sky130_fd_sc_hd__clkdlybuf4s50_1_4.X VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1134 pd=1.38 as=0.10435 ps=1.01 w=0.42 l=0.15
X793 a_17947_29193# a_17165_28827# a_17863_29193# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0882 pd=0.84 as=0.0567 ps=0.69 w=0.42 l=0.15
X794 a_18909_31925# a_17919_31553# a_18783_31547# VGND sky130_fd_pr__special_nfet_01v8 ad=0.066 pd=0.745 as=0.0684 ps=0.74 w=0.36 l=0.15
X795 VDPWR a_18328_35349# a_18068_35349# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1701 pd=1.36 as=0.2173 ps=2.17 w=0.82 l=0.5
X796 VGND sarlogic_0.D4 a_8275_24525# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X797 a_22889_24533# sarlogic_0.D3b VGND VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X798 a_11992_31913# sarlogic_0.clk1 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.066 pd=0.745 as=0.2205 ps=1.89 w=0.42 l=0.15
X799 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X800 a_17606_31115# a_17438_31369# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1095 pd=1.075 as=0.17887 ps=1.26 w=0.75 l=0.15
X801 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X802 VGND a_18951_31521# a_18909_31925# VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.066 ps=0.745 w=0.42 l=0.15
X803 CDACnDriver_0.cdac_0.b7b sarlogic_0.clk1 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X804 comparator_0.vin CDACnDriver_0.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X805 VGND a_18951_32359# uo_out[4] VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X806 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=0.59
X807 sarlogic_0.TIE_ONE_one_.LO VGND sky130_fd_pr__res_generic_po w=0.48 l=0.5
X808 a_13552_24533# sarlogic_0.D7 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X809 CDACnDriver_0.cdac_0.b7b sarlogic_0.clk1 a_16735_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X810 VDPWR sarlogic_0.D1 CDACnDriver_1.cdac_0.b1 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X811 a_19064_35349# delay_control_0.sky130_fd_sc_hd__clkdlybuf4s50_1_5.A VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.27 pd=2.54 as=0.1701 ps=1.36 w=1 l=0.15
X812 a_16686_34735# a_16430_34735# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2173 pd=2.17 as=0.1701 ps=1.36 w=0.82 l=0.5
X813 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X814 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X815 VGND a_13655_29675# sarlogic_0.clk5 VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X816 a_15495_30977# a_15320_31003# a_15674_31003# VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.06405 ps=0.725 w=0.42 l=0.15
X817 a_18085_31553# a_17919_31553# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X818 a_13117_29915# a_12951_29915# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X819 VGND a_15747_30281# a_15915_30183# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X820 VGND EOC_delay_0.sky130_fd_sc_hd__clkdlybuf4s50_1_1.X a_16857_33915# VGND sky130_fd_pr__nfet_01v8 ad=0.10435 pd=1.01 as=0.1134 ps=1.38 w=0.42 l=0.15
X821 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X822 sarlogic_0.clk1 a_11723_30763# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.3012 ps=2.66 w=1 l=0.15
X823 a_17863_31369# a_17165_31003# a_17606_31115# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0684 pd=0.74 as=0.0989 ps=0.995 w=0.36 l=0.15
X824 a_11737_31553# a_11571_31553# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1664 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X825 VDPWR clk sky130_fd_sc_hd__clkinv_16_0.Y VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.14 pd=1.28 as=0.14 ps=1.28 w=1 l=0.15
X826 delay_control_0.sky130_fd_sc_hd__clkdlybuf4s50_1_5.A a_19001_34735# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.355 pd=2.71 as=0.15575 ps=1.325 w=1 l=0.15
X827 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=0.59
X828 VDPWR a_18031_29095# a_18561_28827# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.154 pd=1.335 as=0.1664 ps=1.8 w=0.64 l=0.15
X829 comparator_0.vin CDACnDriver_0.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X830 a_12838_30459# a_12399_30465# a_12753_30459# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0621 pd=0.705 as=0.0813 ps=0.83 w=0.36 l=0.15
X831 a_17353_28827# sarlogic_0.comp_op VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0813 pd=0.83 as=0.1092 ps=1.36 w=0.42 l=0.15
X832 VGND a_15512_24635# CDACnDriver_0.cdac_0.b7a VGND sky130_fd_pr__nfet_01v8 ad=0.1365 pd=1.07 as=0.091 ps=0.93 w=0.65 l=0.15
X833 a_19285_29915# sarlogic_0.D5 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0813 pd=0.83 as=0.1092 ps=1.36 w=0.42 l=0.15
X834 a_19285_31003# sarlogic_0.D7 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.05775 pd=0.695 as=0.1092 ps=1.36 w=0.42 l=0.15
X835 a_12459_28801# a_12746_29079# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.1134 ps=1.38 w=0.42 l=0.15
X836 CDACnDriver_1.cdac_0.b3 sarlogic_0.clk5 a_7398_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X837 a_19929_28827# sarlogic_0.D0 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0813 pd=0.83 as=0.1092 ps=1.36 w=0.42 l=0.15
X838 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=0.59
X839 VDPWR a_17387_30433# a_17917_30459# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.154 pd=1.335 as=0.1664 ps=1.8 w=0.64 l=0.15
X840 VGND sarlogic_0.clk5 a_16355_30465# VGND sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.1092 ps=1.36 w=0.42 l=0.15
X841 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X842 VDPWR a_15495_30977# a_15482_31369# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0819 pd=0.81 as=0.0567 ps=0.69 w=0.42 l=0.15
X843 VGND a_16962_30433# a_16920_30837# VGND sky130_fd_pr__nfet_01v8 ad=0.12095 pd=1.085 as=0.0696 ps=0.765 w=0.42 l=0.15
X844 VGND sarlogic_0.clk3 a_13782_29193# VGND sky130_fd_pr__nfet_01v8 ad=0.2205 pd=1.89 as=0.066 ps=0.745 w=0.42 l=0.15
X845 VDPWR sarlogic_0.D3 CDACnDriver_1.cdac_0.b3 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X846 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=1.97
X847 VGND delay_control_0.sky130_fd_sc_hd__clkdlybuf4s50_1_6.X a_17166_34735# VGND sky130_fd_pr__nfet_01v8 ad=0.10435 pd=1.01 as=0.1134 ps=1.38 w=0.42 l=0.15
X848 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X849 VDPWR a_16377_33915# a_16484_33915# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15575 pd=1.325 as=0.2173 ps=2.17 w=0.82 l=0.5
X850 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X851 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=4.73
X852 a_12644_24635# sarlogic_0.clk2 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.185 ps=1.37 w=1 l=0.15
X853 VGND a_19795_30281# a_19963_30183# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X854 a_15448_29915# a_15049_29915# a_15322_30281# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0696 pd=0.765 as=0.0621 ps=0.705 w=0.36 l=0.15
X855 sky130_fd_sc_hd__clkinv_16_0.Y clk VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.14 pd=1.28 as=0.1575 ps=1.315 w=1 l=0.15
X856 a_14589_30465# a_14423_30465# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1664 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X857 comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_0.S0 comparator_0.sky130_fd_sc_hd__nand2_1_1.A comparator_0.sky130_fd_sc_hd__nand2_1_2.B VGND sky130_fd_pr__nfet_01v8 ad=0.1302 pd=1.46 as=0.1302 ps=1.46 w=0.42 l=0.15
X858 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X859 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X860 CDACnDriver_1.cdac_0.b2 sarlogic_0.clk6 a_6521_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X861 VDPWR a_13655_29675# a_13642_29371# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0819 pd=0.81 as=0.0567 ps=0.69 w=0.42 l=0.15
X862 comparator_0.vip CDACnDriver_1.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X863 a_18358_29371# a_17919_29377# a_18273_29371# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0621 pd=0.705 as=0.0813 ps=0.83 w=0.36 l=0.15
X864 a_19285_29915# sarlogic_0.D5 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.05775 pd=0.695 as=0.1092 ps=1.36 w=0.42 l=0.15
X865 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=0.59
X866 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X867 VDPWR sarlogic_0.D6b CDACnDriver_0.cdac_0.b6b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X868 VGND a_17365_29371# sarlogic_0.D4b VGND sky130_fd_pr__nfet_01v8 ad=0.17225 pd=1.83 as=0.08775 ps=0.92 w=0.65 l=0.15
X869 a_12673_31245# a_12455_31003# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.12915 pd=1.185 as=0.2184 ps=2.2 w=0.84 l=0.15
X870 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X871 a_15017_31003# a_14973_31245# a_14851_31003# VGND sky130_fd_pr__nfet_01v8 ad=0.0441 pd=0.63 as=0.1401 ps=1.1 w=0.42 l=0.15
X872 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=0.59
X873 sky130_fd_sc_hd__clkinv_16_0.Y clk VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0588 pd=0.7 as=0.0588 ps=0.7 w=0.42 l=0.15
X874 VDPWR sarlogic_0.clk4 CDACnDriver_0.cdac_0.b4b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X875 VGND sarlogic_0.D3b a_22889_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X876 a_14777_28827# sarlogic_0.comp_op VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0813 pd=0.83 as=0.1092 ps=1.36 w=0.42 l=0.15
X877 VGND sky130_fd_sc_hd__nor3_2_0.Y comparator_0.sky130_fd_pr__pfet_01v8_F3E8BM_0.D2 VGND sky130_fd_pr__nfet_01v8 ad=0.0693 pd=0.75 as=0.0693 ps=0.75 w=0.42 l=0.15
X878 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X879 a_24643_24533# sarlogic_0.D1b VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X880 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X881 VDPWR a_12644_25081# a_12644_24635# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X882 a_10633_30465# a_10467_30465# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1664 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X883 a_18085_32091# a_17919_32091# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1664 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X884 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X885 CDACnDriver_0.cdac_0.b3 sarlogic_0.D3b VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X886 a_15747_30281# a_14883_29915# a_15490_30027# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.1095 ps=1.075 w=0.42 l=0.15
X887 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=1.97
X888 comparator_0.vip CDACnDriver_1.cdac_0.b2 sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X889 CDACnDriver_1.cdac_0.b7b sarlogic_0.clk1 a_13552_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X890 VGND a_19963_31271# uo_out[7] VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X891 comparator_0.vin CDACnDriver_0.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X892 VGND a_17219_30459# a_17387_30433# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X893 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=1.05
X894 CDACnDriver_1.cdac_0.b1 sarlogic_0.clk7 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X895 a_16735_24533# sarlogic_0.clk1 CDACnDriver_0.cdac_0.b7b VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X896 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 VGND sky130_fd_pr__nfet_g5v0d10v5 ad=0.87 pd=6.58 as=1.74 ps=13.16 w=3 l=0.5
X897 comparator_0.vin CDACnDriver_0.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X898 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X899 VGND a_17592_35349# a_17332_35349# VGND sky130_fd_pr__nfet_01v8 ad=0.10435 pd=1.01 as=0.169 ps=1.82 w=0.65 l=0.5
X900 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=0.59
X901 a_19376_25037# sarlogic_0.clk3 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0715 pd=0.87 as=0.1365 ps=1.07 w=0.65 l=0.15
X902 a_15322_30281# a_15049_29915# a_15237_29915# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.06825 pd=0.745 as=0.05775 ps=0.695 w=0.42 l=0.15
X903 a_14844_30825# sarlogic_0.clk6 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0651 pd=0.73 as=0.1092 ps=1.36 w=0.42 l=0.15
X904 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X905 VGND a_18526_29345# a_18484_29749# VGND sky130_fd_pr__nfet_01v8 ad=0.12095 pd=1.085 as=0.0696 ps=0.765 w=0.42 l=0.15
X906 a_12183_31925# a_11737_31553# a_12087_31925# VGND sky130_fd_pr__special_nfet_01v8 ad=0.1401 pd=1.1 as=0.0594 ps=0.69 w=0.36 l=0.15
X907 a_13133_29345# a_12915_29749# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0999 pd=0.985 as=0.1346 ps=1.15 w=0.64 l=0.15
X908 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X909 a_12305_31521# a_12087_31925# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.12915 pd=1.185 as=0.2184 ps=2.2 w=0.84 l=0.15
X910 comparator_0.vip CDACnDriver_1.cdac_0.b5b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X911 sarlogic_0.D0b a_18561_29915# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.10025 ps=0.985 w=0.65 l=0.15
X912 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=0.59
X913 uo_out[4] a_18951_32359# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X914 a_7398_24533# sarlogic_0.clk5 CDACnDriver_1.cdac_0.b3 VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X915 CDACnDriver_1.cdac_0.b7a a_14403_24635# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15 pd=1.3 as=0.135 ps=1.27 w=1 l=0.15
X916 VGND a_15915_30183# a_15873_29915# VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.066 ps=0.745 w=0.42 l=0.15
X917 sarlogic_0.clk6 a_14207_29889# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.3012 ps=2.66 w=1 l=0.15
X918 a_13129_31003# a_11939_31003# a_13020_31003# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0669 pd=0.75 as=0.0711 ps=0.755 w=0.36 l=0.15
X919 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X920 VDPWR clk sky130_fd_sc_hd__clkinv_16_0.Y VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.14 pd=1.28 as=0.14 ps=1.28 w=1 l=0.15
X921 VDPWR a_20789_24635# CDACnDriver_0.cdac_0.b4a VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.185 pd=1.37 as=0.15 ps=1.3 w=1 l=0.15
X922 CDACnDriver_1.cdac_0.b3 sarlogic_0.D3 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X923 a_20523_29193# a_19741_28827# a_20439_29193# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0882 pd=0.84 as=0.0567 ps=0.69 w=0.42 l=0.15
X924 a_18358_32457# a_18085_32091# a_18273_32091# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.06825 pd=0.745 as=0.05775 ps=0.695 w=0.42 l=0.15
X925 a_20140_29749# a_19741_29377# a_20014_29371# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0696 pd=0.765 as=0.0621 ps=0.705 w=0.36 l=0.15
X926 a_15049_29915# a_14883_29915# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X927 comparator_0.sky130_fd_sc_hd__nand2_1_1.A comparator_0.sky130_fd_sc_hd__nand2_1_1.A comparator_0.sky130_fd_sc_hd__nand2_1_1.A VGND sky130_fd_pr__nfet_01v8 ad=0.1302 pd=1.46 as=0.3906 ps=4.38 w=0.42 l=0.15
X928 VDPWR a_19963_30183# uo_out[5] VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X929 VGND a_15288_34593# sarlogic_0.comp_op VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X930 a_16793_29749# a_15803_29377# a_16667_29371# VGND sky130_fd_pr__special_nfet_01v8 ad=0.066 pd=0.745 as=0.0684 ps=0.74 w=0.36 l=0.15
X931 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=0.59
X932 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X933 a_16751_29371# a_15969_29377# a_16667_29371# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0882 pd=0.84 as=0.0567 ps=0.69 w=0.42 l=0.15
X934 VDPWR sarlogic_0.D2b CDACnDriver_0.cdac_0.b2 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X935 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=4.73
X936 CDACnDriver_0.cdac_0.b6b sarlogic_0.clk2 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X937 a_12565_29377# a_12399_29377# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X938 a_12827_31851# sky130_fd_sc_hd__clkinv_16_0.Y VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.0819 ps=0.81 w=0.42 l=0.15
X939 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X940 a_16709_30459# sarlogic_0.comp_op VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.05775 pd=0.695 as=0.1092 ps=1.36 w=0.42 l=0.15
X941 a_10034_24532# sarlogic_0.D5 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X942 VDPWR a_13685_30157# a_13575_30281# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07035 pd=0.755 as=0.1155 ps=0.97 w=0.42 l=0.15
X943 CDACnDriver_0.cdac_0.b4b sarlogic_0.clk4 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X944 CDACnDriver_0.cdac_0.b6b sarlogic_0.clk2 a_18494_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X945 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X946 CDACnDriver_0.cdac_0.b1 sarlogic_0.clk7 a_24643_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X947 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X948 a_11201_30433# a_10983_30837# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.12915 pd=1.185 as=0.2184 ps=2.2 w=0.84 l=0.15
X949 comparator_0.vin bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 ua[1] VGND sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.15
X950 a_15512_24635# a_15512_25081# a_15858_25037# VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.0715 ps=0.87 w=0.65 l=0.15
X951 VDPWR sarlogic_0.D5b CDACnDriver_0.cdac_0.b5b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X952 VDPWR sarlogic_0.clk5 CDACnDriver_0.cdac_0.b3 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X953 comparator_0.vin CDACnDriver_0.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X954 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=0.59
X955 a_16962_30433# a_16794_30459# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0989 pd=0.995 as=0.12095 ps=1.085 w=0.64 l=0.15
X956 a_12753_30459# sarlogic_0.comp_op VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.05775 pd=0.695 as=0.1092 ps=1.36 w=0.42 l=0.15
X957 VGND sarlogic_0.D4 a_8275_24525# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X958 a_10983_30837# a_10467_30465# a_10888_30825# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0594 pd=0.69 as=0.066 ps=0.745 w=0.36 l=0.15
X959 VGND sky130_fd_sc_hd__nor3_2_0.B a_16121_33915# VGND sky130_fd_pr__nfet_01v8 ad=0.10435 pd=1.01 as=0.1134 ps=1.38 w=0.42 l=0.15
X960 VDPWR sarlogic_0.D6 a_12644_25081# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15575 pd=1.355 as=0.1113 ps=1.37 w=0.42 l=0.15
X961 a_14405_31003# a_14239_31003# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1664 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X962 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=4.73
X963 a_13011_29749# a_12565_29377# a_12915_29749# VGND sky130_fd_pr__special_nfet_01v8 ad=0.1401 pd=1.1 as=0.0594 ps=0.69 w=0.36 l=0.15
X964 comparator_0.vip CDACnDriver_1.cdac_0.b5b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X965 VDPWR sarlogic_0.valid a_10467_30465# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.1664 ps=1.8 w=0.64 l=0.15
X966 comparator_0.vin CDACnDriver_0.cdac_0.b4b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X967 comparator_0.vin CDACnDriver_0.cdac_0.b3 sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X968 VDPWR a_20607_30433# uo_out[3] VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X969 VGND a_16377_33915# a_16484_33915# VGND sky130_fd_pr__nfet_01v8 ad=0.097 pd=0.975 as=0.17225 ps=1.83 w=0.65 l=0.5
X970 VGND a_20607_30433# uo_out[3] VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X971 a_19538_31115# a_19370_31369# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0989 pd=0.995 as=0.12095 ps=1.085 w=0.64 l=0.15
X972 VGND sky130_fd_sc_hd__clkinv_16_0.Y a_12349_31913# VGND sky130_fd_pr__nfet_01v8 ad=0.1346 pd=1.15 as=0.0441 ps=0.63 w=0.42 l=0.15
X973 CDACnDriver_1.cdac_0.b7b sarlogic_0.D7 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X974 comparator_0.vin CDACnDriver_0.cdac_0.b3 sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X975 uo_out[7] a_19963_31271# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X976 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=0.59
X977 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X978 a_18526_31521# a_18358_31547# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1095 pd=1.075 as=0.17887 ps=1.26 w=0.75 l=0.15
X979 sarlogic_0.valid a_14656_34619# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X980 a_11723_30763# sky130_fd_sc_hd__clkinv_16_0.Y VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.0819 ps=0.81 w=0.42 l=0.15
X981 bootstrap_0.sky130_fd_pr__nfet_g5v0d10v5_WBA3NL_1.D bootstrap_0.sky130_fd_pr__nfet_g5v0d10v5_WBA3NL_1.D bootstrap_0.sky130_fd_pr__nfet_g5v0d10v5_WBA3NL_1.D VGND sky130_fd_pr__nfet_01v8 ad=0.31 pd=2.62 as=0.64 ps=5.28 w=1 l=0.15
X982 comparator_0.vin CDACnDriver_0.cdac_0.b5a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X983 VDPWR a_14403_24635# CDACnDriver_1.cdac_0.b7a VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X984 a_18358_31547# a_18085_31553# a_18273_31547# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.06825 pd=0.745 as=0.05775 ps=0.695 w=0.42 l=0.15
X985 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X986 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X987 VDPWR a_17387_30433# sarlogic_0.D3 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X988 VGND a_17387_30433# sarlogic_0.D3 VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X989 comparator_0.vin CDACnDriver_0.cdac_0.b5a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X990 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X991 a_19741_30465# a_19575_30465# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1664 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X992 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X993 VDPWR a_18031_29095# a_17947_29193# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1113 pd=1.37 as=0.0882 ps=0.84 w=0.42 l=0.15
X994 comparator_0.vip CDACnDriver_1.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X995 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=4.73
X996 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X997 VDPWR comparator_0.sky130_fd_sc_hd__nand2_1_2.A comparator_0.sky130_fd_sc_hd__nand2_1_2.Y VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X998 VDPWR clk sky130_fd_sc_hd__clkinv_16_0.Y VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.14 pd=1.28 as=0.14 ps=1.28 w=1 l=0.15
X999 VGND a_10885_24635# CDACnDriver_1.cdac_0.b5a VGND sky130_fd_pr__nfet_01v8 ad=0.1365 pd=1.07 as=0.091 ps=0.93 w=0.65 l=0.15
X1000 VGND a_13063_28969# a_13024_29095# VGND sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.1092 ps=1.36 w=0.42 l=0.15
X1001 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=4.73
X1002 a_18526_32203# a_18358_32457# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1095 pd=1.075 as=0.17887 ps=1.26 w=0.75 l=0.15
X1003 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1004 VGND a_20789_24635# CDACnDriver_0.cdac_0.b4a VGND sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X1005 a_17042_36949# sky130_fd_sc_hd__nor3_2_0.B a_17042_37203# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.28 pd=2.56 as=0.135 ps=1.27 w=1 l=0.15
X1006 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=0.59
X1007 VDPWR a_13431_30433# sarlogic_0.D7 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1008 bootstrap_0.sky130_fd_pr__nfet_01v8_UVMP7B_7.D bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.G1 ua[0] VGND sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.15
X1009 CDACnDriver_0.cdac_0.b2 sarlogic_0.D2b VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1010 VGND a_13431_30433# sarlogic_0.D7 VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X1011 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1012 a_17438_29193# a_16999_28827# a_17353_28827# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0621 pd=0.705 as=0.0813 ps=0.83 w=0.36 l=0.15
X1013 CDACnDriver_1.cdac_0.b5b sarlogic_0.clk3 a_10034_24532# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X1014 VGND a_18328_35349# a_18068_35349# VGND sky130_fd_pr__nfet_01v8 ad=0.10435 pd=1.01 as=0.169 ps=1.82 w=0.65 l=0.5
X1015 comparator_0.vin CDACnDriver_0.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1016 VDPWR sarlogic_0.clk4 a_15803_29377# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.1664 ps=1.8 w=0.64 l=0.15
X1017 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1018 a_20789_24635# sarlogic_0.clk4 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.185 ps=1.37 w=1 l=0.15
X1019 a_18494_24533# sarlogic_0.clk2 CDACnDriver_0.cdac_0.b6b VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1020 a_19370_30281# a_18931_29915# a_19285_29915# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0621 pd=0.705 as=0.0813 ps=0.83 w=0.36 l=0.15
X1021 VDPWR bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.D0 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.D0 sky130_fd_pr__pfet_01v8 ad=0.31 pd=2.62 as=0.31 ps=2.62 w=1 l=0.15
X1022 VDPWR a_18951_29345# a_18867_29371# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1113 pd=1.37 as=0.0882 ps=0.84 w=0.42 l=0.15
X1023 CDACnDriver_1.cdac_0.b6a a_12644_24635# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.15575 ps=1.355 w=1 l=0.15
X1024 VDPWR a_19030_24635# CDACnDriver_0.cdac_0.b5a VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.185 pd=1.37 as=0.15 ps=1.3 w=1 l=0.15
X1025 VGND a_18031_31271# a_18561_31003# VGND sky130_fd_pr__nfet_01v8 ad=0.10025 pd=0.985 as=0.1092 ps=1.36 w=0.42 l=0.15
X1026 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1027 VDPWR a_18031_31271# a_18561_31003# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.154 pd=1.335 as=0.1664 ps=1.8 w=0.64 l=0.15
X1028 sky130_fd_sc_hd__clkinv_16_0.Y clk VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0588 pd=0.7 as=0.0588 ps=0.7 w=0.42 l=0.15
X1029 a_20182_29345# a_20014_29371# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1095 pd=1.075 as=0.17887 ps=1.26 w=0.75 l=0.15
X1030 CDACnDriver_0.cdac_0.b5b sarlogic_0.D5b VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1031 a_18783_32457# a_18085_32091# a_18526_32203# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0684 pd=0.74 as=0.0989 ps=0.995 w=0.36 l=0.15
X1032 a_20109_29193# a_19575_28827# a_20014_29193# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07665 pd=0.785 as=0.06825 ps=0.745 w=0.42 l=0.15
X1033 uo_out[5] a_19963_30183# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1034 CDACnDriver_1.cdac_0.b2 sarlogic_0.clk6 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1035 sky130_fd_sc_hd__clkinv_16_0.Y clk VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.14 pd=1.28 as=0.14 ps=1.28 w=1 l=0.15
X1036 VDPWR a_13063_28969# a_13024_29095# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.1664 ps=1.8 w=0.64 l=0.15
X1037 a_8275_24525# sarlogic_0.clk4 CDACnDriver_1.cdac_0.b4b VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1038 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=0.59
X1039 sarlogic_0.comp_op a_15288_34593# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X1040 comparator_0.vip CDACnDriver_1.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1041 VDPWR a_15455_29095# a_15371_29193# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1113 pd=1.37 as=0.0882 ps=0.84 w=0.42 l=0.15
X1042 a_15288_34593# comparator_0.sky130_fd_sc_hd__nand2_1_2.A VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1043 VDPWR comparator_0.sky130_fd_sc_hd__nand2_1_1.A comparator_0.sky130_fd_sc_hd__nand2_1_2.A VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1044 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=0.59
X1045 a_16667_29371# a_15803_29377# a_16410_29345# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.1095 ps=1.075 w=0.42 l=0.15
X1046 uo_out[4] a_18951_32359# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1047 VGND sarlogic_0.D7b a_15512_25081# VGND sky130_fd_pr__nfet_01v8 ad=0.10675 pd=1.005 as=0.1113 ps=1.37 w=0.42 l=0.15
X1048 VGND a_20182_29345# a_20140_29749# VGND sky130_fd_pr__nfet_01v8 ad=0.12095 pd=1.085 as=0.0696 ps=0.765 w=0.42 l=0.15
X1049 VDPWR a_20789_25081# a_20789_24635# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1050 a_16337_29371# a_15803_29377# a_16242_29371# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07665 pd=0.785 as=0.06825 ps=0.745 w=0.42 l=0.15
X1051 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1052 a_17989_31003# a_16999_31003# a_17863_31369# VGND sky130_fd_pr__special_nfet_01v8 ad=0.066 pd=0.745 as=0.0684 ps=0.74 w=0.36 l=0.15
X1053 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1054 VDPWR sarlogic_0.x1.D sky130_fd_pr__res_generic_po w=0.48 l=0.5
X1055 a_15030_28939# a_14862_29193# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0989 pd=0.995 as=0.12095 ps=1.085 w=0.64 l=0.15
X1056 a_14862_29193# a_14423_28827# a_14777_28827# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0621 pd=0.705 as=0.0813 ps=0.83 w=0.36 l=0.15
X1057 comparator_0.vin CDACnDriver_0.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1058 a_12087_31925# a_11737_31553# a_11992_31913# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07245 pd=0.765 as=0.0651 ps=0.73 w=0.42 l=0.15
X1059 VDPWR sarlogic_0.clk1 CDACnDriver_1.cdac_0.b7b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1060 a_22889_24533# sarlogic_0.D3b VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1061 a_18358_31547# a_17919_31553# a_18273_31547# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0621 pd=0.705 as=0.0813 ps=0.83 w=0.36 l=0.15
X1062 a_18894_34735# a_18638_34735# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2173 pd=2.17 as=0.1701 ps=1.36 w=0.82 l=0.5
X1063 EOC_delay_0.sky130_fd_sc_hd__clkdlybuf4s50_1_1.X a_16484_33915# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1491 pd=1.55 as=0.097 ps=0.975 w=0.42 l=0.15
X1064 a_13575_30281# a_12951_29915# a_13467_29915# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1155 pd=0.97 as=0.07245 ps=0.765 w=0.42 l=0.15
X1065 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1066 comparator_0.vip CDACnDriver_1.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1067 CDACnDriver_0.cdac_0.b7a a_15512_24635# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X1068 VDPWR a_16962_30433# a_16889_30459# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.17887 pd=1.26 as=0.07665 ps=0.785 w=0.42 l=0.15
X1069 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1070 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1071 sarlogic_0.D5b a_16445_29915# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.10025 ps=0.985 w=0.65 l=0.15
X1072 VGND a_13195_30977# a_13129_31003# VGND sky130_fd_pr__nfet_01v8 ad=0.12495 pd=1.015 as=0.0669 ps=0.75 w=0.42 l=0.15
X1073 a_15157_30433# a_14939_30837# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0999 pd=0.985 as=0.1346 ps=1.15 w=0.64 l=0.15
X1074 VGND uio_out[0] a_18931_31003# VGND sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.1092 ps=1.36 w=0.42 l=0.15
X1075 a_13182_31369# a_12105_31003# a_13020_31003# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.0588 ps=0.7 w=0.42 l=0.15
X1076 a_17113_33915# a_16857_33915# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2173 pd=2.17 as=0.1701 ps=1.36 w=0.82 l=0.5
X1077 VGND VGND VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0693 pd=0.75 as=0 ps=0 w=0.42 l=0.15
X1078 a_17863_30281# a_17165_29915# a_17606_30027# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0684 pd=0.74 as=0.0989 ps=0.995 w=0.36 l=0.15
X1079 a_11737_31553# a_11571_31553# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X1080 sarlogic_0.clk5 a_13655_29675# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.2087 ps=2.02 w=0.65 l=0.15
X1081 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1082 a_20014_29193# a_19741_28827# a_19929_28827# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.06825 pd=0.745 as=0.05775 ps=0.695 w=0.42 l=0.15
X1083 VGND sarlogic_0.valid a_12951_29915# VGND sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.1092 ps=1.36 w=0.42 l=0.15
X1084 VDPWR a_14656_34619# sarlogic_0.valid VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1085 VGND a_18526_31521# a_18484_31925# VGND sky130_fd_pr__nfet_01v8 ad=0.12095 pd=1.085 as=0.0696 ps=0.765 w=0.42 l=0.15
X1086 bootstrap_0.sky130_fd_pr__pfet_01v8_W93KHH_2.D bootstrap_0.sky130_fd_pr__pfet_01v8_W93KHH_2.D bootstrap_0.sky130_fd_pr__pfet_01v8_W93KHH_2.D VDPWR sky130_fd_pr__pfet_01v8 ad=0.29 pd=2.58 as=0.87 ps=7.74 w=1 l=0.15
X1087 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1088 VDPWR sarlogic_0.D6 CDACnDriver_1.cdac_0.b6b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1089 delay_control_0.sky130_fd_sc_hd__clkdlybuf4s50_1_6.X a_16793_34735# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1491 pd=1.55 as=0.097 ps=0.975 w=0.42 l=0.15
X1090 VDPWR uio_out[0] a_19575_30465# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.1664 ps=1.8 w=0.64 l=0.15
X1091 CDACnDriver_0.cdac_0.b7a a_15512_24635# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.10675 ps=1.005 w=0.65 l=0.15
X1092 a_15674_31003# sky130_fd_sc_hd__clkinv_16_0.Y VGND VGND sky130_fd_pr__nfet_01v8 ad=0.06405 pd=0.725 as=0.12495 ps=1.015 w=0.42 l=0.15
X1093 VDPWR clk sky130_fd_sc_hd__clkinv_16_0.Y VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.14 pd=1.28 as=0.14 ps=1.28 w=1 l=0.15
X1094 a_15157_30433# a_14939_30837# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.12915 pd=1.185 as=0.2184 ps=2.2 w=0.84 l=0.15
X1095 VGND a_20182_28939# a_20140_28827# VGND sky130_fd_pr__nfet_01v8 ad=0.12095 pd=1.085 as=0.0696 ps=0.765 w=0.42 l=0.15
X1096 VGND sarlogic_0.clk6 a_16999_28827# VGND sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.1092 ps=1.36 w=0.42 l=0.15
X1097 VDPWR sarlogic_0.clk6 CDACnDriver_1.cdac_0.b2 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1098 comparator_0.sky130_fd_sc_hd__nand2_1_1.A sky130_fd_sc_hd__nor3_2_0.Y VDPWR VDPWR sky130_fd_pr__pfet_01v8 ad=0.1302 pd=1.46 as=0.1302 ps=1.46 w=0.42 l=0.15
X1099 VDPWR sarlogic_0.D3 CDACnDriver_1.cdac_0.b3 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1100 comparator_0.sky130_fd_sc_hd__nand2_1_2.B comparator_0.sky130_fd_sc_hd__nand2_1_2.B comparator_0.sky130_fd_sc_hd__nand2_1_2.B VDPWR sky130_fd_pr__pfet_01v8 ad=0.1302 pd=1.46 as=0 ps=0 w=0.42 l=0.15
X1101 comparator_0.vin CDACnDriver_0.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1102 a_14589_30465# a_14423_30465# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X1103 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1104 sarlogic_0.D7 a_13431_30433# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1105 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1106 sarlogic_0.D7 a_13431_30433# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1107 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1108 comparator_0.vin CDACnDriver_0.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1109 a_14862_29193# a_14589_28827# a_14777_28827# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.06825 pd=0.745 as=0.05775 ps=0.695 w=0.42 l=0.15
X1110 a_19030_24635# sarlogic_0.clk3 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.185 ps=1.37 w=1 l=0.15
X1111 VGND a_9126_24635# CDACnDriver_1.cdac_0.b4a VGND sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X1112 a_18273_32091# sarlogic_0.D4 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.05775 pd=0.695 as=0.1092 ps=1.36 w=0.42 l=0.15
X1113 a_10885_24635# a_10885_25081# a_10911_25037# VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.0715 ps=0.87 w=0.65 l=0.15
X1114 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1115 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1116 a_17353_31003# sarlogic_0.comp_op VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0813 pd=0.83 as=0.1092 ps=1.36 w=0.42 l=0.15
X1117 sky130_fd_sc_hd__clkinv_16_0.Y clk VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0588 pd=0.7 as=0.0588 ps=0.7 w=0.42 l=0.15
X1118 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1119 comparator_0.vin CDACnDriver_0.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1120 a_10633_30465# a_10467_30465# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X1121 CDACnDriver_0.cdac_0.b3 sarlogic_0.clk5 a_22889_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X1122 VDPWR sarlogic_0.clk6 a_16999_28827# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.1664 ps=1.8 w=0.64 l=0.15
X1123 a_13642_29371# a_12565_29377# a_13480_29749# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.0588 ps=0.7 w=0.42 l=0.15
X1124 VGND a_19963_30183# uo_out[5] VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X1125 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1126 VGND a_12644_24635# CDACnDriver_1.cdac_0.b6a VGND sky130_fd_pr__nfet_01v8 ad=0.1365 pd=1.07 as=0.091 ps=0.93 w=0.65 l=0.15
X1127 sarlogic_0.D4b a_17365_29371# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.10025 ps=0.985 w=0.65 l=0.15
X1128 a_17165_31003# a_16999_31003# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1664 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X1129 comparator_0.sky130_fd_sc_hd__nand2_1_2.A comparator_0.sky130_fd_sc_hd__nand2_1_2.Y VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X1130 VDPWR a_19030_25081# a_19030_24635# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1131 VGND a_20607_29095# uo_out[0] VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X1132 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=4.73
X1133 VGND sarlogic_0.clk2 a_14423_28827# VGND sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.1092 ps=1.36 w=0.42 l=0.15
X1134 VDPWR a_17422_34735# a_17529_34735# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15575 pd=1.325 as=0.2173 ps=2.17 w=0.82 l=0.5
X1135 comparator_0.vip CDACnDriver_1.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1136 sky130_fd_sc_hd__nor3_2_0.B a_15495_30977# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.2087 ps=2.02 w=0.65 l=0.15
X1137 VGND a_13961_30459# sarlogic_0.D7b VGND sky130_fd_pr__nfet_01v8 ad=0.17225 pd=1.83 as=0.08775 ps=0.92 w=0.65 l=0.15
X1138 comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_0.S0 comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_0.S0 comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_0.S0 VGND sky130_fd_pr__nfet_01v8 ad=0.725 pd=5.58 as=0 ps=0 w=2.5 l=0.2
X1139 VDPWR a_14656_34619# sarlogic_0.valid VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1140 VDPWR a_12827_31851# sarlogic_0.clk2 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1141 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=2.89
X1142 a_19538_30027# a_19370_30281# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1095 pd=1.075 as=0.17887 ps=1.26 w=0.75 l=0.15
X1143 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1144 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1145 comparator_0.vip CDACnDriver_1.cdac_0.b1 sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1146 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1147 a_17165_29915# a_16999_29915# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1664 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X1148 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1149 CDACnDriver_1.cdac_0.b6b sarlogic_0.D6 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1150 comparator_0.vip CDACnDriver_1.cdac_0.b4a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1151 VDPWR a_20607_29345# a_20523_29371# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1113 pd=1.37 as=0.0882 ps=0.84 w=0.42 l=0.15
X1152 a_19496_31003# a_19097_31003# a_19370_31369# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0696 pd=0.765 as=0.0621 ps=0.705 w=0.36 l=0.15
X1153 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1154 VDPWR a_9126_24635# CDACnDriver_1.cdac_0.b4a VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.185 pd=1.37 as=0.15 ps=1.3 w=1 l=0.15
X1155 comparator_0.vip CDACnDriver_1.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1156 VDPWR sarlogic_0.clk2 a_14423_28827# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.1664 ps=1.8 w=0.64 l=0.15
X1157 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1158 a_18158_34735# a_17902_34735# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.10435 ps=1.01 w=0.65 l=0.5
X1159 VGND sarlogic_0.D5b a_20253_24532# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1160 comparator_0.sky130_fd_sc_hd__nand2_1_1.A comparator_0.sky130_fd_sc_hd__nand2_1_1.A comparator_0.sky130_fd_sc_hd__nand2_1_1.A VDPWR sky130_fd_pr__pfet_01v8 ad=0.1302 pd=1.46 as=0 ps=0 w=0.42 l=0.15
X1161 a_14164_36239# comparator_0.sky130_fd_sc_hd__nand2_1_2.B VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X1162 VDPWR comparator_0.sky130_fd_sc_hd__nand2_1_1.A comparator_0.sky130_fd_sc_hd__nand2_1_2.B VDPWR sky130_fd_pr__pfet_01v8 ad=0.1302 pd=1.46 as=0.1302 ps=1.46 w=0.42 l=0.15
X1163 VDPWR a_20182_29345# a_20109_29371# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.17887 pd=1.26 as=0.07665 ps=0.785 w=0.42 l=0.15
X1164 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1165 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=2.89
X1166 a_17438_31369# a_17165_31003# a_17353_31003# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.06825 pd=0.745 as=0.05775 ps=0.695 w=0.42 l=0.15
X1167 VGND VGND VGND VGND sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0 ps=0 w=1 l=0.15
X1168 CDACnDriver_1.cdac_0.b3 sarlogic_0.clk5 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X1169 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1170 a_18273_31547# sarlogic_0.D6 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.05775 pd=0.695 as=0.1092 ps=1.36 w=0.42 l=0.15
X1171 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=1.97
X1172 comparator_0.vip CDACnDriver_1.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1173 CDACnDriver_1.cdac_0.b5b sarlogic_0.clk3 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1174 comparator_0.vin CDACnDriver_0.cdac_0.b4b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1175 CDACnDriver_0.cdac_0.b4a a_20789_24635# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.15575 ps=1.355 w=1 l=0.15
X1176 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1177 VGND a_17271_24635# CDACnDriver_0.cdac_0.b6a VGND sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X1178 a_13372_29915# sarlogic_0.clk5 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.066 pd=0.745 as=0.2205 ps=1.89 w=0.42 l=0.15
X1179 CDACnDriver_1.cdac_0.b1 sarlogic_0.clk7 a_5644_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1180 VGND sky130_fd_sc_hd__clkinv_16_0.Y bootstrap_0.sky130_fd_pr__nfet_g5v0d10v5_WBA3NL_1.D VGND sky130_fd_pr__nfet_01v8 ad=0.165 pd=1.33 as=0.165 ps=1.33 w=1 l=0.15
X1181 VDPWR a_19795_31369# a_19963_31271# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.27 ps=2.54 w=1 l=0.15
X1182 comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_0.S0 comparator_0.vin comparator_0.sky130_fd_pr__pfet_01v8_F3E8BM_0.D2 VGND sky130_fd_pr__nfet_01v8 ad=0.725 pd=5.58 as=0.725 ps=5.58 w=2.5 l=0.2
X1183 VDPWR sarlogic_0.D2b CDACnDriver_0.cdac_0.b2 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1184 a_16667_29371# a_15969_29377# a_16410_29345# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0684 pd=0.74 as=0.0989 ps=0.995 w=0.36 l=0.15
X1185 a_17113_33915# a_16857_33915# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.10435 ps=1.01 w=0.65 l=0.5
X1186 a_16735_24533# sarlogic_0.D7b VGND VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X1187 VDPWR a_18561_29915# sarlogic_0.D0b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.265 pd=2.53 as=0.135 ps=1.27 w=1 l=0.15
X1188 VGND a_15490_30027# a_15448_29915# VGND sky130_fd_pr__nfet_01v8 ad=0.12095 pd=1.085 as=0.0696 ps=0.765 w=0.42 l=0.15
X1189 sarlogic_0.clk3 a_13195_30977# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.3012 ps=2.66 w=1 l=0.15
X1190 VDPWR a_11723_30763# sarlogic_0.clk1 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1191 a_17303_30459# a_16521_30465# a_17219_30459# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0882 pd=0.84 as=0.0567 ps=0.69 w=0.42 l=0.15
X1192 VGND sarlogic_0.valid a_16430_34735# VGND sky130_fd_pr__nfet_01v8 ad=0.10435 pd=1.01 as=0.1134 ps=1.38 w=0.42 l=0.15
X1193 comparator_0.vin CDACnDriver_0.cdac_0.b5b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1194 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1195 a_17438_30281# a_17165_29915# a_17353_29915# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.06825 pd=0.745 as=0.05775 ps=0.695 w=0.42 l=0.15
X1196 comparator_0.sky130_fd_sc_hd__nand2_1_1.Y comparator_0.sky130_fd_sc_hd__nand2_1_2.B VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X1197 VDPWR sarlogic_0.D5b CDACnDriver_0.cdac_0.b5b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1198 VGND a_15288_34593# sarlogic_0.comp_op VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1199 CDACnDriver_1.cdac_0.b5a a_10885_24635# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15 pd=1.3 as=0.135 ps=1.27 w=1 l=0.15
X1200 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1201 comparator_0.von a_14104_34619# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1202 VDPWR a_12459_28801# sarlogic_0.clk4 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.3012 pd=2.66 as=0.135 ps=1.27 w=1 l=0.15
X1203 VGND a_19963_31271# a_19921_31003# VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.066 ps=0.745 w=0.42 l=0.15
X1204 a_7398_24533# sarlogic_0.D3 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X1205 a_17606_28939# a_17438_29193# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0989 pd=0.995 as=0.12095 ps=1.085 w=0.64 l=0.15
X1206 VGND sarlogic_0.valid a_10467_30465# VGND sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.1092 ps=1.36 w=0.42 l=0.15
X1207 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1208 VGND sarlogic_0.valid a_14239_31003# VGND sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.1092 ps=1.36 w=0.42 l=0.15
X1209 a_12964_30837# a_12565_30465# a_12838_30459# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0696 pd=0.765 as=0.0621 ps=0.705 w=0.36 l=0.15
X1210 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.D0 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.G1 VDPWR bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.D0 sky130_fd_pr__pfet_01v8 ad=0.31 pd=2.62 as=0.31 ps=2.62 w=1 l=0.15
X1211 a_18705_35527# a_18804_35349# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2173 pd=2.17 as=0.15575 ps=1.325 w=0.82 l=0.5
X1212 VDPWR a_14104_34619# comparator_0.von VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1213 CDACnDriver_1.cdac_0.b5a a_10885_24635# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X1214 a_19538_30027# a_19370_30281# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0989 pd=0.995 as=0.12095 ps=1.085 w=0.64 l=0.15
X1215 a_12360_31003# sarlogic_0.clk2 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0651 pd=0.73 as=0.1092 ps=1.36 w=0.42 l=0.15
X1216 VDPWR sarlogic_0.D4b CDACnDriver_0.cdac_0.b4b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1217 uo_out[5] a_19963_30183# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1218 a_19097_31003# a_18931_31003# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X1219 comparator_0.vip CDACnDriver_1.cdac_0.b3 sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1220 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1221 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1222 comparator_0.vin CDACnDriver_0.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1223 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=2.89
X1224 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=0.59
X1225 a_12980_29193# a_12459_28801# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.0819 ps=0.81 w=0.42 l=0.15
X1226 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=0.59
X1227 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=1.97
X1228 a_18909_32091# a_17919_32091# a_18783_32457# VGND sky130_fd_pr__special_nfet_01v8 ad=0.066 pd=0.745 as=0.0684 ps=0.74 w=0.36 l=0.15
X1229 uo_out[3] a_20607_30433# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1230 a_19741_30465# a_19575_30465# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X1231 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1232 uo_out[3] a_20607_30433# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1233 a_20253_24532# sarlogic_0.clk3 CDACnDriver_0.cdac_0.b5b VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1234 a_12644_24635# a_12644_25081# a_12670_25037# VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.0715 ps=0.87 w=0.65 l=0.15
X1235 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=1.97
X1236 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1237 CDACnDriver_0.cdac_0.b4b sarlogic_0.D4b VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1238 comparator_0.vip CDACnDriver_1.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1239 VGND a_18031_29095# a_17989_28827# VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.066 ps=0.745 w=0.42 l=0.15
X1240 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1241 comparator_0.vin CDACnDriver_0.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1242 VDPWR sarlogic_0.clk3 CDACnDriver_1.cdac_0.b5b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1243 a_18484_29749# a_18085_29377# a_18358_29371# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0696 pd=0.765 as=0.0621 ps=0.705 w=0.36 l=0.15
X1244 VGND clk sky130_fd_sc_hd__clkinv_16_0.Y VGND sky130_fd_pr__nfet_01v8 ad=0.0588 pd=0.7 as=0.0588 ps=0.7 w=0.42 l=0.15
X1245 sarlogic_0.valid a_14656_34619# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1246 a_9126_24635# sarlogic_0.clk4 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.185 ps=1.37 w=1 l=0.15
X1247 CDACnDriver_1.cdac_0.b5a a_10885_24635# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.10675 ps=1.005 w=0.65 l=0.15
X1248 a_5644_24533# sarlogic_0.clk7 CDACnDriver_1.cdac_0.b1 VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1249 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=0.59
X1250 CDACnDriver_0.cdac_0.b2 sarlogic_0.clk6 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X1251 VGND sarlogic_0.clk4 a_15803_29377# VGND sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.1092 ps=1.36 w=0.42 l=0.15
X1252 VDPWR a_18158_34735# a_18265_34735# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15575 pd=1.325 as=0.2173 ps=2.17 w=0.82 l=0.5
X1253 VGND sarlogic_0.D7b a_16735_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1254 VGND a_18031_30183# a_18561_29915# VGND sky130_fd_pr__nfet_01v8 ad=0.10025 pd=0.985 as=0.1092 ps=1.36 w=0.42 l=0.15
X1255 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1256 CDACnDriver_0.cdac_0.b2 sarlogic_0.clk6 a_23766_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1257 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1258 CDACnDriver_0.cdac_0.b7b sarlogic_0.D7b VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1259 comparator_0.vip CDACnDriver_1.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1260 comparator_0.vin CDACnDriver_0.cdac_0.b4a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1261 CDACnDriver_0.cdac_0.b5b sarlogic_0.clk3 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X1262 VDPWR a_9126_25081# a_9126_24635# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1263 CDACnDriver_0.cdac_0.b5a a_19030_24635# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.15575 ps=1.355 w=1 l=0.15
X1264 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 VGND sky130_fd_pr__nfet_01v8 ad=0.145 pd=1.58 as=0 ps=0 w=0.5 l=0.15
X1265 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1266 a_12820_29737# sarlogic_0.clk4 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0651 pd=0.73 as=0.1092 ps=1.36 w=0.42 l=0.15
X1267 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1268 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1269 VDPWR a_10885_24635# CDACnDriver_1.cdac_0.b5a VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1270 a_17989_29915# a_16999_29915# a_17863_30281# VGND sky130_fd_pr__special_nfet_01v8 ad=0.066 pd=0.745 as=0.0684 ps=0.74 w=0.36 l=0.15
X1271 CDACnDriver_1.cdac_0.b6b sarlogic_0.clk2 a_11793_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1272 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=4.73
X1273 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=4.73
X1274 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1275 VGND a_15455_29095# a_15413_28827# VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.066 ps=0.745 w=0.42 l=0.15
X1276 VDPWR a_14207_29889# sarlogic_0.clk6 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1277 a_12652_31925# a_11571_31553# a_12305_31521# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0588 pd=0.7 as=0.12915 ps=1.185 w=0.42 l=0.15
X1278 VGND sarlogic_0.D3 a_7398_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1279 VGND a_17917_30459# sarlogic_0.D3b VGND sky130_fd_pr__nfet_01v8 ad=0.17225 pd=1.83 as=0.08775 ps=0.92 w=0.65 l=0.15
X1280 CDACnDriver_1.cdac_0.b4b sarlogic_0.clk4 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1281 a_17219_30459# a_16355_30465# a_16962_30433# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.1095 ps=1.075 w=0.42 l=0.15
X1282 a_17438_31369# a_16999_31003# a_17353_31003# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0621 pd=0.705 as=0.0813 ps=0.83 w=0.36 l=0.15
X1283 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1284 VGND a_15495_30977# sky130_fd_sc_hd__nor3_2_0.B VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X1285 sarlogic_0.comp_op a_15288_34593# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1286 sarlogic_0.D6 a_15455_29095# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1287 comparator_0.vip CDACnDriver_1.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1288 a_13263_30459# a_12399_30465# a_13006_30433# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.1095 ps=1.075 w=0.42 l=0.15
X1289 a_10983_30837# a_10633_30465# a_10888_30825# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07245 pd=0.765 as=0.0651 ps=0.73 w=0.42 l=0.15
X1290 VGND a_19030_24635# CDACnDriver_0.cdac_0.b5a VGND sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X1291 VDPWR comparator_0.sky130_fd_sc_hd__nand2_1_2.Y a_14104_34619# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X1292 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1293 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=4.73
X1294 sarlogic_0.clk4 a_12459_28801# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X1295 VGND uio_out[0] a_18931_29915# VGND sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.1092 ps=1.36 w=0.42 l=0.15
X1296 bootstrap_0.sky130_fd_pr__nfet_g5v0d10v5_WBA3NL_5.S sky130_fd_sc_hd__clkinv_16_0.Y VGND VGND sky130_fd_pr__nfet_01v8 ad=0.165 pd=1.33 as=0.165 ps=1.33 w=1 l=0.15
X1297 a_18273_32091# sarlogic_0.D4 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0813 pd=0.83 as=0.1092 ps=1.36 w=0.42 l=0.15
X1298 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1299 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1300 a_18494_24533# sarlogic_0.D6b VGND VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X1301 a_10888_30825# sarlogic_0.x1.D VGND VGND sky130_fd_pr__nfet_01v8 ad=0.066 pd=0.745 as=0.2205 ps=1.89 w=0.42 l=0.15
X1302 a_12827_31851# a_12652_31925# a_13006_31913# VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.06405 ps=0.725 w=0.42 l=0.15
X1303 comparator_0.vin CDACnDriver_0.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1304 a_18328_35349# delay_control_0.sky130_fd_sc_hd__clkdlybuf4s50_1_5.X VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.27 pd=2.54 as=0.1701 ps=1.36 w=1 l=0.15
X1305 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1306 VGND sarlogic_0.D2 a_6521_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1307 comparator_0.vin CDACnDriver_0.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1308 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1309 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=2.89
X1310 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1311 VGND a_17233_35527# sky130_fd_sc_hd__nor3_2_0.A VGND sky130_fd_pr__nfet_01v8 ad=0.097 pd=0.975 as=0.1491 ps=1.55 w=0.42 l=0.15
X1312 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1313 a_19741_29377# a_19575_29377# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1664 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X1314 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=4.73
X1315 VDPWR a_13006_30433# a_12933_30459# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.17887 pd=1.26 as=0.07665 ps=0.785 w=0.42 l=0.15
X1316 bootstrap_0.sky130_fd_pr__nfet_01v8_UVMP7B_7.D bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.G1 bootstrap_0.sky130_fd_pr__pfet_01v8_W93KHH_2.D VGND sky130_fd_pr__nfet_01v8 ad=0.145 pd=1.58 as=0.145 ps=1.58 w=0.5 l=0.15
X1317 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1318 VDPWR a_20439_30459# a_20607_30433# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.27 ps=2.54 w=1 l=0.15
X1319 VGND uio_out[0] a_19575_30465# VGND sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.1092 ps=1.36 w=0.42 l=0.15
X1320 a_11548_30837# a_10467_30465# a_11201_30433# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0588 pd=0.7 as=0.12915 ps=1.185 w=0.42 l=0.15
X1321 VDPWR sarlogic_0.D6 CDACnDriver_1.cdac_0.b6b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1322 VGND a_20439_30459# a_20607_30433# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X1323 a_15495_30977# sky130_fd_sc_hd__clkinv_16_0.Y VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.0819 ps=0.81 w=0.42 l=0.15
X1324 a_23766_24533# sarlogic_0.clk6 CDACnDriver_0.cdac_0.b2 VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1325 VDPWR a_15679_30763# sarlogic_0.clk7 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1326 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1327 VDPWR sarlogic_0.clk1 CDACnDriver_0.cdac_0.b7b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1328 VDPWR clk sky130_fd_sc_hd__clkinv_16_0.Y VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.14 pd=1.28 as=0.14 ps=1.28 w=1 l=0.15
X1329 comparator_0.vip CDACnDriver_1.cdac_0.b4b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1330 a_13219_29064# a_13024_29095# a_13529_28827# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0594 pd=0.69 as=0.1401 ps=1.1 w=0.36 l=0.15
X1331 VGND sarlogic_0.D7 a_13552_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1332 a_14194_30281# a_13117_29915# a_14032_29915# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.0588 ps=0.7 w=0.42 l=0.15
X1333 a_14973_31245# a_14755_31003# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0999 pd=0.985 as=0.1346 ps=1.15 w=0.64 l=0.15
X1334 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1335 CDACnDriver_1.cdac_0.b1 sarlogic_0.D1 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1336 a_18526_29345# a_18358_29371# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1095 pd=1.075 as=0.17887 ps=1.26 w=0.75 l=0.15
X1337 a_20439_30459# a_19575_30465# a_20182_30433# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.1095 ps=1.075 w=0.42 l=0.15
X1338 CDACnDriver_1.cdac_0.b6a a_12644_24635# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X1339 a_18358_29371# a_18085_29377# a_18273_29371# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.06825 pd=0.745 as=0.05775 ps=0.695 w=0.42 l=0.15
X1340 VDPWR a_11548_30837# a_11723_30763# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1134 pd=1.38 as=0.0567 ps=0.69 w=0.42 l=0.15
X1341 a_11793_24533# sarlogic_0.clk2 CDACnDriver_1.cdac_0.b6b VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1342 a_17969_35527# a_18068_35349# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2173 pd=2.17 as=0.15575 ps=1.325 w=0.82 l=0.5
X1343 VDPWR a_14403_24635# CDACnDriver_1.cdac_0.b7a VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.185 pd=1.37 as=0.15 ps=1.3 w=1 l=0.15
X1344 VDPWR sarlogic_0.D4 a_9126_25081# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15575 pd=1.355 as=0.1113 ps=1.37 w=0.42 l=0.15
X1345 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1346 VGND a_17863_29193# a_18031_29095# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X1347 a_17353_29915# sarlogic_0.comp_op VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0813 pd=0.83 as=0.1092 ps=1.36 w=0.42 l=0.15
X1348 a_17353_31003# sarlogic_0.comp_op VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.05775 pd=0.695 as=0.1092 ps=1.36 w=0.42 l=0.15
X1349 a_14863_31369# sky130_fd_sc_hd__clkinv_16_0.Y VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1092 pd=1.36 as=0.07035 ps=0.755 w=0.42 l=0.15
X1350 a_14755_31003# a_14239_31003# a_14660_31003# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0594 pd=0.69 as=0.066 ps=0.745 w=0.36 l=0.15
X1351 comparator_0.vip CDACnDriver_1.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1352 VGND clk sky130_fd_sc_hd__clkinv_16_0.Y VGND sky130_fd_pr__nfet_01v8 ad=0.06615 pd=0.735 as=0.09135 ps=0.855 w=0.42 l=0.15
X1353 CDACnDriver_0.cdac_0.b4b sarlogic_0.clk4 a_22012_24525# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1354 a_16410_29345# a_16242_29371# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0989 pd=0.995 as=0.12095 ps=1.085 w=0.64 l=0.15
X1355 a_20182_28939# a_20014_29193# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1095 pd=1.075 as=0.17887 ps=1.26 w=0.75 l=0.15
X1356 comparator_0.vip CDACnDriver_1.cdac_0.b5b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1357 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1358 VGND sarlogic_0.clk7 a_16999_31003# VGND sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.1092 ps=1.36 w=0.42 l=0.15
X1359 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=4.73
X1360 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1361 a_15969_29377# a_15803_29377# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1664 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X1362 CDACnDriver_1.cdac_0.b6a a_12644_24635# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.10675 ps=1.005 w=0.65 l=0.15
X1363 a_17353_29915# sarlogic_0.comp_op VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.05775 pd=0.695 as=0.1092 ps=1.36 w=0.42 l=0.15
X1364 sarlogic_0.D3b a_17917_30459# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.10025 ps=0.985 w=0.65 l=0.15
X1365 VGND sarlogic_0.D6b a_18494_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1366 a_12746_29079# a_13024_29095# a_12980_29193# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0588 pd=0.7 as=0.0567 ps=0.69 w=0.42 l=0.15
X1367 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1368 uo_out[0] a_20607_29095# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1369 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1370 a_13655_29675# a_13480_29749# a_13834_29737# VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.06405 ps=0.725 w=0.42 l=0.15
X1371 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1372 comparator_0.vin CDACnDriver_0.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1373 a_6521_24533# sarlogic_0.clk6 CDACnDriver_1.cdac_0.b2 VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1374 CDACnDriver_0.cdac_0.b6b sarlogic_0.D6b VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1375 a_17564_28827# a_17165_28827# a_17438_29193# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0696 pd=0.765 as=0.0621 ps=0.705 w=0.36 l=0.15
X1376 VGND a_15287_29193# a_15455_29095# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X1377 VDPWR sarlogic_0.valid a_11939_31003# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.1664 ps=1.8 w=0.64 l=0.15
X1378 VDPWR clk sky130_fd_sc_hd__clkinv_16_0.Y VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.14 pd=1.28 as=0.14 ps=1.28 w=1 l=0.15
X1379 CDACnDriver_0.cdac_0.b1 sarlogic_0.clk7 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1380 a_19795_31369# a_18931_31003# a_19538_31115# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.1095 ps=1.075 w=0.42 l=0.15
X1381 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1382 VDPWR a_18951_32359# uo_out[4] VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1383 VDPWR sarlogic_0.D2 CDACnDriver_1.cdac_0.b2 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1384 a_19496_29915# a_19097_29915# a_19370_30281# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0696 pd=0.765 as=0.0621 ps=0.705 w=0.36 l=0.15
X1385 sarlogic_0.D7b a_13961_30459# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.10025 ps=0.985 w=0.65 l=0.15
X1386 a_19465_31369# a_18931_31003# a_19370_31369# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07665 pd=0.785 as=0.06825 ps=0.745 w=0.42 l=0.15
X1387 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1388 CDACnDriver_0.cdac_0.b4b sarlogic_0.D4b VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1389 VGND sarlogic_0.D1b a_24643_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1390 CDACnDriver_1.cdac_0.b6b sarlogic_0.clk2 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X1391 VGND a_16835_29345# a_16793_29749# VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.066 ps=0.745 w=0.42 l=0.15
X1392 a_13195_30977# a_13020_31003# a_13374_31003# VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.06405 ps=0.725 w=0.42 l=0.15
X1393 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1394 a_11079_30837# a_10633_30465# a_10983_30837# VGND sky130_fd_pr__special_nfet_01v8 ad=0.1401 pd=1.1 as=0.0594 ps=0.69 w=0.36 l=0.15
X1395 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1396 a_16377_33915# a_16121_33915# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2173 pd=2.17 as=0.1701 ps=1.36 w=0.82 l=0.5
X1397 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=2.89
X1398 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1399 CDACnDriver_1.cdac_0.b4a a_9126_24635# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.15575 ps=1.355 w=1 l=0.15
X1400 comparator_0.vin CDACnDriver_0.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1401 a_13552_24533# sarlogic_0.clk1 CDACnDriver_1.cdac_0.b7b VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1402 a_13685_30157# a_13467_29915# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0999 pd=0.985 as=0.1346 ps=1.15 w=0.64 l=0.15
X1403 VGND a_20789_24635# CDACnDriver_0.cdac_0.b4a VGND sky130_fd_pr__nfet_01v8 ad=0.1365 pd=1.07 as=0.091 ps=0.93 w=0.65 l=0.15
X1404 VDPWR sarlogic_0.clk7 CDACnDriver_1.cdac_0.b1 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1405 VGND a_15915_30183# a_16445_29915# VGND sky130_fd_pr__nfet_01v8 ad=0.10025 pd=0.985 as=0.1092 ps=1.36 w=0.42 l=0.15
X1406 VDPWR a_19538_31115# a_19465_31369# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.17887 pd=1.26 as=0.07665 ps=0.785 w=0.42 l=0.15
X1407 a_19795_30281# a_18931_29915# a_19538_30027# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.1095 ps=1.075 w=0.42 l=0.15
X1408 VDPWR uio_out[0] a_19575_29377# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.1664 ps=1.8 w=0.64 l=0.15
X1409 a_19465_30281# a_18931_29915# a_19370_30281# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07665 pd=0.785 as=0.06825 ps=0.745 w=0.42 l=0.15
X1410 sky130_fd_sc_hd__clkinv_16_0.Y clk VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0588 pd=0.7 as=0.0588 ps=0.7 w=0.42 l=0.15
X1411 a_19929_30459# sarlogic_0.D3 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.05775 pd=0.695 as=0.1092 ps=1.36 w=0.42 l=0.15
X1412 VGND a_16445_29915# sarlogic_0.D5b VGND sky130_fd_pr__nfet_01v8 ad=0.17225 pd=1.83 as=0.08775 ps=0.92 w=0.65 l=0.15
X1413 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1414 VDPWR a_13195_30977# a_13182_31369# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0819 pd=0.81 as=0.0567 ps=0.69 w=0.42 l=0.15
X1415 VDPWR a_17969_35527# delay_control_0.sky130_fd_sc_hd__clkdlybuf4s50_1_4.X VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15575 pd=1.325 as=0.355 ps=2.71 w=1 l=0.15
X1416 a_18705_35527# a_18804_35349# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.17225 pd=1.83 as=0.097 ps=0.975 w=0.65 l=0.5
X1417 VGND delay_control_0.sky130_fd_sc_hd__clkdlybuf4s50_1_2.A a_18638_34735# VGND sky130_fd_pr__nfet_01v8 ad=0.10435 pd=1.01 as=0.1134 ps=1.38 w=0.42 l=0.15
X1418 comparator_0.vip CDACnDriver_1.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1419 a_14988_28827# a_14589_28827# a_14862_29193# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0696 pd=0.765 as=0.0621 ps=0.705 w=0.36 l=0.15
X1420 a_12195_31547# a_11571_31553# a_12087_31925# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1155 pd=0.97 as=0.07245 ps=0.765 w=0.42 l=0.15
X1421 sarlogic_0.clk7 a_15679_30763# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.3012 ps=2.66 w=1 l=0.15
X1422 comparator_0.sky130_fd_pr__pfet_01v8_F3E8BM_0.D2 comparator_0.vip comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_1.D0 VGND sky130_fd_pr__nfet_01v8 ad=0.725 pd=5.58 as=0.725 ps=5.58 w=2.5 l=0.2
X1423 a_18484_31925# a_18085_31553# a_18358_31547# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0696 pd=0.765 as=0.0621 ps=0.705 w=0.36 l=0.15
X1424 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=2.89
X1425 a_16735_24533# sarlogic_0.D7b VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1426 VDPWR comparator_0.sky130_fd_sc_hd__nand2_1_1.Y a_14656_34619# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X1427 VDPWR sarlogic_0.clk3 a_13782_29193# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1092 pd=1.36 as=0.0651 ps=0.73 w=0.42 l=0.15
X1428 comparator_0.vin CDACnDriver_0.cdac_0.b4b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1429 a_14403_24635# sarlogic_0.clk1 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.185 ps=1.37 w=1 l=0.15
X1430 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=4.73
X1431 VDPWR a_19538_30027# a_19465_30281# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.17887 pd=1.26 as=0.07665 ps=0.785 w=0.42 l=0.15
X1432 VDPWR delay_control_0.sky130_fd_sc_hd__clkdlybuf4s50_1_1.A a_17902_34735# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1701 pd=1.36 as=0.27 ps=2.54 w=1 l=0.15
X1433 sarlogic_0.D0b a_18561_29915# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.154 ps=1.335 w=1 l=0.15
X1434 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1435 comparator_0.vin CDACnDriver_0.cdac_0.b3 sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1436 VDPWR a_19963_31271# uo_out[7] VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1437 a_12717_31003# a_12673_31245# a_12551_31003# VGND sky130_fd_pr__nfet_01v8 ad=0.0441 pd=0.63 as=0.1401 ps=1.1 w=0.42 l=0.15
X1438 VGND clk sky130_fd_sc_hd__clkinv_16_0.Y VGND sky130_fd_pr__nfet_01v8 ad=0.1113 pd=1.37 as=0.0588 ps=0.7 w=0.42 l=0.15
X1439 VGND a_19963_30183# a_19921_29915# VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.066 ps=0.745 w=0.42 l=0.15
X1440 VGND a_16686_34735# a_16793_34735# VGND sky130_fd_pr__nfet_01v8 ad=0.097 pd=0.975 as=0.17225 ps=1.83 w=0.65 l=0.5
X1441 a_17165_28827# a_16999_28827# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X1442 a_14844_30825# sarlogic_0.clk6 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.066 pd=0.745 as=0.2205 ps=1.89 w=0.42 l=0.15
X1443 comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_1.D0 sky130_fd_sc_hd__nor3_2_0.Y VDPWR VDPWR sky130_fd_pr__pfet_01v8 ad=0.1302 pd=1.46 as=0.1302 ps=1.46 w=0.42 l=0.15
X1444 a_7398_24533# sarlogic_0.D3 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1445 comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_0.S0 comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_0.S0 comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_0.S0 VDPWR sky130_fd_pr__pfet_01v8 ad=0.1302 pd=1.46 as=0.3906 ps=4.38 w=0.42 l=0.15
X1446 VDPWR sarlogic_0.clk2 CDACnDriver_0.cdac_0.b6b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1447 VDPWR a_14403_25081# a_14403_24635# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1448 comparator_0.vip CDACnDriver_1.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1449 a_19097_29915# a_18931_29915# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X1450 VDPWR sarlogic_0.clk7 CDACnDriver_0.cdac_0.b1 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1451 comparator_0.vin CDACnDriver_0.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1452 VGND sarlogic_0.D5 a_10034_24532# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1453 CDACnDriver_1.cdac_0.b2 sarlogic_0.D2 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1454 sky130_fd_sc_hd__clkinv_16_0.Y clk VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.14 pd=1.28 as=0.14 ps=1.28 w=1 l=0.15
X1455 a_11091_30459# sky130_fd_sc_hd__clkinv_16_0.Y VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1092 pd=1.36 as=0.07035 ps=0.755 w=0.42 l=0.15
X1456 VDPWR sarlogic_0.clk4 CDACnDriver_0.cdac_0.b4b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1457 a_24643_24533# sarlogic_0.clk7 CDACnDriver_0.cdac_0.b1 VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1458 VDPWR sarlogic_0.D7b a_15512_25081# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15575 pd=1.355 as=0.1113 ps=1.37 w=0.42 l=0.15
X1459 a_15504_30837# a_14423_30465# a_15157_30433# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0588 pd=0.7 as=0.12915 ps=1.185 w=0.42 l=0.15
X1460 comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_1.D0 comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_1.D0 comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_1.D0 VGND sky130_fd_pr__nfet_01v8 ad=0.725 pd=5.58 as=0 ps=0 w=2.5 l=0.2
X1461 a_11091_30459# a_10467_30465# a_10983_30837# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1155 pd=0.97 as=0.07245 ps=0.765 w=0.42 l=0.15
X1462 ua[1] bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 bootstrap_0.sky130_fd_pr__nfet_01v8_UVMP7B_3.D VGND sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.15
X1463 VGND a_20439_29193# a_20607_29095# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X1464 a_18358_32457# a_17919_32091# a_18273_32091# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0621 pd=0.705 as=0.0813 ps=0.83 w=0.36 l=0.15
X1465 bootstrap_0.sky130_fd_pr__nfet_g5v0d10v5_WBA3NL_1.D bootstrap_0.sky130_fd_pr__nfet_g5v0d10v5_WBA3NL_1.D bootstrap_0.sky130_fd_pr__nfet_g5v0d10v5_WBA3NL_1.D VGND sky130_fd_pr__nfet_g5v0d10v5 ad=0.435 pd=3.29 as=1.74 ps=13.16 w=3 l=0.5
X1466 VGND a_18894_34735# a_19001_34735# VGND sky130_fd_pr__nfet_01v8 ad=0.097 pd=0.975 as=0.17225 ps=1.83 w=0.65 l=0.5
X1467 a_17165_28827# a_16999_28827# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1664 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X1468 VGND a_19538_31115# a_19496_31003# VGND sky130_fd_pr__nfet_01v8 ad=0.12095 pd=1.085 as=0.0696 ps=0.765 w=0.42 l=0.15
X1469 VGND sky130_fd_sc_hd__clkinv_16_0.Y a_11245_30825# VGND sky130_fd_pr__nfet_01v8 ad=0.1346 pd=1.15 as=0.0441 ps=0.63 w=0.42 l=0.15
X1470 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1471 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1472 a_17606_31115# a_17438_31369# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0989 pd=0.995 as=0.12095 ps=1.085 w=0.64 l=0.15
X1473 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.D0 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.D0 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.D0 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.D0 sky130_fd_pr__pfet_01v8 ad=0.31 pd=2.62 as=0 ps=0 w=1 l=0.15
X1474 comparator_0.vip CDACnDriver_1.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1475 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1476 VDPWR a_15504_30837# a_15679_30763# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1134 pd=1.38 as=0.0567 ps=0.69 w=0.42 l=0.15
X1477 a_13372_29915# sarlogic_0.clk5 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0651 pd=0.73 as=0.1092 ps=1.36 w=0.42 l=0.15
X1478 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1479 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1480 a_16889_30459# a_16355_30465# a_16794_30459# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07665 pd=0.785 as=0.06825 ps=0.745 w=0.42 l=0.15
X1481 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1482 a_14589_28827# a_14423_28827# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X1483 bootstrap_0.sky130_fd_pr__nfet_g5v0d10v5_WBA3NL_5.S bootstrap_0.sky130_fd_pr__nfet_g5v0d10v5_WBA3NL_5.S bootstrap_0.sky130_fd_pr__nfet_g5v0d10v5_WBA3NL_5.S VGND sky130_fd_pr__nfet_01v8 ad=0.165 pd=1.33 as=0.64 ps=5.28 w=1 l=0.15
X1484 VDPWR a_18783_31547# a_18951_31521# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.27 ps=2.54 w=1 l=0.15
X1485 CDACnDriver_0.cdac_0.b7b sarlogic_0.clk1 a_16735_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X1486 a_20565_28827# a_19575_28827# a_20439_29193# VGND sky130_fd_pr__special_nfet_01v8 ad=0.066 pd=0.745 as=0.0684 ps=0.74 w=0.36 l=0.15
X1487 VDPWR clk sky130_fd_sc_hd__clkinv_16_0.Y VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.275 pd=2.55 as=0.14 ps=1.28 w=1 l=0.15
X1488 VGND a_18783_31547# a_18951_31521# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X1489 a_20523_29371# a_19741_29377# a_20439_29371# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0882 pd=0.84 as=0.0567 ps=0.69 w=0.42 l=0.15
X1490 VGND a_13431_30433# a_13961_30459# VGND sky130_fd_pr__nfet_01v8 ad=0.10025 pd=0.985 as=0.1092 ps=1.36 w=0.42 l=0.15
X1491 comparator_0.sky130_fd_pr__pfet_01v8_F3E8BM_0.D2 comparator_0.sky130_fd_pr__pfet_01v8_F3E8BM_0.D2 comparator_0.sky130_fd_pr__pfet_01v8_F3E8BM_0.D2 VDPWR sky130_fd_pr__pfet_01v8 ad=0.1302 pd=1.46 as=0.2688 ps=2.96 w=0.42 l=0.15
X1492 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1493 a_14429_25037# sarlogic_0.clk1 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0715 pd=0.87 as=0.1365 ps=1.07 w=0.65 l=0.15
X1494 a_12933_30459# a_12399_30465# a_12838_30459# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07665 pd=0.785 as=0.06825 ps=0.745 w=0.42 l=0.15
X1495 comparator_0.vip CDACnDriver_1.cdac_0.b4a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1496 sarlogic_0.valid a_14656_34619# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1497 comparator_0.vip CDACnDriver_1.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1498 VGND a_9126_24635# CDACnDriver_1.cdac_0.b4a VGND sky130_fd_pr__nfet_01v8 ad=0.1365 pd=1.07 as=0.091 ps=0.93 w=0.65 l=0.15
X1499 comparator_0.vin CDACnDriver_0.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1500 VDPWR a_18561_28827# sarlogic_0.D2b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.265 pd=2.53 as=0.135 ps=1.27 w=1 l=0.15
X1501 VGND a_18031_31271# a_17989_31003# VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.066 ps=0.745 w=0.42 l=0.15
X1502 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=4.73
X1503 a_14589_28827# a_14423_28827# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1664 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X1504 a_20789_24635# a_20789_25081# a_21135_25037# VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.0715 ps=0.87 w=0.65 l=0.15
X1505 VGND sky130_fd_sc_hd__clkinv_16_0.Y a_12717_31003# VGND sky130_fd_pr__nfet_01v8 ad=0.1346 pd=1.15 as=0.0441 ps=0.63 w=0.42 l=0.15
X1506 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=4.73
X1507 a_16377_33915# a_16121_33915# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.10435 ps=1.01 w=0.65 l=0.5
X1508 comparator_0.sky130_fd_sc_hd__nand2_1_2.Y comparator_0.sky130_fd_sc_hd__nand2_1_2.A a_14164_36239# VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X1509 a_17438_29193# a_17165_28827# a_17353_28827# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.06825 pd=0.745 as=0.05775 ps=0.695 w=0.42 l=0.15
X1510 CDACnDriver_1.cdac_0.b3 sarlogic_0.clk5 a_7398_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X1511 a_17438_30281# a_16999_29915# a_17353_29915# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0621 pd=0.705 as=0.0813 ps=0.83 w=0.36 l=0.15
X1512 a_18273_29371# sarlogic_0.D2 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.05775 pd=0.695 as=0.1092 ps=1.36 w=0.42 l=0.15
X1513 a_13782_29193# a_13063_28969# a_13219_29064# VGND sky130_fd_pr__special_nfet_01v8 ad=0.066 pd=0.745 as=0.0594 ps=0.69 w=0.36 l=0.15
X1514 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1515 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1516 CDACnDriver_0.cdac_0.b7a a_15512_24635# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15 pd=1.3 as=0.135 ps=1.27 w=1 l=0.15
X1517 a_10034_24532# sarlogic_0.clk3 CDACnDriver_1.cdac_0.b5b VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1518 a_11201_30433# a_10983_30837# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0999 pd=0.985 as=0.1346 ps=1.15 w=0.64 l=0.15
X1519 VDPWR sarlogic_0.D5 CDACnDriver_1.cdac_0.b5b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1520 uo_out[7] a_19963_31271# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1521 VDPWR sarlogic_0.D7 a_14403_25081# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15575 pd=1.355 as=0.1113 ps=1.37 w=0.42 l=0.15
X1522 VDPWR a_18705_35527# delay_control_0.sky130_fd_sc_hd__clkdlybuf4s50_1_5.X VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15575 pd=1.325 as=0.355 ps=2.71 w=1 l=0.15
X1523 a_5644_24533# sarlogic_0.D1 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X1524 a_15035_30837# a_14589_30465# a_14939_30837# VGND sky130_fd_pr__special_nfet_01v8 ad=0.1401 pd=1.1 as=0.0594 ps=0.69 w=0.36 l=0.15
X1525 a_12105_31003# a_11939_31003# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1664 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X1526 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=4.73
X1527 a_14851_31003# a_14405_31003# a_14755_31003# VGND sky130_fd_pr__special_nfet_01v8 ad=0.1401 pd=1.1 as=0.0594 ps=0.69 w=0.36 l=0.15
X1528 VDPWR a_13195_30977# sarlogic_0.clk3 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1529 VGND a_15030_28939# a_14988_28827# VGND sky130_fd_pr__nfet_01v8 ad=0.12095 pd=1.085 as=0.0696 ps=0.765 w=0.42 l=0.15
X1530 VDPWR a_13655_29675# sarlogic_0.clk5 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1531 VGND sky130_fd_sc_hd__clkinv_16_0.Y a_13729_29915# VGND sky130_fd_pr__nfet_01v8 ad=0.1346 pd=1.15 as=0.0441 ps=0.63 w=0.42 l=0.15
X1532 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1533 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=2.89
X1534 a_15201_30825# a_15157_30433# a_15035_30837# VGND sky130_fd_pr__nfet_01v8 ad=0.0441 pd=0.63 as=0.1401 ps=1.1 w=0.42 l=0.15
X1535 comparator_0.vin CDACnDriver_0.cdac_0.b4a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1536 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=0.59
X1537 VDPWR comparator_0.sky130_fd_sc_hd__nand2_1_1.A comparator_0.sky130_fd_sc_hd__nand2_1_1.Y VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1538 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1539 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1540 a_18494_24533# sarlogic_0.D6b VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1541 a_14939_30837# a_14423_30465# a_14844_30825# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0594 pd=0.69 as=0.066 ps=0.745 w=0.36 l=0.15
X1542 a_15288_34593# comparator_0.sky130_fd_sc_hd__nand2_1_2.A VGND VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X1543 sky130_fd_sc_hd__clkinv_16_0.Y clk VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.14 pd=1.28 as=0.14 ps=1.28 w=1 l=0.15
X1544 VGND comparator_0.sky130_fd_sc_hd__nand2_1_1.A a_15659_36239# VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X1545 a_17969_35527# a_18068_35349# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.17225 pd=1.83 as=0.097 ps=0.975 w=0.65 l=0.5
X1546 bootstrap_0.sky130_fd_pr__nfet_01v8_UVMP7B_7.D sky130_fd_sc_hd__clkinv_16_0.Y VGND VGND sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.15
X1547 a_19741_29377# a_19575_29377# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X1548 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=2.89
X1549 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1550 CDACnDriver_0.cdac_0.b3 sarlogic_0.clk5 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1551 a_11723_30763# a_11548_30837# a_11902_30825# VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.06405 ps=0.725 w=0.42 l=0.15
X1552 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=4.73
X1553 VGND sky130_fd_sc_hd__nor3_2_0.B sky130_fd_sc_hd__nor3_2_0.Y VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X1554 VDPWR a_14104_34619# comparator_0.von VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1555 a_14141_29915# a_12951_29915# a_14032_29915# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0669 pd=0.75 as=0.0711 ps=0.755 w=0.36 l=0.15
X1556 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1557 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1558 VGND sarlogic_0.D3b a_22889_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1559 a_14405_31003# a_14239_31003# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X1560 sky130_fd_sc_hd__clkinv_16_0.Y clk VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.14 pd=1.28 as=0.14 ps=1.28 w=1 l=0.15
X1561 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1562 a_12195_31547# sky130_fd_sc_hd__clkinv_16_0.Y VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1092 pd=1.36 as=0.07035 ps=0.755 w=0.42 l=0.15
X1563 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=2.89
X1564 VGND a_17271_24635# CDACnDriver_0.cdac_0.b6a VGND sky130_fd_pr__nfet_01v8 ad=0.1365 pd=1.07 as=0.091 ps=0.93 w=0.65 l=0.15
X1565 a_15679_30763# sky130_fd_sc_hd__clkinv_16_0.Y VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.0819 ps=0.81 w=0.42 l=0.15
X1566 a_15873_29915# a_14883_29915# a_15747_30281# VGND sky130_fd_pr__special_nfet_01v8 ad=0.066 pd=0.745 as=0.0684 ps=0.74 w=0.36 l=0.15
X1567 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1568 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=4.73
X1569 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=0.59
X1570 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1571 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1572 VDPWR a_17365_29371# sarlogic_0.D4b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.265 pd=2.53 as=0.135 ps=1.27 w=1 l=0.15
X1573 sarlogic_0.D5b a_16445_29915# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.154 ps=1.335 w=1 l=0.15
X1574 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1575 CDACnDriver_1.cdac_0.b7a a_14403_24635# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.15575 ps=1.355 w=1 l=0.15
X1576 comparator_0.vip CDACnDriver_1.cdac_0.b4b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1577 a_20109_29371# a_19575_29377# a_20014_29371# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07665 pd=0.785 as=0.06825 ps=0.745 w=0.42 l=0.15
X1578 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1579 VGND sarlogic_0.D4b a_20789_25081# VGND sky130_fd_pr__nfet_01v8 ad=0.10675 pd=1.005 as=0.1113 ps=1.37 w=0.42 l=0.15
X1580 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=4.73
X1581 a_17042_37203# clk sky130_fd_sc_hd__nor3_2_0.Y VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1582 VDPWR a_15512_24635# CDACnDriver_0.cdac_0.b7a VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1583 sarlogic_0.D6b a_15985_28827# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.154 ps=1.335 w=1 l=0.15
X1584 comparator_0.vip CDACnDriver_1.cdac_0.b3 sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1585 VGND a_14656_34619# sarlogic_0.valid VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1586 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1587 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=1.97
X1588 a_15047_30459# sky130_fd_sc_hd__clkinv_16_0.Y VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1092 pd=1.36 as=0.07035 ps=0.755 w=0.42 l=0.15
X1589 CDACnDriver_1.cdac_0.b5b sarlogic_0.D5 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1590 VGND sky130_fd_sc_hd__nor3_2_0.B a_16999_29915# VGND sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.1092 ps=1.36 w=0.42 l=0.15
X1591 a_15969_29377# a_15803_29377# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X1592 VGND sarlogic_0.D5 a_10885_25081# VGND sky130_fd_pr__nfet_01v8 ad=0.10675 pd=1.005 as=0.1113 ps=1.37 w=0.42 l=0.15
X1593 VGND sarlogic_0.D1 a_5644_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1594 a_17042_37203# sky130_fd_sc_hd__nor3_2_0.B a_17042_36949# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1595 VGND a_18031_29095# sarlogic_0.D2 VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X1596 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=0.59
X1597 CDACnDriver_1.cdac_0.b3 sarlogic_0.D3 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1598 a_9126_24635# a_9126_25081# a_9152_25037# VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.0715 ps=0.87 w=0.65 l=0.15
X1599 a_19741_28827# a_19575_28827# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X1600 comparator_0.vip CDACnDriver_1.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1601 comparator_0.vin CDACnDriver_0.cdac_0.b2 sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1602 VGND sky130_fd_sc_hd__clkinv_16_0.Y a_15201_30825# VGND sky130_fd_pr__nfet_01v8 ad=0.1346 pd=1.15 as=0.0441 ps=0.63 w=0.42 l=0.15
X1603 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1604 a_23766_24533# sarlogic_0.D2b VGND VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X1605 CDACnDriver_0.cdac_0.b6b sarlogic_0.clk2 a_18494_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X1606 CDACnDriver_0.cdac_0.b4a a_20789_24635# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X1607 VGND a_17863_31369# a_18031_31271# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X1608 a_14032_29915# a_13117_29915# a_13685_30157# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0711 pd=0.755 as=0.0999 ps=0.985 w=0.36 l=0.15
X1609 sky130_fd_sc_hd__clkinv_16_0.Y clk VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2175 pd=1.435 as=0.14 ps=1.28 w=1 l=0.15
X1610 comparator_0.sky130_fd_sc_hd__nand2_1_2.B comparator_0.sky130_fd_sc_hd__nand2_1_2.B comparator_0.sky130_fd_sc_hd__nand2_1_2.B VGND sky130_fd_pr__nfet_01v8 ad=0.1302 pd=1.46 as=0.3906 ps=4.38 w=0.42 l=0.15
X1611 VDPWR sarlogic_0.clk5 CDACnDriver_0.cdac_0.b3 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1612 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=4.73
X1613 comparator_0.vip CDACnDriver_1.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1614 a_20439_29193# a_19575_28827# a_20182_28939# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.1095 ps=1.075 w=0.42 l=0.15
X1615 VDPWR a_10885_24635# CDACnDriver_1.cdac_0.b5a VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.185 pd=1.37 as=0.15 ps=1.3 w=1 l=0.15
X1616 a_16242_29371# a_15803_29377# a_16157_29371# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0621 pd=0.705 as=0.0813 ps=0.83 w=0.36 l=0.15
X1617 VDPWR a_15915_30183# a_15831_30281# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1113 pd=1.37 as=0.0882 ps=0.84 w=0.42 l=0.15
X1618 CDACnDriver_1.cdac_0.b4b sarlogic_0.clk4 a_8275_24525# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1619 VDPWR sarlogic_0.D2 CDACnDriver_1.cdac_0.b2 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1620 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1621 a_22889_24533# sarlogic_0.clk5 CDACnDriver_0.cdac_0.b3 VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1622 a_11793_24533# sarlogic_0.D6 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X1623 VGND a_12459_28801# sarlogic_0.clk4 VGND sky130_fd_pr__nfet_01v8 ad=0.2087 pd=2.02 as=0.08775 ps=0.92 w=0.65 l=0.15
X1624 comparator_0.vin CDACnDriver_0.cdac_0.b5b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1625 a_14755_31003# a_14405_31003# a_14660_31003# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07245 pd=0.765 as=0.0651 ps=0.73 w=0.42 l=0.15
X1626 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1627 a_19741_28827# a_19575_28827# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1664 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X1628 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1629 VDPWR sarlogic_0.D4 CDACnDriver_1.cdac_0.b4b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1630 VDPWR a_15490_30027# a_15417_30281# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.17887 pd=1.26 as=0.07665 ps=0.785 w=0.42 l=0.15
X1631 sky130_fd_sc_hd__clkinv_16_0.Y clk VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.14 pd=1.28 as=0.265 ps=2.53 w=1 l=0.15
X1632 comparator_0.vip CDACnDriver_1.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1633 a_17592_35349# delay_control_0.sky130_fd_sc_hd__clkdlybuf4s50_1_4.X VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.27 pd=2.54 as=0.1701 ps=1.36 w=1 l=0.15
X1634 VGND a_15455_29095# sarlogic_0.D6 VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X1635 a_20014_29371# a_19741_29377# a_19929_29371# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.06825 pd=0.745 as=0.05775 ps=0.695 w=0.42 l=0.15
X1636 a_15659_36239# comparator_0.sky130_fd_sc_hd__nand2_1_2.Y comparator_0.sky130_fd_sc_hd__nand2_1_2.A VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X1637 delay_control_0.sky130_fd_sc_hd__clkdlybuf4s50_1_2.A a_18265_34735# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1491 pd=1.55 as=0.097 ps=0.975 w=0.42 l=0.15
X1638 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1639 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1640 a_16410_29345# a_16242_29371# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1095 pd=1.075 as=0.17887 ps=1.26 w=0.75 l=0.15
X1641 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1642 VGND uio_out[0] a_19575_29377# VGND sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.1092 ps=1.36 w=0.42 l=0.15
X1643 VDPWR a_15030_28939# a_14957_29193# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.17887 pd=1.26 as=0.07665 ps=0.785 w=0.42 l=0.15
X1644 a_18783_32457# a_17919_32091# a_18526_32203# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.1095 ps=1.075 w=0.42 l=0.15
X1645 CDACnDriver_0.cdac_0.b4a a_20789_24635# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.10675 ps=1.005 w=0.65 l=0.15
X1646 CDACnDriver_0.cdac_0.b6a a_17271_24635# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15 pd=1.3 as=0.135 ps=1.27 w=1 l=0.15
X1647 a_19538_31115# a_19370_31369# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1095 pd=1.075 as=0.17887 ps=1.26 w=0.75 l=0.15
X1648 a_16242_29371# a_15969_29377# a_16157_29371# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.06825 pd=0.745 as=0.05775 ps=0.695 w=0.42 l=0.15
X1649 a_17422_34735# a_17166_34735# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.10435 ps=1.01 w=0.65 l=0.5
X1650 a_13347_30459# a_12565_30465# a_13263_30459# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0882 pd=0.84 as=0.0567 ps=0.69 w=0.42 l=0.15
X1651 CDACnDriver_1.cdac_0.b7b sarlogic_0.clk1 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1652 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=4.73
X1653 a_18453_32457# a_17919_32091# a_18358_32457# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07665 pd=0.785 as=0.06825 ps=0.745 w=0.42 l=0.15
X1654 a_12915_29749# a_12565_29377# a_12820_29737# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07245 pd=0.765 as=0.0651 ps=0.73 w=0.42 l=0.15
X1655 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1656 a_17564_31003# a_17165_31003# a_17438_31369# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0696 pd=0.765 as=0.0621 ps=0.705 w=0.36 l=0.15
X1657 VDPWR a_19064_35349# a_18804_35349# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1701 pd=1.36 as=0.2173 ps=2.17 w=0.82 l=0.5
X1658 VGND a_13655_29675# a_13589_29749# VGND sky130_fd_pr__nfet_01v8 ad=0.12495 pd=1.015 as=0.0669 ps=0.75 w=0.42 l=0.15
X1659 a_13374_31003# sky130_fd_sc_hd__clkinv_16_0.Y VGND VGND sky130_fd_pr__nfet_01v8 ad=0.06405 pd=0.725 as=0.12495 ps=1.015 w=0.42 l=0.15
X1660 VGND a_14656_34619# sarlogic_0.valid VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X1661 VGND a_16410_29345# a_16368_29749# VGND sky130_fd_pr__nfet_01v8 ad=0.12095 pd=1.085 as=0.0696 ps=0.765 w=0.42 l=0.15
X1662 delay_control_0.sky130_fd_sc_hd__clkdlybuf4s50_1_1.A a_17529_34735# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.355 pd=2.71 as=0.15575 ps=1.325 w=1 l=0.15
X1663 a_15320_31003# a_14239_31003# a_14973_31245# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0588 pd=0.7 as=0.12915 ps=1.185 w=0.42 l=0.15
X1664 VDPWR a_17863_30281# a_18031_30183# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.27 ps=2.54 w=1 l=0.15
X1665 comparator_0.vip CDACnDriver_1.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1666 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1667 comparator_0.vip CDACnDriver_1.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1668 sky130_fd_sc_hd__nor3_2_0.Y clk a_17042_37203# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X1669 comparator_0.vin CDACnDriver_0.cdac_0.b5b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1670 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1671 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=1.97
X1672 a_13021_28827# a_12459_28801# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0669 pd=0.75 as=0.12495 ps=1.015 w=0.42 l=0.15
X1673 a_18526_32203# a_18358_32457# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0989 pd=0.995 as=0.12095 ps=1.085 w=0.64 l=0.15
X1674 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1675 VDPWR a_18526_32203# a_18453_32457# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.17887 pd=1.26 as=0.07665 ps=0.785 w=0.42 l=0.15
X1676 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=4.73
X1677 a_17042_36949# sky130_fd_sc_hd__nor3_2_0.A VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1678 VDPWR a_15320_31003# a_15495_30977# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1134 pd=1.38 as=0.0567 ps=0.69 w=0.42 l=0.15
X1679 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1680 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1681 a_17271_24635# a_17271_25081# a_17617_25037# VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.0715 ps=0.87 w=0.65 l=0.15
X1682 VDPWR sarlogic_0.clk5 CDACnDriver_1.cdac_0.b3 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1683 VGND sky130_fd_sc_hd__clkinv_16_0.Y a_12781_28827# VGND sky130_fd_pr__nfet_01v8 ad=0.12495 pd=1.015 as=0.06405 ps=0.725 w=0.42 l=0.15
X1684 comparator_0.vip CDACnDriver_1.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1685 VGND a_17387_30433# a_17917_30459# VGND sky130_fd_pr__nfet_01v8 ad=0.10025 pd=0.985 as=0.1092 ps=1.36 w=0.42 l=0.15
X1686 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1687 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1688 comparator_0.vin CDACnDriver_0.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1689 VGND sarlogic_0.D2b a_23766_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1690 VDPWR a_14207_29889# a_14194_30281# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0819 pd=0.81 as=0.0567 ps=0.69 w=0.42 l=0.15
X1691 VDPWR a_18561_31003# sarlogic_0.D1b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.265 pd=2.53 as=0.135 ps=1.27 w=1 l=0.15
X1692 bootstrap_0.sky130_fd_pr__pfet_01v8_W93KHH_3.D bootstrap_0.sky130_fd_pr__pfet_01v8_W93KHH_3.D bootstrap_0.sky130_fd_pr__pfet_01v8_W93KHH_3.D VDPWR sky130_fd_pr__pfet_01v8 ad=0.29 pd=2.58 as=0.87 ps=7.74 w=1 l=0.15
X1693 comparator_0.sky130_fd_sc_hd__nand2_1_1.A comparator_0.sky130_fd_sc_hd__nand2_1_2.B comparator_0.sky130_fd_pr__pfet_01v8_6G2KRQ_1.D0 VGND sky130_fd_pr__nfet_01v8 ad=0.1302 pd=1.46 as=0.1302 ps=1.46 w=0.42 l=0.15
X1694 comparator_0.vip CDACnDriver_1.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1695 CDACnDriver_0.cdac_0.b2 sarlogic_0.D2b VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1696 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1697 VDPWR a_13480_29749# a_13655_29675# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1134 pd=1.38 as=0.0567 ps=0.69 w=0.42 l=0.15
X1698 VGND a_19030_24635# CDACnDriver_0.cdac_0.b5a VGND sky130_fd_pr__nfet_01v8 ad=0.1365 pd=1.07 as=0.091 ps=0.93 w=0.65 l=0.15
X1699 CDACnDriver_1.cdac_0.b2 sarlogic_0.clk6 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X1700 a_17353_28827# sarlogic_0.comp_op VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.05775 pd=0.695 as=0.1092 ps=1.36 w=0.42 l=0.15
X1701 a_16521_30465# a_16355_30465# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1664 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X1702 sarlogic_0.D2 a_18031_29095# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1703 sarlogic_0.clk3 a_13195_30977# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.2087 ps=2.02 w=0.65 l=0.15
X1704 VGND sarlogic_0.D6 a_11793_24533# VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1705 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=4.73
X1706 a_19929_28827# sarlogic_0.D0 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.05775 pd=0.695 as=0.1092 ps=1.36 w=0.42 l=0.15
X1707 VGND a_17606_28939# a_17564_28827# VGND sky130_fd_pr__nfet_01v8 ad=0.12095 pd=1.085 as=0.0696 ps=0.765 w=0.42 l=0.15
X1708 CDACnDriver_0.cdac_0.b5b sarlogic_0.D5b VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1709 sky130_fd_sc_hd__clkinv_16_0.Y clk VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0588 pd=0.7 as=0.0588 ps=0.7 w=0.42 l=0.15
X1710 VGND uio_out[0] a_19575_28827# VGND sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.1092 ps=1.36 w=0.42 l=0.15
X1711 a_18783_31547# a_17919_31553# a_18526_31521# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.1095 ps=1.075 w=0.42 l=0.15
X1712 VDPWR a_17113_33915# a_17220_33915# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.15575 pd=1.325 as=0.2173 ps=2.17 w=0.82 l=0.5
X1713 VGND a_19538_30027# a_19496_29915# VGND sky130_fd_pr__nfet_01v8 ad=0.12095 pd=1.085 as=0.0696 ps=0.765 w=0.42 l=0.15
X1714 a_14902_35321# comparator_0.sky130_fd_sc_hd__nand2_1_2.B VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X1715 comparator_0.vin VGND sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1716 a_18453_31547# a_17919_31553# a_18358_31547# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.07665 pd=0.785 as=0.06825 ps=0.745 w=0.42 l=0.15
X1717 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1718 comparator_0.vip CDACnDriver_1.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1719 sky130_fd_sc_hd__clkinv_16_0.Y clk VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.14 pd=1.28 as=0.14 ps=1.28 w=1 l=0.15
X1720 a_17606_30027# a_17438_30281# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0989 pd=0.995 as=0.12095 ps=1.085 w=0.64 l=0.15
X1721 a_10885_24635# sarlogic_0.clk3 VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.185 ps=1.37 w=1 l=0.15
X1722 a_22012_24525# sarlogic_0.D4b VGND VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X1723 comparator_0.vip CDACnDriver_1.cdac_0.b6b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1724 VDPWR a_17271_24635# CDACnDriver_0.cdac_0.b6a VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1725 CDACnDriver_1.cdac_0.b4a a_9126_24635# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X1726 a_17165_31003# a_16999_31003# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X1727 VDPWR sarlogic_0.clk1 CDACnDriver_1.cdac_0.b7b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1728 VDPWR delay_control_0.sky130_fd_sc_hd__clkdlybuf4s50_1_6.X a_17166_34735# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1701 pd=1.36 as=0.27 ps=2.54 w=1 l=0.15
X1729 comparator_0.von a_14104_34619# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1730 comparator_0.vin CDACnDriver_0.cdac_0.b7a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1731 sarlogic_0.clk4 a_12459_28801# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X1732 ua[0] bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.G1 comparator_0.vip VGND sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=0.15
X1733 VGND a_14104_34619# comparator_0.von VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X1734 VDPWR uio_out[0] a_19575_28827# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.1664 ps=1.8 w=0.64 l=0.15
X1735 VDPWR a_18526_31521# a_18453_31547# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.17887 pd=1.26 as=0.07665 ps=0.785 w=0.42 l=0.15
X1736 a_14777_28827# sarlogic_0.comp_op VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.05775 pd=0.695 as=0.1092 ps=1.36 w=0.42 l=0.15
X1737 VGND clk sky130_fd_sc_hd__clkinv_16_0.Y VGND sky130_fd_pr__nfet_01v8 ad=0.0588 pd=0.7 as=0.0588 ps=0.7 w=0.42 l=0.15
X1738 VDPWR a_10885_25081# a_10885_24635# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1739 a_20439_29193# a_19741_28827# a_20182_28939# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0684 pd=0.74 as=0.0989 ps=0.995 w=0.36 l=0.15
X1740 a_20014_29193# a_19575_28827# a_19929_28827# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0621 pd=0.705 as=0.0813 ps=0.83 w=0.36 l=0.15
X1741 a_13529_28827# a_13150_29193# a_13457_28827# VGND sky130_fd_pr__nfet_01v8 ad=0.1401 pd=1.1 as=0.0441 ps=0.63 w=0.42 l=0.15
X1742 a_19879_31369# a_19097_31003# a_19795_31369# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0882 pd=0.84 as=0.0567 ps=0.69 w=0.42 l=0.15
X1743 VGND a_18031_30183# a_17989_29915# VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.066 ps=0.745 w=0.42 l=0.15
X1744 VDPWR sarlogic_0.D1b CDACnDriver_0.cdac_0.b1 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1745 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1746 comparator_0.vip CDACnDriver_1.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1747 CDACnDriver_1.cdac_0.b4a a_9126_24635# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.10675 ps=1.005 w=0.65 l=0.15
X1748 VGND a_18951_31521# uo_out[6] VGND sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.08775 ps=0.92 w=0.65 l=0.15
X1749 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1750 VDPWR sarlogic_0.clk3 a_14883_29915# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.1664 ps=1.8 w=0.64 l=0.15
X1751 a_15320_31003# a_14405_31003# a_14973_31245# VGND sky130_fd_pr__special_nfet_01v8 ad=0.0711 pd=0.755 as=0.0999 ps=0.985 w=0.36 l=0.15
X1752 VGND uio_out[0] a_17919_32091# VGND sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.1092 ps=1.36 w=0.42 l=0.15
X1753 comparator_0.vin CDACnDriver_0.cdac_0.b6a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1754 comparator_0.vip comparator_0.vip sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1755 sarlogic_0.D2b a_18561_28827# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.154 ps=1.335 w=1 l=0.15
X1756 delay_control_0.sky130_fd_sc_hd__clkdlybuf4s50_1_5.A a_19001_34735# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1491 pd=1.55 as=0.097 ps=0.975 w=0.42 l=0.15
X1757 VDPWR sarlogic_0.clk6 CDACnDriver_0.cdac_0.b2 VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1758 VGND sarlogic_0.D6b a_17271_25081# VGND sky130_fd_pr__nfet_01v8 ad=0.10675 pd=1.005 as=0.1113 ps=1.37 w=0.42 l=0.15
X1759 a_19879_30281# a_19097_29915# a_19795_30281# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.0882 pd=0.84 as=0.0567 ps=0.69 w=0.42 l=0.15
X1760 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.G1 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.G1 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_1.G1 VGND sky130_fd_pr__nfet_01v8 ad=0.145 pd=1.58 as=0 ps=0 w=0.5 l=0.15
X1761 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1762 VDPWR a_20607_29095# uo_out[0] VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1763 a_19064_35349# delay_control_0.sky130_fd_sc_hd__clkdlybuf4s50_1_5.A VGND VGND sky130_fd_pr__nfet_01v8 ad=0.1134 pd=1.38 as=0.10435 ps=1.01 w=0.42 l=0.15
X1764 comparator_0.vin comparator_0.vin sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1765 a_20565_30837# a_19575_30465# a_20439_30459# VGND sky130_fd_pr__special_nfet_01v8 ad=0.066 pd=0.745 as=0.0684 ps=0.74 w=0.36 l=0.15
X1766 a_13006_31913# sky130_fd_sc_hd__clkinv_16_0.Y VGND VGND sky130_fd_pr__nfet_01v8 ad=0.06405 pd=0.725 as=0.12495 ps=1.015 w=0.42 l=0.15
X1767 comparator_0.vip CDACnDriver_1.cdac_0.b5a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1768 VDPWR sarlogic_0.D5 CDACnDriver_1.cdac_0.b5b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1769 VDPWR VGND VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2262 pd=2.26 as=0 ps=0 w=0.87 l=4.73
X1770 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.D0 bootstrap_0.sky130_fd_pr__pfet_01v8_W93KHH_3.D bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.D0 sky130_fd_pr__pfet_01v8 ad=0.31 pd=2.62 as=0.31 ps=2.62 w=1 l=0.15
X1771 VDPWR a_16835_29345# a_16751_29371# VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.1113 pd=1.37 as=0.0882 ps=0.84 w=0.42 l=0.15
X1772 VDPWR sarlogic_0.clk3 CDACnDriver_0.cdac_0.b5b VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X1773 a_16709_30459# sarlogic_0.comp_op VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0813 pd=0.83 as=0.1092 ps=1.36 w=0.42 l=0.15
X1774 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=4.73
X1775 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1776 a_5644_24533# sarlogic_0.D1 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.08775 pd=0.92 as=0.08775 ps=0.92 w=0.65 l=0.15
X1777 VGND a_20607_30433# a_20565_30837# VGND sky130_fd_pr__nfet_01v8 ad=0.1092 pd=1.36 as=0.066 ps=0.745 w=0.42 l=0.15
X1778 bootstrap_0.sky130_fd_pr__pfet_01v8_W93KHH_3.D bootstrap_0.sky130_fd_pr__pfet_01v8_4VMMWY_0.G1 bootstrap_0.sky130_fd_pr__nfet_01v8_UVMP7B_3.D VGND sky130_fd_pr__nfet_01v8 ad=0.145 pd=1.58 as=0.145 ps=1.58 w=0.5 l=0.15
X1779 VGND a_12827_31851# a_12761_31925# VGND sky130_fd_pr__nfet_01v8 ad=0.12495 pd=1.015 as=0.0669 ps=0.75 w=0.42 l=0.15
X1780 VGND VDPWR VGND VGND sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0 ps=0 w=0.55 l=4.73
X1781 comparator_0.vip CDACnDriver_1.cdac_0.b4b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1782 CDACnDriver_0.cdac_0.b6a a_17271_24635# VGND VGND sky130_fd_pr__nfet_01v8 ad=0.091 pd=0.93 as=0.091 ps=0.93 w=0.65 l=0.15
X1783 comparator_0.vip CDACnDriver_1.cdac_0.b4a sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1784 a_18158_34735# a_17902_34735# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.2173 pd=2.17 as=0.1701 ps=1.36 w=0.82 l=0.5
X1785 comparator_0.vin CDACnDriver_0.cdac_0.b7b sky130_fd_pr__cap_mim_m3_1 l=2 w=2
X1786 sarlogic_0.clk5 a_13655_29675# VDPWR VDPWR sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.3012 ps=2.66 w=1 l=0.15
X1787 a_12753_30459# sarlogic_0.comp_op VGND VGND sky130_fd_pr__nfet_01v8 ad=0.0813 pd=0.83 as=0.1092 ps=1.36 w=0.42 l=0.15
.ends

