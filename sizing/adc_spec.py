"""
Spec bersama SAR ADC 8-bit 10 MS/s differential, sky130A, Tiny Tapeout 1x2.

SATU-SATUNYA sumber untuk kategori (a) spec keras, (b) fakta PDK kapasitor, dan
pilihan (c) yang dipakai LEBIH DARI SATU notebook. Diimpor oleh:

    cdac.ipynb        -> sizing array kapasitor   (berdiri sendiri)
    comparator.ipynb  -> sizing StrongARM latch   (butuh hasil cdac.ipynb)

Arah ketergantungan satu arah dan tidak boleh dibalik:

    spec  ->  CDAC (C_u dari spec DNL)  ->  sisa anggaran  ->  comparator

C_u TIDAK bergantung anggaran noise. Karena itu cdac.ipynb bisa dijalankan tanpa
comparator.ipynb, tapi tidak sebaliknya.
"""
import json
import os

import numpy as np
import scipy.constants as sc

HERE = os.path.dirname(os.path.abspath(__file__))
CDAC_JSON = os.path.join(HERE, 'cdac_result.json')

# =============================================================================
# (a) SPEC KERAS
# =============================================================================
VDD   = 1.8
N     = 8
fs    = 10e6
VREF  = 1.8            # VREF = supply; tidak ada reference buffer di TT
ENOB  = 7.5
F_IN  = fs/2           # Nyquist; dipakai untuk syarat aperture jitter

# =============================================================================
# (b) FAKTA PDK  -- kapasitor. Fakta transistor dibaca dari .mat di notebook.
# =============================================================================
kT     = sc.Boltzmann*300.0

A_C    = 2.8e-2        # koef. mismatch kapasitor [fraksi * um]. sigma_C/C = A_C/sqrt(A_u)
                       #   sky130_fd_pr__cap_mim_m3_1.model.spice baris 27:
                       #   MC_MM_SWITCH*AGAUSS(0,1,1)*0.01*2.8*(carea+cperim)/sqrt(wc*lc*mf)
CAMIMC = 2.00e-15      # F/um^2   r+c/res_typical__cap_typical__lin.spice baris 7
CPMIMC = 0.19e-15      # F/um     r+c/res_typical__cap_typical__lin.spice baris 8

# Bias dimensi. Subckt cap_mim_m3_1 baris 19-20:
#     wc = 'w + m3_dw*1e6 + tol_m3*1e6'   (idem lc)
# m3_dw = -0.025u  -> sky130_fd_pr__model__r+c.model.spice baris 82
# tol_m3 = -1.625e-08*ic_res -> 0 saat MC mati; saat MC hidup ic_res adalah SATU draw
#          global, jadi ia gain error bersama, bukan mismatch per-device.
# DIMENSI EFEKTIF = DIMENSI GAMBAR - 0.025 um. Label symbol xschem TIDAK memasukkan
# ini (ia pakai W,L gambar), jadi label di skematik optimis +4.5% pada 1x1 um.
M3_DW = -0.025         # um

# Corner kapasitor, dari r+c/res_*__cap_*__lin.spice. Rentangnya -22.9% .. +23.3%
# pada drawn 2x2 um -- JAUH lebih lebar dari sigma 1-sigma variabel MC 'mim' (2.83%),
# yang bukan corner box. Semua ini GAIN ERROR bersama: matching tidak terpengaruh
# karena sigma_C/C = A_C/sqrt(wc*lc*mf) tidak memuat camimc/cpmimc.
CAP_CORNERS = {'cap_typical': (2.000e-15, 0.19e-15),
               'cap_low':     (1.778e-15, 0.03e-15),
               'cap_high':    (2.231e-15, 0.35e-15)}

CAPM_W_MIN  = 1.00     # capm.1   min width capm
CAPM_SP     = 0.84     # capm.2a  min spacing capm
CAPM_SP_M3  = 1.20     # capm.2b  min spacing antar met3 bottom plate <- penentu pitch
TILE_UM2    = 167*216  # Tiny Tapeout 1x2

# =============================================================================
# (c) PILIHAN DESAIN yang dipakai LEBIH DARI SATU notebook
# =============================================================================
T_SAMPLE = 15e-9       # ditentukan bandwidth bootstrapped switch (blok itu belum ada)
N_SPLIT  = 4           # jumlah LANGKAH DAC split-monotonic. BUKAN indeks bit -- lihat
                       # catatan konvensi di bawah.

# =============================================================================
# TURUNAN SPEC
# =============================================================================
FS_diff = 2*VREF
LSB     = FS_diff/2**N
dV_in   = LSB/2
SNDR_dB = ENOB*6.02 + 1.76

# Top-plate sampling membuat comparison ke-1 GRATIS: comparator langsung
# membandingkan hasil sampling terhadap 0 V differential, tanpa DAC bergerak.
#
#         b1      b2      b3      b4      b5      b6      b7      b8
#  comp    1       2       3       4       5       6       7       8
#  step        k=1     k=2     k=3     k=4     k=5     k=6     k=7
#  bobot        64      32      16       8       4       2       1
#  mode       split   split   split   split   mono    mono    mono   (N_SPLIT=4)
#
# Langkah k dijalankan SESUDAH comparison ke-k. Jadi langkah terakhir k = N-1 = 7;
# TIDAK ADA langkah k=8.
n_step = N - 1
n_unit = 2**(N-1)                                  # C_tot,sisi dalam satuan C_u
w_step = [n_unit//2**k for k in range(1, N)]       # 64 32 16 8 4 2 1
w_dummy = n_unit - sum(w_step)                     # = 1, WAJIB agar C_tot = 2^(N-1)

Ts      = 1/fs
t_conv  = Ts - T_SAMPLE
t_trial = t_conv/N

# V_CM DIPAKSA, bukan dipilih: agar V_diff mencapai +/-VREF sementara kedua top
# plate tetap di dalam 0..VDD, satu-satunya solusi adalah V_CM = VREF/2.
V_CM_MAX = VREF/2
cm_steps = [(k, VREF/2**k, VREF/2**(k+1)) for k in range(N_SPLIT+1, N)]
dV_CM    = sum(d for _, _, d in cm_steps)
V_CM_MIN = V_CM_MAX - dV_CM

# Anggaran error total. TIDAK dibagi dengan share yang diketik -- ia dibelanjakan
# suku per suku: CDAC dulu (dipaksa spec DNL), comparator dapat SISANYA.
Vsig  = (FS_diff/2)/np.sqrt(2)
Vnd   = Vsig/10**(SNDR_dB/20)
Vq    = LSB/np.sqrt(12)
Vcirc = np.sqrt(max(Vnd**2 - Vq**2, 0.0))


# =============================================================================
# HELPER
# =============================================================================
def eff_side(side_um):
    """Dimensi efektif = gambar + m3_dw. INI yang masuk semua rumus, bukan dimensi
    gambar. Kelewat ini membuat C terlalu besar 4.5% pada 1x1 um, 2.3% pada 2x2."""
    return side_um + M3_DW


def c_unit(side_um, corner='cap_typical'):
    """C satu unit cap_mim_m3_1 persegi, dari dimensi GAMBAR.

    Suku perimeter = 16% dari total pada 2 um (typical), 3.3% di cap_low dan 24.1%
    di cap_high. Ia BUKAN koreksi kecil di corner mana pun: kapasitor berarea sama
    tapi bentuk beda punya nilai beda. Itu alasan unit cell wajib."""
    ca, cp = CAP_CORNERS[corner]
    wc = eff_side(side_um)
    return ca*wc**2 + cp*2*(2*wc)


def sigma_unit(side_um):
    """sigma_C/C satu unit, dari model mismatch PDK:
        sigma_C/C = 0.01*2.8/sqrt(wc*lc*mf) = A_C/eff_side   (mf = 1, persegi)
    Perhatikan camimc dan cpmimc TIDAK muncul -> matching tidak bergantung corner
    kapasitor, jadi seluruh analisis DNL/INL sah di cap_low maupun cap_high."""
    return A_C/eff_side(side_um)


def save_cdac(d):
    """Dipanggil cdac.ipynb di akhir. Antarmuka ke comparator.ipynb."""
    with open(CDAC_JSON, 'w') as f:
        json.dump(d, f, indent=2, sort_keys=True)
    return CDAC_JSON


def load_cdac():
    """Dipanggil comparator.ipynb. Menolak diam-diam kalau CDAC belum di-size."""
    if not os.path.exists(CDAC_JSON):
        raise FileNotFoundError(
            f'{CDAC_JSON} tidak ada.\n'
            'Jalankan sizing/cdac.ipynb sampai selesai lebih dulu. Jatah noise\n'
            'comparator adalah SISA setelah CDAC, jadi ia tidak bisa dihitung\n'
            'sebelum C_u diketahui. Angkanya TIDAK boleh diketik tangan di sini.')
    with open(CDAC_JSON) as f:
        return json.load(f)


def summary():
    return (f'SPEC  N={N}  fs={fs/1e6:.0f} MS/s  VREF={VREF} V  ENOB={ENOB}\n'
            f'      LSB      = {LSB*1e3:.4f} mV differential\n'
            f'      V_CM     = {V_CM_MAX:.6f} V (dipaksa) .. {V_CM_MIN:.6f} V '
            f'(droop {dV_CM*1e3:.4f} mV = {dV_CM/LSB:.3f} LSB)\n'
            f'      t_trial  = {t_trial*1e9:.3f} ns\n'
            f'      V_circ   = {Vcirc*1e3:.4f} mV  (V_q = {Vq*1e3:.4f} mV di luar ini)\n'
            f'      {n_step} langkah DAC, bobot {w_step} + dummy {w_dummy} C_u '
            f'= {n_unit} C_u/sisi')
