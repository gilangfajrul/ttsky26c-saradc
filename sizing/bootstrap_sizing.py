"""Sizing bootstrapped sampling switch dari spec, memakai lookup table pygmid.

    python3 bootstrap_sizing.py

Rantai ketergantungannya satu arah dan tidak boleh dibalik:

    adc_spec.py  ->  C_L, T_sample, N, VDD
    cdac_result.json -> C_tot
    lookup table -> Ron*W, Cgg/W, VT(VSB)
                 ->  W_switch, Cboot, ukuran pembantu

TIDAK ADA satu pun angka transistor yang diketik tangan di sini. Kalau spec
berubah, jalankan ulang dan ukurannya ikut berubah.

--------------------------------------------------------------------------
KENAPA gm/ID TIDAK DIPAKAI DI SINI

gm/ID adalah metrik efisiensi transkonduktansi untuk devais di SATURASI
yang tugasnya menguatkan. Sampling switch bekerja di TRIODE dengan Vds ~ 0,
di mana gm tidak berperan dalam spec apa pun. Tidak ada satu langkah di
bawah yang memuat gm.

Yang diambil dari tabel adalah tiga besaran lain:

    ID_W  pada VDS kecil  ->  Ron*W = VDS / (ID/W)
    CGG_W pada VGS kerja  ->  beban gate di node boost
    VT    versus VSB      ->  body effect

--------------------------------------------------------------------------
BATAS TABEL YANG HARUS KAMU TAHU

Sumbu VSB tabel ini hanya 0, 0.2, 0.4 V (3 titik). Switch bekerja dengan
VSB = vin, yaitu 0 .. 1.8 V. Jadi tabel TIDAK BISA memberi kerataan Ron
lintas rentang input -- padahal body effect adalah penyumbang terbesarnya
(10.87 % dari 13.7 % total, diukur di tb2b).

Tabel dipakai untuk MENENTUKAN UKURAN di satu titik bias. Kerataan Ron
tetap harus diukur dengan xschem/sar-adc_tb/ref/tb2b_ron_dc.sp.
"""
import os

import numpy as np

import adc_spec as spec

MAT = '/foss/designs/lookuptable/skywater130a/nfet_01v8.mat'
L_MIN = 0.15          # L minimum sky130 untuk devais 1.8 V
W_MIN = 0.42          # lebar minimum proses
VDS_LIN = 0.025       # titik grid VDS terkecil tabel -> deep triode

# Nilai acuan hasil ukur langsung (xschem/sar-adc_tb/ref). Dipakai HANYA
# untuk memvalidasi satuan tabel, bukan sebagai masukan desain.
REF_RONW = 979.75     # ohm*um, tb2b, gate boost ideal, vin rendah
REF_CGGW = 1.513e-15  # F/um, AC sweep Vgs=1.7

MARGIN_RON = 2.5      # corner ss/85C (~1.8x) x penyusutan jendela x Vgs<VDD
QINJ_W = 1.11e-15     # C/um, terukur tb1 (22.234 fC pada W=20)
INJ_LIMIT = 7e-3      # V, batas langkah injeksi (lihat NOMINAL.md)
CBOOT_RATIO = 25      # Cboot / Cg
CAP_DENS = spec.CAMIMC * 1e12   # F/um^2 -> pF/um^2 tidak dipakai; lihat bawah


def load_table():
    from pygmid import Lookup as lk
    if not os.path.exists(MAT):
        raise SystemExit(f'lookup table tidak ada: {MAT}')
    return lk(MAT)


def calibrate(fet, vgs_op):
    """Validasi satuan tabel terhadap dua pengukuran ngspice yang diketahui.

    Ini WAJIB dilakukan sekali untuk tiap tabel baru. Tabel Murmann tidak
    membawa metadata satuan, dan menebaknya salah (A/m vs A/um) menggeser
    hasil 6 orde besaran tanpa satu pun pesan error."""
    idw = float(fet.lookup('ID_W', L=L_MIN, VGS=vgs_op, VDS=VDS_LIN, VSB=0))
    cgg = float(fet.lookup('CGG_W', L=L_MIN, VGS=vgs_op, VDS=VDS_LIN, VSB=0))
    ronw = VDS_LIN / idw                      # asumsi ID_W dalam A/um
    e_ron = abs(ronw / REF_RONW - 1) * 100
    e_cgg = abs(cgg / REF_CGGW - 1) * 100
    print('--- kalibrasi tabel terhadap ngspice ---')
    print(f'  Ron*W  tabel {ronw:8.1f}  ngspice {REF_RONW:8.1f} ohm*um'
          f'   selisih {e_ron:.1f} %')
    print(f'  Cgg/W  tabel {cgg*1e15:8.3f}  ngspice {REF_CGGW*1e15:8.3f} fF/um'
          f'   selisih {e_cgg:.1f} %')
    if e_ron > 15 or e_cgg > 15:
        raise SystemExit('kalibrasi GAGAL -- periksa satuan tabel sebelum '
                         'memakai hasilnya')
    print('  -> satuan tabel: ID_W [A/um], CGG_W [F/um]. Valid.\n')
    return ronw, cgg


def main():
    # ---- Langkah 0: spec ------------------------------------------------
    cdac = spec.load_cdac()
    c_par = 60e-15                 # rute + gate comparator; ganti setelah PEX
    C_L = cdac['C_tot'] + c_par
    N, VDD, T_S = spec.N, spec.VDD, spec.T_SAMPLE

    print('=' * 66)
    print('  SIZING BOOTSTRAPPED SWITCH')
    print('=' * 66)
    print(f'  N = {N} bit   VDD = {VDD} V   f_s = {spec.fs/1e6:.0f} MS/s')
    print(f'  C_L = C_tot {cdac["C_tot"]*1e12:.4f} pF + parasitik '
          f'{c_par*1e15:.0f} fF = {C_L*1e12:.4f} pF')
    print(f'  T_sample = {T_S*1e9:.1f} ns\n')

    # ---- Langkah 1: jumlah tau -----------------------------------------
    # error 0.5 LSB single-ended = VREF/2^(N+1); step terburuk = VREF
    # -> rasio = 2^(N+1), jumlah tau = (N+1)*ln2. VREF saling habis.
    n_tau = (N + 1) * np.log(2)
    v_err = spec.VREF / 2 ** (N + 1)
    print(f'  1. jumlah tau = (N+1)*ln2 = {n_tau:.2f}'
          f'   (error target {v_err*1e3:.3f} mV single-ended)')

    # ---- Langkah 2: R_on maksimum --------------------------------------
    ron_max = T_S / (n_tau * C_L)
    print(f'  2. R_on_max = T_s/(n_tau*C_L) = {ron_max:.0f} ohm')

    # ---- tabel ----------------------------------------------------------
    fet = load_table()
    # Vgs kerja = boost nyata, bukan VDD. Boost tidak pernah penuh.
    vgs_op = 1.7
    print()
    ronw, cggw = calibrate(fet, vgs_op)

    # ---- Langkah 3: W_switch dari R_on ---------------------------------
    w_min_ron = ronw / ron_max
    w_sw = w_min_ron * MARGIN_RON
    print(f'  3. W_switch = Ron*W/R_on_max * margin')
    print(f'       = {ronw:.0f}/{ron_max:.0f} * {MARGIN_RON} '
          f'= {w_min_ron:.2f} * {MARGIN_RON} = {w_sw:.2f} um')

    # ---- Langkah 4: batas atas dari charge injection --------------------
    w_max_inj = INJ_LIMIT * C_L / QINJ_W
    print(f'  4. batas atas injeksi: W <= inj_limit*C_L/Qinj_W '
          f'= {w_max_inj:.2f} um')
    if w_sw > w_max_inj:
        print('     !! W dari settling MELEBIHI batas injeksi.')
        print('        C_L terlalu kecil untuk T_sample ini -- negosiasi '
              'ulang timing.')
    w_sw = max(w_sw, W_MIN)
    w_sw = round(w_sw * 2) / 2          # bulatkan ke 0.5 um
    print(f'     -> W_switch = {w_sw:.1f} um\n')

    # ---- Langkah 5: pembantu, masing-masing dari beban & tenggat -------
    t_hold = 1 / spec.fs - T_S
    helpers = [
        # nama,          beban,             tenggat,   n_tau
        ('Mchtop',       'Cboot',           t_hold,    7),
        ('Mchbot',       'Cboot',           t_hold,    7),
        ('Mdisbot',      'Cboot',           3e-9,      5),
        ('Mdistop',      'Cg',              3e-9,      5),
        ('Mchtopdrv1/2', 'Cg',              1e-9,      5),
    ]

    # Cg bergantung W pembantu -> iterasi dua kali sudah konvergen
    w_help = 1.0
    for _ in range(3):
        sigma_w = w_sw + 3 * w_help          # 3 gate pembantu di node boost
        Cg = cggw * sigma_w
        Cboot = CBOOT_RATIO * Cg
        need = {}
        for name, load, budget, nt in helpers:
            c = Cboot if load == 'Cboot' else Cg
            need[name] = ronw / (budget / (nt * c))
        w_help = max(W_MIN, max(need.values()))

    print(f'  5. Cg = Cgg/W * (W_switch + 3*W_pembantu)')
    print(f'       = {cggw*1e15:.3f} * ({w_sw:.1f} + 3*{w_help:.2f}) '
          f'= {Cg*1e15:.2f} fF')
    print(f'  6. Cboot = {CBOOT_RATIO} * Cg = {Cboot*1e15:.1f} fF')

    side = np.sqrt(Cboot / spec.CAMIMC) - spec.M3_DW
    print(f'     sisi MIM = sqrt(Cboot/CAMIMC) - M3_DW = {side:.2f} um'
          f'  -> gambar {np.ceil(side):.0f} x {np.ceil(side):.0f} um')
    c_act = spec.c_unit(np.ceil(side))
    print(f'     Cboot terpasang = {c_act*1e15:.1f} fF'
          f'   rasio Cboot/Cg = {c_act/Cg:.1f}\n')

    print('  7. lebar minimum tiap pembantu (dari beban dan tenggatnya):')
    for name, load, budget, nt in helpers:
        print(f'       {name:<14} beban {load:<6} tenggat {budget*1e9:5.1f} ns'
              f'  -> butuh W >= {need[name]:.3f} um')
    print(f'     terbesar {max(need.values()):.3f} um, di bawah W_min proses '
          f'{W_MIN} um -> pakai W_pembantu = {w_help:.2f} um')

    # Membulatkan pembantu ke 1 um lebih enak di layout tapi menambah Cg.
    # Tunjukkan ongkosnya supaya keputusannya sadar, bukan kebiasaan.
    Cg1 = cggw * (w_sw + 3 * 1.0)
    side1 = np.sqrt(CBOOT_RATIO * Cg1 / spec.CAMIMC) - spec.M3_DW
    print(f'     kalau dibulatkan ke 1.0 um: Cg {Cg*1e15:.2f} -> '
          f'{Cg1*1e15:.2f} fF, Cboot butuh sisi {side1:.1f} um '
          f'(+{(np.ceil(side1)**2-np.ceil(side)**2):.0f} um^2 luas)\n')

    # ---- ringkasan -------------------------------------------------------
    print('-' * 66)
    print('  HASIL')
    print(f'    Mswitch                       W = {w_sw:.1f} um, L = {L_MIN}')
    print(f'    Cboot                         {np.ceil(side):.0f} x '
          f'{np.ceil(side):.0f} um  ({c_act*1e15:.0f} fF)')
    print(f'    pembantu (Mdisbot, Mchtop, Mdistop,')
    print(f'      Mchbot, Mchtopdrv2, M1, M2)   W = {w_help:.2f} um')
    print(f'    Mchtopdrv1                    W = {2*w_help:.2f} um'
          f'  (2x drv2, untuk Vds)')
    print('-' * 66)
    print('  Perkiraan hasil:')
    ron = ronw / w_sw
    print(f'    R_on          ~ {ron:.0f} ohm    (tau = {ron*C_L*1e9:.3f} ns,'
          f' T_s/tau = {T_S/(ron*C_L):.1f})')
    print(f'    t_settle      ~ {n_tau*ron*C_L*1e9:.2f} ns'
          f'  = {n_tau*ron*C_L/T_S*100:.0f} % T_sample  [sehat 40-70 %]')
    print(f'    langkah injeksi ~ {QINJ_W*w_sw/C_L*1e3:.2f} mV'
          f'  [batas {INJ_LIMIT*1e3:.0f} mV]')
    print('-' * 66)
    print('  YANG TIDAK BISA DIJAWAB TABEL INI:')
    print('    Sumbu VSB tabel hanya 0 .. 0.4 V, sedangkan switch bekerja')
    print('    dengan VSB = vin = 0 .. 1.8 V. Kerataan R_on lintas input')
    print('    (body effect) HARUS diukur dengan ref/tb2b_ron_dc.sp.')
    print('-' * 66)


if __name__ == '__main__':
    main()
