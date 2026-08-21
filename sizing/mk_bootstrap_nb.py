"""Bangun sizing/bootstrap.ipynb. Jalankan sekali, lalu edit notebooknya."""
import json

C = []


def md(s):
    C.append({"cell_type": "markdown", "metadata": {}, "source": s.splitlines(True)})


def code(s):
    C.append({"cell_type": "code", "execution_count": None, "metadata": {},
              "outputs": [], "source": s.strip('\n').splitlines(True)})


md(r'''# Bootstrapped Sampling Switch — Sizing dari Anggaran Waktu

Rantai ketergantungan, satu arah, tidak boleh dibalik:

    adc_spec.py  ->  fs, N, VDD, T_SAMPLE
    cdac.ipynb   ->  C_tot          (beban yang harus digerakkan)
    lookup table ->  Ron*W, Cgg/W   (properti PDK)
                 ->  W_switch, Cboot, ukuran pembantu

Blok ini adalah pemegang surat utang di `adc_spec.py`:

    T_SAMPLE = 15e-9   # ditentukan bandwidth bootstrapped switch
                       # (blok itu belum ada)

Notebook ini menagih utang itu, dan di Langkah 8 memeriksa apakah 15 ns
memang angka yang benar.

**Kenapa gm/ID tidak muncul di sini.** gm/ID adalah metrik efisiensi
transkonduktansi untuk devais di saturasi yang tugasnya menguatkan.
Sampling switch bekerja di triode dengan Vds ~ 0; gm tidak masuk ke satu
pun persamaan di bawah. Yang diambil dari tabel adalah `ID_W` pada VDS
kecil (memberi Ron*W), `CGG_W` (beban gate), dan `VT` versus `VSB`.
''')

code(r'''
import numpy as np
import adc_spec as spec
from pygmid import Lookup as lk

MAT = '/foss/designs/lookuptable/skywater130a/'
nfet, pfet = lk(MAT + 'nfet_01v8.mat'), lk(MAT + 'pfet_01v8.mat')

L_MIN, W_MIN, VDS_LIN = 0.15, 0.42, 0.025

def ron_w(dev, vgs, vsb=0.0, L=L_MIN):
    """Ron*W [ohm*um]. Di triode dalam, Ron = Vds/Id, jadi Ron*W = Vds/(Id/W).
    VDS_LIN dipilih = titik grid terkecil tabel, cukup jauh di bawah Vov."""
    return VDS_LIN / float(dev.lookup('ID_W', L=L, VGS=vgs, VDS=VDS_LIN, VSB=vsb))

def cgg_w(dev, vgs, vsb=0.0, L=L_MIN):
    """Cgg per um [F/um] pada bias kerja."""
    return float(dev.lookup('CGG_W', L=L, VGS=vgs, VDS=VDS_LIN, VSB=vsb))

def vth(dev, vgs, vsb=0.0, L=L_MIN):
    return float(dev.lookup('VT', L=L, VGS=vgs, VDS=VDS_LIN, VSB=vsb))

# beban: C_tot CDAC satu sisi + parasitik rute dan gate comparator
cdac  = spec.load_cdac()
C_PAR = 60e-15                      # ganti dengan hasil PEX
C_L   = cdac['C_tot'] + C_PAR
print(f'C_L = C_tot {cdac["C_tot"]*1e12:.4f} pF + parasitik {C_PAR*1e15:.0f} fF'
      f' = {C_L*1e12:.4f} pF')
''')

md(r'''## Langkah 1 — Anggaran waktu, dan siapa bersaing dengan siapa

Satu periode sampling harus memuat dua fase yang saling meniadakan:

    Ts = 1/fs = T_SAMPLE + t_conv
    t_conv    = N * t_trial

`T_SAMPLE` milik blok ini. `t_conv` milik comparator + SAR logic + DAC
settling. Setiap nanodetik yang diambil satu pihak hilang dari pihak lain.

Yang penting dipahami: **T_SAMPLE bukan angka yang dipilih bebas, ia hasil
negosiasi dua batas.**

- Batas bawah datang dari blok ini. `T_SAMPLE` kecil menuntut `R_on`
  kecil, yang menuntut `W` besar — dan `W` punya plafon dari charge
  injection. Jadi ada `T_SAMPLE` minimum yang masih bisa dibuat.
- Batas atas datang dari comparator. `t_trial = (Ts - T_SAMPLE)/N` harus
  cukup untuk regenerasi latch, keputusan logika, dan settling DAC.

Langkah 8 menghitung kedua batas itu dan memeriksa apakah 15 ns berada di
tengahnya.
''')

code(r'''
Ts       = 1/spec.fs
T_SAMPLE = spec.T_SAMPLE
t_conv   = Ts - T_SAMPLE
t_trial  = t_conv/spec.N

print('pembagian waktu yang berlaku sekarang:')
print(f'  Ts        = {Ts*1e9:7.2f} ns')
print(f'  T_SAMPLE  = {T_SAMPLE*1e9:7.2f} ns   ({T_SAMPLE/Ts*100:4.1f} %)  <- blok ini')
print(f'  t_conv    = {t_conv*1e9:7.2f} ns   ({t_conv/Ts*100:4.1f} %)')
print(f'  t_trial   = {t_trial*1e9:7.2f} ns   ({spec.N} trial)')
''')

md(r'''## Langkah 2 — Anggaran error, dan jumlah konstanta waktu

Settling satu kutub:

    error(t) = V_step * exp(-t/tau)

Syaratnya error di akhir jendela track lebih kecil dari error yang
diizinkan:

    T_SAMPLE/tau >= ln(V_step / V_err)

Sekarang isi kedua besaran dari definisi ADC. Step terburuk adalah full
scale, karena konversi sebelumnya meninggalkan top plate di residu yang
bisa berada di ujung berlawanan:

    V_step = VREF
    V_err  = 0.5 LSB single-ended = VREF / 2^(N+1)

VREF saling menghabiskan:

    jumlah tau = ln(2^(N+1)) = (N+1) * ln 2

**Hasil ini tidak bergantung tegangan maupun proses — hanya jumlah bit.**
Itulah kenapa ia bisa dipakai sebagai rule of thumb di teknologi mana pun.
''')

code(r'''
n_tau   = (spec.N + 1)*np.log(2)
V_err   = spec.VREF/2**(spec.N + 1)
Ron_max = T_SAMPLE/(n_tau*C_L)

print(f'  V_err (0.5 LSB single-ended) = VREF/2^(N+1) = {V_err*1e3:.4f} mV')
print(f'  jumlah tau = (N+1)*ln2       = {n_tau:.3f}')
print(f'  R_on_max = T_SAMPLE/(n_tau*C_L) = {Ron_max:.0f} ohm')
print()
print('  cek: kalau R_on tepat di batas, error settling di akhir jendela')
print(f'       = VREF*exp(-{n_tau:.2f}) = {spec.VREF*np.exp(-n_tau)*1e3:.4f} mV'
      f'  (target {V_err*1e3:.4f} mV)')
''')

md(r'''## Langkah 3 — Kalibrasi tabel, wajib sekali per tabel

Tabel Murmann **tidak membawa metadata satuan**. Menebak `A/m` versus
`A/um` menggeser hasil enam orde besaran tanpa satu pun pesan error —
percobaan pertamaku mencetak `Ron*W = 0.0` karena ini.

Jadi sebelum dipakai, tabel divalidasi terhadap dua pengukuran ngspice
yang berdiri sendiri, dari `xschem/sar-adc_tb/ref`:

    Ron*W   tb2b_ron_dc.sp, gate boost ideal, W=1, vin rendah
    Cgg/W   sapuan AC, gate diberi AC 1 V, Cgg = |Im(I)|/omega

Kalau selisihnya lebih dari 15 %, jangan lanjut.

**Dan sebelum itu: di bias mana tabel harus di-query?** Ini bukan detail.
Source sebuah NMOS adalah terminal yang lebih RENDAH, dan selama track
terminal itu adalah `vout`. Jadi sepanjang jendela track:

    Vgs = vgate - vout        Vds = vin - vout        Vsb = vout

Ketiganya bergerak selama settling. Yang menentukan `tau` pada pendekatan
terakhir ke 0.5 LSB adalah kondisi di UJUNG jendela, yaitu
`Vds -> 0`, `Vsb = vin`. Jadi:

- `VDS = 0.025` **benar** — triode dalam, itu yang menentukan tau.
- `VSB = 0` **salah** — seharusnya `vin`, sampai 1.8 V. Tabel mentok 0.4 V,
  jadi harus diekstrapolasi dengan hukum akar yang sama seperti Vth.

Memakai `VSB = 0` membuat `Ron*W` terlalu optimis 22 % di ujung atas
rentang input, dan `W_switch` ikut terlalu kecil.
''')

code(r'''
REF_RONW, REF_CGGW = 979.75, 1.513e-15     # ngspice, lihat ref/NOMINAL.md
VGS_OP = 1.7                               # boost nyata, bukan VDD penuh

t_ronw, t_cggw = ron_w(nfet, VGS_OP), cgg_w(nfet, VGS_OP)
e_r = abs(t_ronw/REF_RONW - 1)*100
e_c = abs(t_cggw/REF_CGGW - 1)*100

print(f'  Ron*W   tabel {t_ronw:8.1f}   ngspice {REF_RONW:8.1f} ohm*um   selisih {e_r:4.1f} %')
print(f'  Cgg/W   tabel {t_cggw*1e15:8.3f}   ngspice {REF_CGGW*1e15:8.3f} fF/um    selisih {e_c:4.1f} %')
assert e_r < 15 and e_c < 15, 'kalibrasi gagal - periksa satuan tabel'
print('  -> satuan: ID_W [A/um], CGG_W [F/um]. Tabel boleh dipakai.\n')

# --- kondisi kerja sebenarnya sepanjang jendela track -----------------
from scipy.optimize import curve_fit
_law = lambda vsb, vt0, gam, phi: vt0 + gam*(np.sqrt(phi+vsb) - np.sqrt(phi))
_vsb = np.array([0.0, 0.2, 0.4])
_vt  = np.array([vth(nfet, VGS_OP, v) for v in _vsb])
(VT0, GAM, PHI), _ = curve_fit(_law, _vsb, _vt, p0=[0.7, 0.5, 0.7], maxfev=20000)
vth_ext = lambda vsb: _law(np.asarray(vsb, float), VT0, GAM, PHI)

vg_pk = spec.VREF + VGS_OP            # vgate saat track, vin di puncak
print('  kondisi kerja Mswitch sepanjang jendela track (vin = VREF):')
print('    fase                  Vgs      Vds      Vsb    daerah')
for nm, vo in (('awal (vout=residu 0)', 0.0), ('tengah', spec.VREF/2),
               ('akhir (vout=vin)', spec.VREF)):
    vgs, vds = vg_pk - vo, spec.VREF - vo
    reg = 'triode' if vds < vgs - vth_ext(vo) else 'SATURASI'
    print(f'    {nm:<20}{vgs:8.3f} {vds:8.3f} {vo:8.3f}   {reg}')
print('    -> triode sepanjang jendela, jadi model settling eksponensial SAH.')
print()

# --- koreksi Ron*W ke Vsb sebenarnya ----------------------------------
t_ronw_0  = t_ronw
t_ronw    = t_ronw_0*(VGS_OP - vth_ext(0))/(VGS_OP - vth_ext(spec.VREF))
print(f'  Ron*W pada VSB=0        = {t_ronw_0:7.1f} ohm*um  <- yang tabel berikan')
print(f'  Ron*W pada VSB=VREF     = {t_ronw:7.1f} ohm*um  <- yang DIPAKAI'
      f'  (+{(t_ronw/t_ronw_0-1)*100:.0f} %)')
print(f'  tb2b ukur di vin=1.75   =  1086.2 ohm*um  (ekstrapolasi meleset'
      f' {(t_ronw/1086.2-1)*100:+.0f} %, arah aman)')
''')

md(r'''## Langkah 4 — Jendela `W_switch`: dua batas dari arah berlawanan

Ini inti seluruh desain, dan tempat kesalahan paling mahal terjadi.

**Batas bawah — settling.** `W` kecil berarti `R_on` besar berarti
settling tidak selesai.

    W >= (Ron*W) / R_on_max * margin

**Batas atas — charge injection.** Saat switch membuka, muatan kanal dan
clock feedthrough menyuntik ke `C_L`, dan keduanya sebanding `W`:

    Q_inj/W = 0.5*Cox*L*Vov  +  Cov*dVgate
            = injeksi kanal  +  feedthrough

    dV_inject = Q_inj/W * W / C_L        harus < 7 mV

`Q_inj/W` **bukan konstanta PDK murni** -- ia bergantung bias. `Vov` dan
`dVgate` keduanya naik kalau boost membaik, jadi boost yang lebih bagus
menyuntik lebih banyak muatan. Terbukti dari dua sizing yang sudah diukur:

    W=20, boost 1.517 V -> 1.112 fC/um    (teori 1.075, meleset +3.5 %)
    W=2,  boost 1.692 V -> 1.280 fC/um    (teori 1.208, meleset +6.0 %)

Karena itu ia **dihitung dari rumus**, bukan diketik. Untuk batas atas
dipakai kasus terburuk `Vgs = VDD` (boost sempurna), yang membuat batasnya
konservatif -- arah yang aman untuk sebuah plafon.

**Asimetri yang menentukan segalanya:** error settling turun
**eksponensial** terhadap W, error injeksi naik **linier**. Begitu kamu
punya cukup tau, tambahan W tidak membeli apa pun tapi tetap membayar
penuh. Karena itu targetnya bukan "R_on sekecil mungkin" melainkan
**penuhi settling dengan W sekecil mungkin**.
''')

code(r'''
MARGIN  = 2.5         # corner ss/85C (~1.8x) x jendela menyusut x Vgs<VDD
INJ_LIM = 7e-3        # V
# --- Q_inj/W SELURUHNYA dari tabel, kecuali satu faktor partisi -------
from scipy.optimize import curve_fit
COV   = float(nfet.lookup('CGD_W', L=L_MIN, VGS=0.0, VDS=VDS_LIN, VSB=0))
COX_L = t_cggw - 2*COV
K_PART = 0.53        # fraksi muatan kanal yang terjebak di C_L; lihat bawah

# Sumbu VSB tabel mentok 0.4 V, switch butuh sampai 1.8 V.
# Cocokkan hukum akar ke tiga titik yang ada, lalu ekstrapolasi.
_vsb = np.array([0.0, 0.2, 0.4])
_vt  = np.array([vth(nfet, 1.7, v) for v in _vsb])
_law = lambda vsb, vt0, gam, phi: vt0 + gam*(np.sqrt(phi + vsb) - np.sqrt(phi))
(VT0, GAM, PHI), _ = curve_fit(_law, _vsb, _vt, p0=[0.7, 0.5, 0.7], maxfev=20000)

def vth_ext(vsb):
    """Vth pada VSB apa pun, lewat ekstrapolasi hukum akar dari tabel."""
    return _law(np.asarray(vsb, float), VT0, GAM, PHI)

def qinj_w(vgs, dvgate, vsb=0.0):
    """Muatan tersuntik per um saat switch membuka [C/um].
    K_PART bagian muatan kanal terjebak di C_L, plus feedthrough Cgd."""
    return K_PART*COX_L*(vgs - vth_ext(vsb)) + COV*dvgate

print(f'  dari tabel: Cov = {COV*1e15:.4f} fF/um, Cox*L = {COX_L*1e15:.4f} fF/um')
print(f'  body effect: Vth0={VT0:.4f} gamma={GAM:.4f} 2phi={PHI:.4f}'
      f'  (ekstrapolasi dari VSB<=0.4 V)')

# validasi terhadap TB6, yang menyapu W pada tiga vin
print('\n  validasi terhadap tb6_qinj.sp:')
for v, boost, meas in ((0.10, 1.7192, 0.9663), (0.90, 1.7045, 1.1198),
                       (1.70, 1.6911, 1.2660)):
    qt = qinj_w(boost, v + boost, v)*1e15
    print(f'    vin={v:4.2f}  tabel {qt:.4f}  TB6 {meas:.4f} fC/um'
          f'   meleset {(qt/meas-1)*100:+5.1f} %')

# batas atas memakai kasus terburuk: boost SEMPURNA -> injeksi terbesar
QINJ_W = qinj_w(spec.VDD, spec.VREF + spec.VDD, spec.VREF)
print(f'  Q_inj/W kasus terburuk (Vgs=VDD) = {QINJ_W*1e15:.3f} fC/um\n')

W_lo = t_ronw/Ron_max*MARGIN
W_hi = INJ_LIM*C_L/QINJ_W
print(f'  batas bawah (settling)  W >= {t_ronw:.0f}/{Ron_max:.0f} * {MARGIN} = {W_lo:.2f} um')
print(f'  batas atas  (injeksi)   W <= {INJ_LIM*1e3:.0f}mV * C_L / {QINJ_W*1e15:.2f}fC/um = {W_hi:.2f} um')
assert W_lo < W_hi, 'jendela kosong: T_SAMPLE terlalu pendek untuk C_L ini'
print(f'  -> jendela {W_lo:.2f} .. {W_hi:.2f} um\n')

print('  kedua error versus W (asimetri eksponensial vs linier):')
print('    W[um]   R_on[ohm]  T/tau   err_settling     err_injeksi')
for W in (0.5, 1.0, 1.5, 2.0, 3.0, 5.0, 10.0, 20.0):
    R = t_ronw/W; n = T_SAMPLE/(R*C_L)
    es = spec.VREF*np.exp(-n); ei = QINJ_W*W/C_L
    tag = ' <-- terpilih' if abs(W-2.0) < 1e-9 else ''
    print(f'   {W:5.1f} {R:9.0f} {n:7.1f}   {es*1e3:12.3e} mV  {ei*1e3:8.3f} mV{tag}')

W_SW = 2.0            # pilihan: di dalam jendela, dibulatkan enak layout
print(f'\n  W_switch = {W_SW} um   (t_settle = {n_tau*t_ronw/W_SW*C_L*1e9:.2f} ns'
      f' = {n_tau*t_ronw/W_SW*C_L/T_SAMPLE*100:.0f} % T_SAMPLE)')
''')

md(r'''## Langkah 5 — `Cboot` dari kekekalan muatan

`Cboot` bukan baterai. Saat ia disambungkan ke node gate, muatannya
dibagi dengan seluruh parasitik di node itu. Kekekalan muatan pada pulau
`{plat atas Cboot, ctop, vgate}` yang terisolasi selama track:

    sebelum (akhir hold): ctop = VDD, vgate = 0,  cbot = 0
    sesudah (track)     : ctop = vgate = Vg,      cbot = vin

    Cboot*VDD + Ctop*VDD = Cboot*(Vg - vin) + (Ctop + Cg)*Vg

                       VDD*Cg + vin*Cp
    boost error = -----------------------      Cp = Ctop + Cg
                        Cboot + Cp

Dua hal penting terbaca dari rumus itu:

1. Parasitik di sisi `ctop` **hampir gratis** — ia sudah terisi ke VDD di
   fase hold, jadi tidak ada muatan yang perlu dipinjam.
2. Parasitik di sisi `vgate` yang membunuh, harganya `VDD * Cg`.

Yang menempel di `vgate` adalah gate dari `Mswitch`, `Mdisbot`, `Mchtop`,
dan `Mdistopdrv`. Hanya gate `Mswitch` yang tidak bisa dihindari; tiga
sisanya adalah pemborosan murni kalau dibesarkan.

Ambangnya diturunkan dari dua titik ukur, bukan dari buku:

    Cg/Cboot = 0.032 -> variasi boost 18.5 mV -> SNDR 70.8 dB
    Cg/Cboot = 0.125 -> variasi boost 81.4 mV
    fit: variasi = 0.6 V * Cg/Cboot

Pertahankan variasi <= 20 mV, jadi `Cboot >= 30*Cg`. Dibulatkan turun ke
25 demi luas. **Ini konstanta terlemah di seluruh notebook** — fit dua
titik pada satu topologi.
''')

code(r'''
CBOOT_RATIO = 25
W_HELP      = 1.0     # tiga pembantu bergate di vgate; lihat Langkah 6

sigma_W = W_SW + 3*W_HELP
Cg      = t_cggw*sigma_W
Cboot   = CBOOT_RATIO*Cg

def mim_side(C):
    """Balik c_unit(): sisi GAMBAR yang memberi kapasitansi C."""
    ca, cp = spec.CAP_CORNERS['cap_typical']
    wc = (-4*cp + np.sqrt(16*cp**2 + 4*ca*C))/(2*ca)
    return wc - spec.M3_DW

side = mim_side(Cboot)
side_drawn = np.ceil(side)
C_act = spec.c_unit(side_drawn)

print(f'  gate di node boost: Mswitch {W_SW} + 3 pembantu x {W_HELP} = {sigma_W} um')
print(f'  Cg    = Cgg/W * sigma_W = {t_cggw*1e15:.3f} * {sigma_W} = {Cg*1e15:.2f} fF')
print(f'  Cboot = {CBOOT_RATIO} * Cg = {Cboot*1e15:.1f} fF')
print(f'  sisi MIM = {side:.2f} um -> gambar {side_drawn:.0f} x {side_drawn:.0f} um'
      f' = {C_act*1e15:.1f} fF')
print(f'  rasio terpasang Cboot/Cg = {C_act/Cg:.1f}')
print(f'  perkiraan variasi boost = 0.6 V * Cg/Cboot = {0.6*Cg/C_act*1e3:.1f} mV')
print(f'  luas Cboot = {side_drawn**2:.0f} um^2'
      f'  (bandingkan CDAC satu sisi: {128*cdac['CAPM_SIDE']**2:.0f} um^2)')
''')

md(r'''## Langkah 6 — Devais pembantu: masing-masing dari beban dan tenggatnya

Pola yang sama untuk semua sepuluh: **berapa kapasitansi yang harus
digerakkan, dalam berapa lama.**

    tau <= tenggat / n_tau_lokal
    R_on <= tau / beban
    W    >= (Ron*W) / R_on

`n_tau_lokal` di sini cukup 5 (settle ke 0.7 %) karena node-node ini
tidak memegang sinyal — mereka hanya perlu selesai sebelum fase berakhir.

**Dari mana tenggatnya, dan kenapa `Mdisbot` tidak dapat 15 ns penuh.**
Ini pertanyaan yang gampang terlewat. Jendela track 15 ns itu **bukan
milik `Mdisbot`** — ia dibagi.

    vgate = ctop = cbot + V_Cboot

Selama `cbot` belum mencapai `vin`, `vgate` belum mencapai `vin + VDD`,
dan selama itu `R_on` switch masih tinggi. Jadi jam settling baru
benar-benar mulai setelah boost mapan:

    T_SAMPLE  =  t_boost  +  t_settle

Kalau `Mdisbot` diberi 15 ns penuh, boost baru mapan di ujung jendela dan
tidak tersisa waktu untuk settling sama sekali.

Batas atas `t_boost` yang sebenarnya adalah sisa setelah settling:

    t_boost_max = T_SAMPLE - n_tau * R_on_switch * C_L

Tapi memakai seluruh sisa itu berarti menghabiskan margin. Jadi yang
dipakai adalah **alokasi**: sebagian kecil jendela diberikan ke boost.
Angka itu pilihan, bukan fisika — karena itu ia parameter di bawah, dan
sel ini mencetak berapa sebenarnya yang terpakai.

Tenggat `Mchtopdrv` beda lagi asalnya: ia tidak diambil dari jendela
track, melainkan dari syarat bahwa switch harus benar-benar mati sebelum
comparator mengambil keputusan pertama. Dan di sini ada pertukaran:
turn-off cepat membuat instan sampling tajam, tapi menyuntik lebih banyak
muatan ke `C_L` (muatan kanal tidak sempat lolos ke sumber).
''')

code(r'''
# --- anggaran waktu tiap fase: mana yang FISIKA, mana yang ALOKASI ----
t_hold    = Ts - T_SAMPLE                 # FISIKA: sisa periode
t_set_sw  = n_tau*(t_ronw/W_SW)*C_L       # FISIKA: settling switch
t_boost_max = T_SAMPLE - t_set_sw         # FISIKA: sisa yang boleh dipakai boost

F_BOOST = 0.20                            # ALOKASI: porsi jendela untuk boost
T_BOOST = F_BOOST*T_SAMPLE
T_OFF   = 1e-9                            # ALOKASI: turn-off vgate

print(f'  t_hold      = {t_hold*1e9:6.2f} ns   FISIKA  (Ts - T_SAMPLE)')
print(f'  t_settle_sw = {t_set_sw*1e9:6.2f} ns   FISIKA  (n_tau * Ron * C_L)')
print(f'  t_boost_max = {t_boost_max*1e9:6.2f} ns   FISIKA  (sisa jendela)')
print(f'  T_BOOST     = {T_BOOST*1e9:6.2f} ns   ALOKASI ({F_BOOST*100:.0f} % jendela,'
      f' {t_boost_max/T_BOOST:.1f}x lebih ketat dari batas)')
print(f'  T_OFF       = {T_OFF*1e9:6.2f} ns   ALOKASI (turn-off vgate)\n')

helpers = [
    ('Mchtop',      'PMOS', pfet, C_act, t_hold, 7, 'isi ctop ke VDD'),
    ('Mchbot',      'NMOS', nfet, C_act, t_hold, 7, 'tarik cbot ke 0'),
    ('Mdisbot',     'NMOS', nfet, C_act, T_BOOST, 5, 'tarik cbot ke vin'),
    ('Mdistop',     'PMOS', pfet, Cg,    T_BOOST, 5, 'sambung ctop ke vgate'),
    ('Mchtopdrv',   'NMOS', nfet, Cg,    T_OFF,   5, 'buang muatan vgate'),
    ('M1/M2',       'both', nfet, 0.6e-15, T_OFF, 5, 'inverter penggerak'),
]
print(f'  {"devais":<12}{"beban":>10}{"tenggat":>10}{"R_on maks":>12}{"W butuh":>10}')
need_max = 0
for nm, typ, dev, load, budget, nt, job in helpers:
    rw = ron_w(dev, 1.8) if typ != 'NMOS' else ron_w(nfet, VGS_OP)
    R  = budget/(nt*load)
    W  = rw/R
    need_max = max(need_max, W)
    print(f'  {nm:<12}{load*1e15:8.1f}fF{budget*1e9:9.1f}ns{R/1e3:10.1f}k{W:10.4f}  {job}')
print(f'\n  terbesar {need_max:.4f} um (Mdisbot), lebar minimum proses {W_MIN} um')
print(f'\n  YANG SEBENARNYA TERJADI (diukur dari tb1_track_hold.raw, W=2):')
print(f'    cbot capai 99.9 % vin  : 0.490 ns   (anggaran {T_BOOST*1e9:.1f} ns)')
print(f'    vgate mapan 99.9 %     : 0.510 ns   -> {T_BOOST/0.510e-9:.0f}x lebih cepat')
print(f'    vgate turun ke 1 %     : 0.310 ns   (anggaran {T_OFF*1e9:.1f} ns)')
print(f'    boost memakan {0.510e-9/T_SAMPLE*100:.1f} % jendela track, bukan'
      f' {F_BOOST*100:.0f} % yang dialokasikan.\n')
print(f'  -> semua muat di W_min, tapi marginnya TIDAK seragam:')
print(f'       Mdisbot        {W_MIN/need_max:5.2f}x di atas kebutuhan  <- paling ketat')
print(f'       sisanya        {W_MIN/0.0651:5.0f}x .. {W_MIN/0.0027:5.0f}x')
print(f'     Jadi klaim "semua pembantu berlebih 100x" TIDAK benar. Mdisbot')
print(f'     harus mengisi Cboot penuh dalam 3 ns, dan itu batasan nyata --')
print(f'     ia satu-satunya pembantu yang perlu dicek ulang kalau Cboot naik.')
''')

md(r'''## Langkah 7 — Reliability: harga topologi ini

Boost mengangkat `vgate` ke `vin + VDD`, jadi node itu melampaui batas
devais 1.8 V:

    vgate_max = vin_max + boost

Setiap node yang bisa naik di atas VDD harus diperiksa terhadap setiap
node yang bisa turun ke 0. Yang paling tertekan adalah `Mchtopdrv1`,
cascode yang melindungi `Mchtopdrv2`.

Perlu jelas soal jenis batasnya, karena tidak semuanya sama beratnya:

| besaran | mekanisme | sifat |
|---|---|---|
| Vgs, Vgd | oksida (TDDB) | mendadak, permanen |
| Vds | hot carrier | bertahap, **hanya saat konduksi** |

Dan yang tidak bekerja: menambah devais ketiga di tumpukan dengan gate
juga di VDD **tidak menolong** di fase track. Setiap node tengah
mengambang naik lewat follower di atasnya sampai berhenti di `VDD - Vth`,
jadi semuanya berakhir di tegangan hampir sama dan devais teratas tetap
menyerap seluruh kelebihannya. Tumpukan hanya membagi tegangan kalau
gate-nya dibias **berbeda**, atau node tengahnya **digerakkan aktif**.
''')

code(r'''
vin_max   = spec.VREF                       # top plate berayun 0..VREF
boost_est = spec.VDD - 0.6*Cg/C_act - 0.09  # rugi charge sharing + offset empiris
vgate_max = vin_max + boost_est
v_mid     = spec.VDD - vth(nfet, 1.8, 0.4)  # node tengah berhenti di VDD-Vth

print(f'  vgate_max  ~ {vin_max:.2f} + {boost_est:.3f} = {vgate_max:.3f} V')
print(f'  node tengah tumpukan berhenti di VDD - Vth ~ {v_mid:.3f} V')
print(f'  -> Vds Mchtopdrv1 ~ {vgate_max - v_mid:.3f} V   (batas 1.98 V)')
print(f'  -> Vds Mchtopdrv2 ~ {v_mid:.3f} V   OK')
print()
print('  terukur di TB1 (W_switch=2): Mchtopdrv1 2.471 V, Mchtopdrv2 1.399 V')
print('  Melanggar, tapi kelas paling ringan: hanya Vds, dan hanya 0.16 %')
print('  duty cycle yang benar-benar mengalirkan arus (lihat README Skenario 7).')
''')

md(r'''## Langkah 8 — Kembali ke anggaran waktu: apakah 15 ns benar?

Sekarang kedua batas `T_SAMPLE` bisa dihitung.

**Batas bawah** — `W` tidak boleh melebihi plafon injeksi:

    R_on_min   = (Ron*W) / W_max_injeksi
    T_SAMPLE_min = n_tau * R_on_min * C_L * margin

**Batas atas** — comparator dan SAR logic butuh `t_trial` minimum.

Kalau `T_SAMPLE` yang dipakai jauh di atas batas bawah, artinya blok ini
**menyimpan waktu yang tidak ia butuhkan**, dan waktu itu lebih berharga
di fase konversi.
''')

code(r'''
Ron_min      = t_ronw/W_hi
T_SAMPLE_min = n_tau*Ron_min*C_L*MARGIN

print(f'  T_SAMPLE minimum yang masih bisa dibuat = {T_SAMPLE_min*1e9:.2f} ns')
print(f'  T_SAMPLE yang dipakai sekarang          = {T_SAMPLE*1e9:.2f} ns')
print(f'  -> kelebihan {T_SAMPLE/T_SAMPLE_min:.1f}x\n')

print('  kalau T_SAMPLE dipendekkan, W yang dibutuhkan naik:')
print('    T_SAMPLE[ns]  W_butuh[um]  injeksi[mV]  t_trial[ns]')
for TS in (5e-9, 8e-9, 10e-9, 12e-9, 15e-9, 20e-9):
    Rm = TS/(n_tau*C_L); Wn = t_ronw/Rm*MARGIN
    print(f'    {TS*1e9:9.0f} {Wn:12.2f} {QINJ_W*Wn/C_L*1e3:12.2f} '
          f'{(Ts-TS)/spec.N*1e9:12.2f}')
print()
TS_OPT = n_tau*(t_ronw/W_SW/MARGIN)*C_L*MARGIN
print(f'  T_SAMPLE yang membuat W={W_SW} um TEPAT pas = {TS_OPT*1e9:.2f} ns')
print(f'  TAPI n_tau hanya menghitung settling RC. Boost sendiri butuh ~1-2 ns')
print(f'  untuk mapan, dan itu tidak masuk rumus. TB1 mengukur t_settle 4.70 ns')
print(f'  di W=2, versus {TS_OPT*1e9:.2f} ns dari rumus -- selisihnya waktu boost.')
print(f'  Jadi lantai praktis ~{TS_OPT*1e9+3:.0f} ns, bukan {TS_OPT*1e9:.1f} ns.')
print(f'  memakainya mengembalikan {(T_SAMPLE-TS_OPT)*1e9:.1f} ns ke fase konversi,')
print(f'  yaitu t_trial {t_trial*1e9:.2f} -> {(Ts-TS_OPT)/spec.N*1e9:.2f} ns '
      f'(+{((Ts-TS_OPT)/spec.N/t_trial-1)*100:.0f} %).')
print()
print('  KEPUTUSAN: ini pertukaran dengan comparator, bukan keputusan blok ini')
print('  sendiri. Angka di atas adalah tawaran; comparator.ipynb yang menerima')
print('  atau menolak. Jangan ubah adc_spec.py tanpa menjalankan ulang keduanya.')
''')

md(r'''## Langkah 9 — Cara membangun testbench-nya

Testbench tidak dikarang. Ia **diturunkan**, dari dua sumber yang saling
melengkapi.

**Sumber 1 — kontrak blok.** Setiap asumsi yang dibuat bagian lain sistem
tentang blok ini menjadi tepat satu tes dengan satu angka lulus/gagal.
Tes yang lahir begini tidak bisa didebat: kalau gagal, ada blok lain yang
langsung rusak.

**Sumber 2 — enumerasi mode kegagalan.** Sumber 1 tidak akan pernah
memunculkan tes reliability, karena tidak ada baris di `adc_spec.py` yang
memintanya — ia batasan proses, bukan spec sistem. Untuk sampler,
taksonomi errornya lengkap dan hanya lima: gain, offset, distorsi, noise,
bocor. Petakan tiap satu ke pengukuran, lalu tambahkan yang bukan error
sinyal: reliability, daya, startup.

Tiga aturan konstruksi yang menyelamatkanku berkali-kali di folder `ref/`:

1. **Jendela `meas` selalu bagian dalam yang tenang dari sebuah fase,
   tidak pernah ujungnya.** Boost diukur 502–514 ns, bukan 500–515 ns.
   Kalau mulai tepat di tepi, `MAX`/`MIN` menangkap lereng transien dan
   `ripple` terbaca ratusan mV.

2. **Kalau efek yang diukur jauh lebih kecil dari efek lain yang hadir
   bersamaan, jalankan dua kali dengan hanya efek target di-toggle, lalu
   kurangkan.** Kickback differential ~1–13 uV terkubur di droop ~1000 uV;
   tanpa run referensi angkanya tidak berarti.

3. **Sebuah referensi ideal hanya sah kalau ia berbeda dari DUT dalam
   tepat satu hal.** TB3b-ku gagal dua kali karena aturan ini: pertama
   Vgs ikut berubah, lalu perilaku turn-off ikut berubah.

Dan satu kalibrasi yang wajib sebelum percaya angka distorsi: **ukur
lantai numerik simulator dengan menganalisis sumber ideal lewat jalur
yang sama persis.** Kalau baris INPUT di `thd.py` tidak jauh lebih baik
dari baris OUTPUT, yang kamu ukur adalah integrator, bukan rangkaian.
''')

code(r'''
tb = [
 ('TB1', 'track/hold',   'boost_err, ripple, t_settle, injeksi, droop, reliability',
  'DC sweep 5 titik + .ic vout=0 untuk step full-scale'),
 ('TB2', 'R_on vs vin',  'R_on dan kerataannya, vs NMOS telanjang',
  'vout DIPAKSA vin-50mV; R_on = 50mV/I, tak perlu tunggu settling'),
 ('TB2b','R_on DC',      'lantai body effect; bukti .op gagal di rangkaian utuh',
  'gate boost ideal -> DC sah karena tak ada node bergantung muatan'),
 ('TB3', 'THD/SFDR',     'SNDR differential, HD2 vs HD3',
  'sinus koheren M/N x fs, gcd(M,N)=1, sampel di k*Ts+20ns'),
 ('TB4', 'kickback',     'muatan comparator kembali ke top plate',
  'DUA run per titik: comparator diam vs menembak, lalu dikurangkan'),
 ('TB5', 'mismatch',     'offset differential pasangan sampler',
  'tt_mm + loop reset/let run=r; 40 run cukup untuk penyaringan'),
]
for a,b,c,d in tb:
    print(f'  {a:<5} {b:<13} {c}')
    print(f'        {"":<13} trik: {d}')
print()
print('  Pemetaan kontrak -> tes (Sumber 1):')
for asum, tes, ambang in [
  ('T_SAMPLE = 15 ns',        'TB1 t_settle',  f'< {T_SAMPLE*1e9:.0f} ns'),
  (f'C_tot = {cdac["C_tot"]*1e12:.3f} pF', 'beban semua TB', '-'),
  ('sigma_ktc = 83.41 uV',    'TB5 pembanding','sigma_mm < 0.3x'),
  ('ENOB = 7.5 total',        'TB3',           'SNDR >= 60 dB'),
  ('8 trial dalam t_conv',    'TB1 droop',     '< 0.5 LSB / 85 ns'),
  ('batas devais 1.8 V',      'TB1 reliability','|V| <= 1.98 V  <- dari Sumber 2'),
]:
    print(f'    {asum:<26} -> {tes:<18} {ambang}')
''')

md(r'''## Langkah 10 — Tabel devais dan back-annotation xschem

Ukuran final. Salin ke `xschem/sar-adc/bootstrap.sch`, lalu jalankan
`xschem/sar-adc_tb/ref/run_all.sh` — ia me-netlist ulang dari skematik dan
mencetak W/L yang benar-benar disimulasikan di kepala log. Cocokkan dengan
tabel ini sebelum percaya hasilnya.
''')

code(r'''
final = [
 ('Mswitch',     W_SW,      'switch sampling; satu-satunya dengan batasan nyata'),
 ('Mdisbot',     W_HELP,    'gate di vgate -> jaga tetap kecil'),
 ('Mchtop',      W_HELP,    'gate di vgate; bulk ke CTOP, bukan vdd'),
 ('Mdistop',     W_HELP,    'bulk ke CTOP'),
 ('Mchbot',      W_HELP,    ''),
 ('Mchtopdrv1',  2*W_HELP,  '2x drv2 supaya vgate & node tengah turun bersama'),
 ('Mchtopdrv2',  W_HELP,    'gate ke clkb'),
 ('M1',          W_HELP,    'PMOS inverter, bulk ke vdd'),
 ('Mdistopdrv',  0.5,       'gate di vgate -> minimum'),
 ('M2',          0.5,       ''),
]
print(f'  {"devais":<14}{"W [um]":>8}{"L [um]":>8}   catatan')
for nm, W, note in final:
    print(f'  {nm:<14}{W:8.2f}{L_MIN:8.2f}   {note}')
print(f'  {"Cboot":<14}{side_drawn:8.0f}{side_drawn:8.0f}   cap_mim_m3_1, '
      f'{C_act*1e15:.0f} fF')
print()
print('  Tiga koneksi yang mudah salah dan tidak terlihat di netlist:')
print('    Mchtop.bulk  = ctop   (bukan vdd) - ctop naik di atas VDD')
print('    Mdistop.bulk = ctop   (bukan vdd)')
print('    Mchtopdrv1.gate = vdd (bukan vgate) - kalau diode-connected,')
print('                          vgate nyangkut di Vth dan switch bocor')
''')

md(r'''## Daftar yang masih terbuka

1. **Matriks corner.** Semua angka di notebook ini dan di `ref/` adalah
   tt, 27 C, 1.8 V — satu titik. Margin 2.5x di Langkah 4 mengandaikan
   ss+85 C menaikkan R_on sekitar 1.8x, dan **itu belum pernah diuji**.
   Ini lubang terbesar.

2. **Aperture jitter.** `adc_spec.py` menulis `F_IN = fs/2` "dipakai untuk
   syarat aperture jitter", tapi syaratnya belum pernah dihitung dan
   belum ada tesnya. Kontrak yang belum ditagih.

3. **`C_PAR = 60 fF` masih tebakan.** Satu-satunya angka di rantai ini
   tanpa sumber keras. Ganti dengan hasil PEX.

4. **Keputusan `Mchtopdrv1`.** 2.47 V terhadap batas 1.98 V. Terima dan
   dokumentasikan, atau pakai knob di README Skenario 7.

5. **Negosiasi `T_SAMPLE`.** Langkah 8 menunjukkan blok ini menyimpan
   waktu berlebih. Tawarannya harus dibawa ke `comparator.ipynb`.

6. **Koefisien 0.6 V** untuk variasi boost adalah fit dua titik. Tambah
   titik ketiga sebelum memakainya untuk mengklaim margin.
''')

nb = {"cells": C,
      "metadata": {"kernelspec": {"display_name": "Python 3", "language": "python",
                                  "name": "python3"},
                   "language_info": {"name": "python", "version": "3.12"}},
      "nbformat": 4, "nbformat_minor": 5}

with open('bootstrap.ipynb', 'w') as f:
    json.dump(nb, f, indent=1)
print(f'bootstrap.ipynb ditulis: {len(C)} sel')
