# CDAC — Prosedur Desain dan Penyusunan Kapasitor

SAR ADC 8-bit 10 MS/s differential, sky130A, Tiny Tapeout 1x2.
Skema switching: split-monotonic langkah 1..N_SPLIT, monotonic biasa sisanya.

Hand calculation, kecuali koefisien DNL/INL yang diambil dari Monte Carlo (bagian 4.2).
Empat kategori angka, sama seperti `comparator.ipynb`:

| | Kategori | Cara membaca |
|---|---|---|
| (a) | Spec keras | Diberikan, tidak dinegosiasikan |
| (b) | Fakta PDK / hasil MC | Dibaca dari file model, DRC deck, atau MC. Tidak diketik tangan |
| (c) | Pilihan desain | Kamu yang tentukan; konsekuensinya dihitung di sini |
| (d) | BELUM DIKETAHUI | Perlu simulasi. Ditandai eksplisit, tidak diisi karangan |

---

## 1. Masukan

### (a) Spec keras

```
VDD      = 1.800 V
VREF     = 1.800 V          (VREF = supply; tidak ada reference buffer di TT)
N        = 8
fs       = 10.0 MS/s
ENOB     = 7.5
topologi = fully differential, top-plate sampling
```

### (b) Fakta PDK

Kepadatan MiM, dari `/foss/pdks/sky130A/libs.tech/ngspice/parameters/montecarlo.spice`:

```
baris  14:  camimc = 2.00 fF/um^2       (kapasitansi area, corner mim = 0)
baris 247:  cpmimc = 0.19 fF/um         (kapasitansi perimeter)
corner global: mim = +/-1  ->  +/-2.83 %  (ini gain error, BUKAN mismatch)
```

Koefisien mismatch, dari
`/foss/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__cap_mim_m3_1.model.spice`
baris 27:

```
czero = carea + cperim + MC_MM_SWITCH*AGAUSS(0,1.0,1)*0.01*2.8*(carea+cperim)/sqrt(wc*lc*mf)
                                                       ^^^^^^^^                ^^^^^^^^^^^^^
        =>  sigma_C/C = A_C / sqrt(A_u)        dengan  A_C = 2.8 %*um
```

Konsisten lintas flavor: `cap_vpp_02p7x11p1_..._fingercap` -> 2.83 %*um;
`cap_vpp_01p8x01p8_m1m2_noshield` -> 1.107% pada area efektif 2x1.8x1.8 um^2, juga
2.8 %*um. Tiga device, satu koefisien.

Model ini **self-consistent terhadap paralelisasi**: n unit paralel memberi
sigma/C = A_C/sqrt(n*A_u) = A_C/sqrt(A_total), sama dengan satu kapasitor besar berarea
sama. Jadi analisis pakai sigma_r per unit lalu skala sqrt(n) sah.

DRC, dari `/foss/pdks/sky130A/libs.tech/klayout/drc/sky130A_mr.drc`:

```
capm.1   baris 802:  min width capm                       = 1.00 um
capm.2a  baris 806:  min spacing capm                      = 0.84 um
capm.2b  baris 815:  min spacing antar met3_bot_plate      = 1.20 um   <- ini yg menentukan pitch
capm.3   baris 827:  min met3 enclosure capm               = 0.14 um
capm.4   baris 831:  min capm enclosure via3               = 0.14 um
capm.11  baris 839:  min spacing capm ke met3 non-overlap  = 0.50 um
```

Batasan Tiny Tapeout: met5 dipakai power grid TT. `cap_mim_m3_2` memakai
met4/cap2m/met5 -> **tidak boleh**. Device wajib: **`cap_mim_m3_1`**
(met3 bottom plate, capm top plate, via3 ke met4).

### (c) Pilihan desain

```
N_SPLIT  = 4        (jumlah LANGKAH DAC split, bukan indeks bit -- lihat 3.1)
T_SAMPLE = 15 ns
C_u      = ditentukan di bagian 5
RESERVE  = 0.5      (porsi daya V_circ disisihkan utk noise VREF + jitter -- lihat 4.6)
```

### (d) BELUM DIKETAHUI

```
dVos/dVcm     = None    <- sensitivitas offset comparator thd V_CM. Menentukan N_SPLIT. Bagian 9.1
ripple VREF   = None    <- kopling ke differensial = 0.50 rata-rata. Bagian 4.6
sigma_jitter  = None    <- aperture jitter clock TT. Bagian 4.6
C_par (PEX)   = None    <- parasitik top plate sebenarnya. Estimasi pra-layout di 4.4
gradien proses= None    <- model PDK hanya komponen ACAK. Ditangani layout, bagian 6
skew driver   = None    <- selisih settling driver-p vs driver-n di mode split
```

---

## 2. Turunan spec

```
FS_diff       = 2*VREF          = 3.600000 V
LSB           = FS_diff/2^N     = 3.600/256   = 14.0625 mV   (differential)
V_CM,sampling = VREF/2                        = 0.900000 V
```

V_CM = 0.9 V **dipaksa, bukan dipilih**: agar V_diff mencapai +/-1.8 V sementara kedua top
plate tetap di dalam 0..1.8 V, satu-satunya solusi adalah V_p = 1.8 / V_n = 0 pada skala
penuh, yaitu V_CM = 0.9 V.

```
Ts      = 1/fs             = 100.000 ns
t_conv  = Ts - T_SAMPLE    =  85.000 ns
t_trial = t_conv/N         =  10.625 ns
```

Anggaran error total:

```
SNDR_target = 6.02*ENOB + 1.76      = 46.9100 dB
V_sig,rms   = (FS_diff/2)/sqrt(2)   = 1.272792 V
V_nd,total  = V_sig/10^(SNDR/20)    = 5.744600 mV
V_q         = LSB/sqrt(12)          = 4.059480 mV
V_circ      = sqrt(V_nd^2 - V_q^2)  = sqrt(32.9964 - 16.4794) = 4.064600 mV
```

**V_circ tidak dibagi dengan share yang diketik.** Ia dibelanjakan suku per suku di
bagian 4, dan sisanya jatuh ke comparator. Lihat 4.7.

---

## 3. Struktur array

### 3.1 Jumlah langkah, dan definisi indeks k

Top-plate sampling membuat comparison ke-1 **gratis**: comparator langsung membandingkan
hasil sampling terhadap 0 V differential, tanpa DAC bergerak.

```
n_step = N - 1 = 7
```

Langkah k dijalankan **sesudah** comparison ke-k, untuk menyiapkan threshold
comparison ke-(k+1):

```
        b1      b2      b3      b4      b5      b6      b7      b8
comp     1       2       3       4       5       6       7       8
langkah      k=1     k=2     k=3     k=4     k=5     k=6     k=7
bobot         64      32      16       8       4       2       1
mode        split   split   split   split   mono    mono    mono     (N_SPLIT = 4)
```

**N_SPLIT menghitung langkah, bukan bit.** N_SPLIT = 4 -> langkah k=1..4 split; langkah itu
menentukan threshold untuk b2, b3, b4, b5. Tidak ada langkah k=8.

### 3.2 Bobot

Pencarian biner pada residu +/- VREF: threshold comparison ke-(k+1) bergeser VREF/2^k.

```
step_diff(k) = VREF / 2^k                                          k = 1..7
w(k)         = step_diff(k)/LSB = (VREF/2^k)/(2*VREF/2^N) = 2^(N-1)/2^k = 128/2^k  [C_u]
C_tot,sisi   = 2^(N-1) * C_u = 128 * C_u
```

C_tot **wajib** 128 C_u persis, supaya w(k)/C_tot selalu pecahan biner eksak.

```
sum w(k), k=1..7 = 64+32+16+8+4+2+1 = 127 C_u
C_dummy          = 128 - 127         =   1 C_u      <- wajib ada
```

Tanpa dummy, C_tot = 127 C_u dan step k=1 jadi 1.8*64/127 = 907.087 mV bukan 900 mV;
seluruh bobot biner melenceng.

```
Verifikasi  step_diff(k) = VREF*w(k)/C_tot,sisi :
  k=1: 1.800*64/128 = 900.0000 mV     k=5: 1.800*4/128 =  56.2500 mV
  k=2: 1.800*32/128 = 450.0000 mV     k=6: 1.800*2/128 =  28.1250 mV
  k=3: 1.800*16/128 = 225.0000 mV     k=7: 1.800*1/128 =  14.0625 mV = 1 LSB  OK
  k=4: 1.800* 8/128 = 112.5000 mV
```

### 3.3 Pemecahan split dan batas geometrisnya

```
k=1: 64 -> 32 + 32   OK       k=5: 4 -> 2 + 2   OK
k=2: 32 -> 16 + 16   OK       k=6: 2 -> 1 + 1   OK   <- paruh tepat 1 unit, masih pas
k=3: 16 ->  8 +  8   OK       k=7: 1 -> 0.5+0.5 TIDAK BISA tanpa mengubah C_u
k=4:  8 ->  4 +  4   OK
```

**Batas geometris N_SPLIT = 6.** Nilai 4 pilihan desain, bukan batas fisik. Jumlah unit cap
**tidak berubah** oleh split — hanya routing bottom plate yang dibelah.

---

## 4. Constraint

### 4.1 kT/C — TIDAK MENGIKAT

Dua sisi disampling independen, varians dijumlah:

```
sigma_kTC^2 = 2*k*T / C_tot,sisi
k*T = 1.380649e-23 * 300 = 4.141947e-21 J

Bahkan kalau SELURUH V_circ diberikan ke suku ini:
C_tot,sisi >= 2*4.141947e-21/(4.064600e-3)^2 = 8.283894e-21/1.652097e-5 = 0.5014 fF
C_u        >= 0.5014/128 = 0.003917 fF = 3.92 aF
```

Tiga orde besaran di bawah kapasitor DRC terkecil (1x1 um -> 2.76 fF).
**kT/C bukan constraint di ADC ini.**

Kenapa: C yang dibutuhkan sebanding 1/LSB^2 = 2^(2N)/(4*VREF^2). Naik ke 12 bit pada VREF
sama mengalikan C dengan 2^8 = 256 -> orde pF, dan di sana kT/C mulai menggigit. Pada
8 bit dengan referensi rail penuh, LSB = 14.06 mV terlalu besar untuk peduli.

### 4.2 Matching — MENGIKAT

```
sigma_r = sigma_Cu/C_u = A_C/sqrt(A_u) = 2.8 %/sqrt(A_u)      A_u dalam um^2
```

**Turunan DNL mid-code.** Threshold comparison ke-1 ada di 0 V dan dibangun dari **nol**
kapasitor, jadi errornya nol. Threshold tetangganya di +1 LSB dibangun dari
+s1 -s2 -s3 -s4 -s5 -s6 -s7, yaitu seluruh 127 unit:

```
sigma_DNL,mid = sqrt(64+32+16+8+4+2+1) * sigma_r = sqrt(127)*sigma_r = 11.2694*sigma_r  [LSB]
```

**Koefisien lain hanya dari Monte Carlo.** 255 threshold pohon keputusan dihitung dari
nilai kapasitor acak per unit (128 unit x 2 sisi), 20000 trial, fit endpoint:

```
koefisien / sigma_r   [LSB]        sumber
sigma_DNL @ mid-code   11.2694     analitik sqrt(127); MC setuju dalam -0.5%
E[ max|DNL| ]          14.30       MC saja -- tidak ada bentuk tertutup
E[ max|INL| ]          13.58       MC saja
INL_rms                 6.01       MC saja
```

**Turunan tangan INL_rms yang lama SALAH.** Saya menulis
`INL_rms = sqrt(127*2/3)*sigma_r = 9.2014*sigma_r`. MC memberi 6.01 -> rumus itu
**+53% pesimis**. Sebabnya: ia mengasumsikan ke-255 threshold memakai 127 unit. Yang benar,
threshold di level m memakai 128*(1-2^-(m-1)) unit:

```
level m    1     2     3     4     5     6     7     8
n_thresh   1     2     4     8    16    32    64   128
n_unit     0    64    96   112   120   124   126   127
```

Threshold level 1 memakai NOL unit. Rumus tangan itu tidak dipakai lagi.

**Kriteria sizing.** Yang mengikat adalah spec DNL, dan penulisannya harus tepat:

```
(A) SPEC DNL:  3*sigma_DNL,mid <= 0.5 LSB
    sigma_r <= 0.5/(3*11.2694)      = 1.478926 %
    A_u     >= (2.8/1.478926)^2     = 3.584524 um^2  ->  sisi >= 1.893284 um   <== MENGIKAT

(B) ANGGARAN ENOB (INL_rms, dgn koefisien MC yang benar):
    bahkan kalau SELURUH V_circ diberikan ke mismatch:
    sigma_r <= (4.064600/14.0625)/6.01 = 4.8092 %
    A_u     >= (2.8/4.8092)^2 = 0.339 um^2  ->  sisi >= 0.582 um  (di bawah DRC)
```

Dengan koefisien INL yang benar, kriteria ENOB jadi **sepenuhnya tidak mengikat**.
Hanya spec DNL yang menentukan C_u.

**Catatan penting soal istilah:** kriteria (A) adalah **spec DNL 0.5 LSB**, BUKAN batas
monotonisitas. Monotonisitas butuh DNL > -1 LSB, jauh lebih longgar. MC pada sigma_r = 1.4%:

```
P(max|DNL| > 0.5 LSB)        = 0.0035     (yield 99.65% terhadap spec DNL)
P(non-monotonic, DNL < -1)   = 0.00000    (dari 20000 trial: nol kejadian)
persentil 99.7 dari max|DNL| = 0.5095 LSB
persentil 99.7 dari max|INL| = 0.4047 LSB
```

Kriteria 3-sigma pada mid-code ternyata terkalibrasi hampir persis terhadap yield
max-over-codes yang sebenarnya (0.4733 vs persentil 99.7 = 0.5095 LSB). Itu kebetulan
yang menguntungkan, bukan hasil turunan — jadi jangan dipakai di resolusi lain tanpa
menjalankan MC ulang.

### 4.3 Noise driver bottom plate

R_drv seri dengan C_sw, dan C_sw seri dengan C_rest ke top plate:

```
sigma^2 = kT * C_sw / (C_tot * C_rest)           <- R_drv HILANG dari hasilnya
```

R_drv menaikkan rapat noise dan menurunkan bandwidth dengan faktor yang sama. Jadi suku ini
**tidak bisa diperbaiki dengan memperbesar switch**, dan tidak perlu:

```
langkah  C_sw[C_u]  C_rest[C_u]  n_driver  sigma
   1        32          96          2      33.66 uV
   2        16         112          2      22.04 uV
   3         8         120          2      15.05 uV
   4         4         124          2      10.47 uV
   5         4         124          1      10.47 uV
   6         2         126          1       7.35 uV
   7         1         127          1       5.17 uV
   TOTAL 11 driver aktif, dijumlah kuadrat = 64.03 uV = 0.00455 LSB
```

### 4.4 Parasitik top plate — gain error, bukan INL

Selama sampling top plate di-drive ke Vin, jadi parasitik C_p tidak menghadiri pengambilan
sinyal. Setelah switch membuka, C_p ikut dalam pembagi muatan:

```
dV_top   = -C_i*dB/(C_tot + C_p)
atenuasi = C_tot/(C_tot + C_p)
```

Semua langkah teratenuasi faktor **sama** -> **gain error, bukan INL**. Rentang input
efektif menyusut, linearitas utuh.

```
C_p dominan = CGG gerbang input pair comparator
CGG(nfet_01v8_lvt, W=5.0, L=0.20) di Vgs=0.68 Vds=1.58 Vsb=0.22 = 1.3953 fF/um
                                                    ->  C_gg    = 6.9764 fF

gain error < 1 % : C_p <= C_tot*(1/0.99-1) = C_tot*0.010101  ->  C_tot >= 99*C_p
gain error < 5 % : C_p <= C_tot*0.052632                     ->  C_tot >= 19*C_p
```

Yang **berbahaya** bukan besarnya C_p, tapi **asimetrinya antara sisi-p dan sisi-n**. Itu
offset, dan tidak muncul di persamaan mana pun di dokumen ini. Ditangani layout (bagian 6).

### 4.5 Settling

```
n_tau = ln( amplitudo_step / (LSB/2) )

Sampling: n_tau = ln(3.600/0.0070312) = 6.2383 ; ambil 8 tau
          R_on <= T_SAMPLE/(8*C_tot,sisi)

DAC:      C_seri(k) = C_sw(k)*(C_tot - C_sw(k))/C_tot
          n_tau(k)  = ln(step_diff(k)/(LSB/2))
          R_drv(k) <= t_DAC/(n_tau(k)*C_seri(k))        t_DAC = t_trial - t_comp
```

### 4.6 Dua suku yang dulu tidak ada di anggaran

**Kopling noise referensi.** VREF = supply. Gain ke differensial:

```
G_REF = |C_S,p - C_S,n| / C_tot        C_S = kapasitansi yang bottom plate-nya di VREF

saat sampling (67 vs 67)            : 0.0000   <- preset simetris menolak SEMPURNA
maksimum sepanjang konversi, rata2  : 0.6666   (worst 0.9922)
pada keputusan terakhir b8, rata2   : 0.5000   (worst 0.9922)
```

Penolakan sempurna itu **hanya pada instan sampling**. Begitu langkah k=1 jalan, sisi-p
kehilangan 32 unit dan sisi-n dapat 32 unit -> selisih 64 -> G_REF = 0.5.

```
syarat: ripple_VREF,rms <= error_izin / G_REF
```

**Aperture jitter.**

```
syarat: sigma_jitter <= error_izin / (2*pi*f_in*VREF)
f_in = fs/2 = 5 MHz  ->  slew puncak = 2*pi*5e6*1.8 = 5.6549e7 V/s
```

### 4.7 Struktur anggaran: RESERVE menggantikan NOISE_SHARE

Versi lama memakai `sigma_n_spec = V_circ*sqrt(NOISE_SHARE)` dengan NOISE_SHARE = 0.5.
Itu dibuang, karena:

1. **Arahnya terbalik.** Jatah comparator bukan pilihan; ia sisa setelah suku yang dipaksa.
2. **Angkanya salah.** Share comparator sebenarnya ~0.1 dalam daya, bukan 0.5.
3. **Ia parameter mati.** C_u ditentukan spec DNL. Untuk setiap NOISE_SHARE di bawah 0.78,
   C_u keluar sama persis. Anggaran yang tidak pernah mengikat bukan anggaran.

Yang benar:

```
V_reserve    = V_circ*sqrt(RESERVE)                       <- disisihkan utk 4.6
sigma_n_spec = sqrt( V_circ^2 - V_reserve^2
                     - sigma_mm^2 - sigma_kTC^2 - sigma_drv^2 )
```

RESERVE tetap sebuah pilihan, tapi berbeda dari NOISE_SHARE ia **menghasilkan spec yang
bisa diverifikasi**: dibagi rata dalam daya antara referensi dan jitter, ia langsung jadi
batas ripple VREF dan batas jitter (angka di 5.2).

---

## 5. Pemilihan C_u

Yang mengikat adalah 4.2(A): sisi >= 1.893284 um.

| capm | A_u (um^2) | sigma_r | C_u (fF) | 3*sigma_DNL,mid | keterangan |
|---|---|---|---|---|---|
| 1.9 x 1.9 | 3.6100 | 1.473684 % | 8.6640 | 0.4982 LSB | margin 0.4% — kebetulan, bukan margin |
| **2.0 x 2.0** | **4.0000** | **1.400000 %** | **9.5200** | **0.4733 LSB** | **margin 5.3%, angka bulat** |

**Pilihan: capm 2.0 x 2.0 um.**

```
C_u = camimc*W*L + cpmimc*2*(W+L)
    = 2.00*2.0*2.0 + 0.19*2*(2.0+2.0) = 8.0000 + 1.5200 = 9.5200 fF

sigma_r    = 2.8/sqrt(4.0000) = 1.400000 %
C_tot,sisi = 128*9.5200       = 1218.56 fF
C_array    = 2*1218.56        = 2.43712 pF
```

### 5.1 Verifikasi

```
4.1 kT/C      sigma_kTC = sqrt(2*4.141947e-21/1218.56e-15) = 82.45 uV = 0.005863 LSB
4.2 matching  3*sigma_DNL,mid = 3*11.2694*0.014 = 0.473316 LSB <= 0.5      OK margin 5.3%
              E[max|DNL|]     = 14.30*0.014     = 0.200200 LSB
              E[max|INL|]     = 13.58*0.014     = 0.190120 LSB
              INL_rms         =  6.01*0.014     = 0.084140 LSB = 1.183219 mV
              P(max|DNL|>0.5 LSB) = 0.35 %      P(non-monotonic) = 0
4.3 driver    sigma_drv = 64.03 uV = 0.004553 LSB
4.4 parasitik C_p = 11.98 fF (gerbang + 5 fF routing) -> atenuasi 0.990269
                                                      -> gain error -0.973 %   OK
              C_p maksimum untuk gain error < 1 % = 12.31 fF
4.5 settling  R_on <= 15e-9/(8*1218.56e-15) = 1539 ohm                     longgar
```

### 5.2 Anggaran error yang tutup

```
suku                        sigma        % daya V_circ   sifat
mismatch CDAC (INL_rms)     1.183219 mV      8.5 %       DIPAKSA oleh spec DNL
kT/C sampling               0.082450 mV      0.0 %       gratis
driver bottom plate         0.064030 mV      0.0 %       gratis
reserve (VREF + jitter)     2.874100 mV     50.0 %       pilihan RESERVE = 0.5
--------------------------------------------------------
V_circ (total)              4.064600 mV                  (V_q = 4.059480 mV di luar ini)
-> SISA = jatah comparator  2.617100 mV     41.5 %       = 0.186100 LSB
```

Konsekuensi RESERVE, dibagi rata dalam daya -> 2.032300 mV per suku:

```
ripple VREF rms  <= 2.032300/0.50 = 4.064600 mV  = -52.9 dB relatif 1.8 V
sigma_jitter     <= 2.032300e-3/5.6549e7 = 35.94 ps  (input Nyquist 5 MHz)
```

Comparator pada sizing sekarang (C_PQ = 4.661 fF, Vov_eff = 2/(gm/ID), VTHN_eff = 0.7742 V)
memberi sigma_comp sekitar 0.78 mV — di bawah jatah 2.617 mV dengan margin besar. Angka
pastinya dihitung notebook, bukan di sini.

### 5.3 Beban driver

```
langkah  C_sw[C_u]  C_seri(fF)   n_tau
   1       32.0      228.48     4.8520      <- paling berat
   2       16.0      133.28     4.1589
   3        8.0       71.40     3.4657
   4        4.0       36.89     2.7726
   5        4.0       36.89     2.0794
   6        2.0       18.74     1.3863
   7        1.0        9.45     0.6931
```

Parasitik bottom plate tidak merusak akurasi — ia di-drive impedansi rendah, jadi hanya
membebani driver (settling dan energi).

---

## 6. Cara menyusun kapasitornya

Model PDK hanya menangkap mismatch **acak**. Semuanya di bawah ini adalah error
**sistematis** yang tidak muncul di persamaan mana pun di atas, dan hanya bisa dilawan
oleh susunan fisik.

### 6.1 Unit cell wajib — ini aritmetika, bukan gaya

Suku perimeter bukan koreksi kecil: `cpmimc*2*(W+L)` = 1.52 fF dari C_u 9.52 fF = **16.0 %**.
Karena C bergantung area DAN perimeter, dua kapasitor dengan area sama tapi bentuk beda
punya nilai beda.

```
32 unit 2.0x2.0 paralel :  32 * 9.5200                          = 304.64 fF
satu blok berarea sama  :  sisi sqrt(32*4) = 11.3137 um
                           2.00*128 + 0.19*2*(11.3137+11.3137)  = 256.00 + 8.60 = 264.60 fF
                                                          selisih -13.1 %
```

Array biner yang digambar sebagai persegi panjang berskala **sudah rusak 13% sebelum
mismatch ikut bicara.** Aturan: setiap kapasitor = m unit cell 2.0x2.0 identik paralel,
masing-masing dengan lingkungan identik. Model mismatch tidak menghukum unit cell
(bagian 1: self-consistent terhadap paralelisasi) — hanya geometri yang menghukum.

### 6.2 Dummy ring

Unit di tepi punya etch loading berbeda dari unit di dalam, jadi nilainya menyimpang
sistematis. Kelilingi array aktif dengan minimal satu baris unit dummy bergeometri
identik. Bottom plate dan top plate dummy **diikat ke GND** — jangan dibiarkan mengapung,
capm yang floating bisa menahan muatan dan drift.

### 6.3 Pitch ditentukan capm.2b, bukan capm.2a

Ini mudah terlewat. capm.2a (spacing capm) = 0.84 um, tapi capm.2b (spacing antar
met3 bottom plate) = **1.20 um**. Unit dalam satu paruh-kapasitor berbagi bottom plate,
jadi boleh 0.84 um. Unit yang bottom plate-nya berbeda — beda grup atau beda sisi — wajib
1.20 um.

```
pitch dalam satu grup      = 2.0 + 0.84 = 2.84 um
pitch antar grup / sisi    = 2.0 + 1.20 = 3.20 um   <- yang menentukan, karena interleaved
```

Karena 6.4 memaksa p dan n saling-silang, hampir semua batas antar-unit adalah batas
grup. Pakai **3.20 um seragam**.

```
aktif                   16 x 16 = 256 unit
+1 dummy ring           18 x 18 = 324 unit  ( 68 dummy, +26.6 %)
+2 dummy ring           20 x 20 = 400 unit  (144 dummy, +56.3 %)

luas (pitch 3.20 um, tile 1x2 = 167*216 = 36072 um^2):
  1 ring : 324*3.20^2 = 3317.76 um^2 =  9.20 % tile
  2 ring : 400*3.20^2 = 4096.00 um^2 = 11.36 % tile
```

Dua ring masih 11% dari tile. Ambil dua.

### 6.4 Sisi-p dan sisi-n wajib berbagi centroid — jadi interleaved

Di sini paling banyak desain salah. Gradien proses (ketebalan oksida, etch) kira-kira
linear melintasi array: error unit di posisi x ~ g*x.

```
BERDAMPINGAN  : rata-rata x sisi-p != rata-rata x sisi-n
                -> C_tot,p != C_tot,n sistematis -> LSB kedua sisi beda
                -> besar step bergantung sisi mana yang switching -> INL.   BURUK

DICERMIN thd garis tengah : unit di +x pada p memetakan ke -x pada n
                -> error +g*x dan -g*x -> selisihnya DIGANDAKAN.            LEBIH BURUK

INTERLEAVED (papan catur / baris berselang) : kedua sisi menempati area yang sama
                dengan centroid yang sama -> pengaruh gradien pada C_tot,p dan
                C_tot,n identik -> saling batal pada selisihnya.            BENAR
```

Harga interleaving: dua top plate jadi berdekatan -> kopling C_pn. Untuk sinyal
differential C_pn tampak sebagai 2*C_pn ke AC-ground differential, jadi ia
**meng-atenuasi semua langkah dengan faktor sama = gain error**, kategori yang sama
dengan C_p di 4.4 dan sama jinaknya. Jadi biaya interleaving adalah kerumitan routing,
bukan akurasi.

### 6.5 Tiap grup biner simetris terhadap centroid

Di dalam satu sisi, unit milik grup k harus ditempatkan sehingga centroid grup itu
berimpit dengan centroid array. Untuk grup besar mudah. Untuk grup 1-unit (M7 dan dummy)
**tidak mungkin** — satu unit tidak bisa di-centroid-kan.

Konsekuensinya: taruh grup terkecil paling dekat pusat, tempat gradien paling kecil.
Urutan dari pusat ke luar: dummy, M7 (1), M6 (2), M5 (4), A4/B4 (4+4), A3/B3 (8+8),
A2/B2 (16+16), A1/B1 (32+32) tersebar di pinggir secara simetris.

### 6.6 Penugasan plate — kebetulan yang menguntungkan

Dari subckt `cap_mim_m3_1`: met3 = bottom plate, capm = top plate, via3 naik ke met4.

```
bottom plate = met3        = node yang di-SWITCH
   parasitik ke met1/met2/substrat besar, TAPI di-drive impedansi rendah -> jinak
top plate    = capm -> via3 -> met4  = node SENSITIF
   parasitik harus di bawah 12.31 fF untuk gain error < 1 % (4.4)
```

Penugasan yang kita butuhkan datang gratis dari device-nya.

**Konflik yang harus ditandai:** TT mewajibkan power strap sebagai garis vertikal di
**met4**. Strap met4 yang melintas di atas array kopling langsung ke top plate — ia
menambah C_p **dan** menyuntikkan noise supply ke node yang paling tidak tahan, sementara
4.6 menuntut ripple VREF di bawah 4.06 mV. Jadi: jaga power strap met4 **di luar footprint
array**, dan pakai met4 di atas array hanya untuk top plate.

### 6.7 Routing bottom plate

22 bottom plate ber-driver independen, semuanya met3. Unit dalam satu paruh-kapasitor
di-strap bersama di met3 tanpa merusak simetri unit cell. met1/met2 bebas di bawahnya untuk
logic driver, dan menaruh logic di bawah array **boleh** karena met3 (bottom plate, driven)
menjadi shield antara logic dan capm.

### 6.8 Ringkasan susunan

```
grid            20 x 20 unit = 400 posisi, pitch 3.20 um  -> 64.0 x 64.0 um
                256 aktif (128 sisi-p + 128 sisi-n) + 144 dummy (2 ring)
pola            p dan n interleaved, satu centroid bersama
                grup kecil di pusat, grup besar tersebar simetris di pinggir
dummy           geometri identik, bottom & top plate diikat GND
bottom plate    met3, 22 strap independen, driver di met1/met2 di bawah array
top plate       capm -> via3 -> met4, met4 di atas array HANYA untuk top plate
power strap TT  met4, WAJIB di luar footprint array
luas            4096 um^2 = 11.36 % tile 1x2
```

---

## 7. Komposisi dan aturan switching

Per sisi, 128 C_u = 1218.56 fF:

```
langkah  mode    bobot   realisasi                          preset bottom plate
  k=1    split    64     A 32 C_u + B 32 C_u                A: GND    B: VREF
  k=2    split    32     A 16 C_u + B 16 C_u                A: GND    B: VREF
  k=3    split    16     A  8 C_u + B  8 C_u                A: GND    B: VREF
  k=4    split     8     A  4 C_u + B  4 C_u                A: GND    B: VREF
  k=5    mono      4     satu blok                          VREF
  k=6    mono      2     satu blok                          VREF
  k=7    mono      1     satu blok                          VREF
  dummy   -        1     satu blok                          GND (permanen)
                 -----
                  128 C_u

Cek simetri preset per sisi:
  di VREF: B (32+16+8+4 = 60) + mono (4+2+1 = 7) = 67 C_u
  di GND : A (32+16+8+4 = 60) + dummy (1)        = 61 C_u   -> total 128
Identik di kedua sisi -> kontribusi DAC differential saat sampling = 0
                      -> threshold comparison ke-1 tepat 0 V (syarat b1 gratis)

Driver: 4*2*2 = 16 (split) + 3*1*2 = 6 (mono) = 22 bottom plate; 14 sinyal logika
```

Aturan switching:

```
FASE SAMPLING (15 ns): top plate p <- V_ip, n <- V_in; bottom plate sesuai preset

SETELAH b_k DIKETAHUI:
  k = 1..4 (split, V_CM tetap):
      b_k = 1 -> B sisi-p: VREF->GND  DAN  A sisi-n: GND->VREF
      b_k = 0 -> A sisi-p: GND->VREF  DAN  B sisi-n: VREF->GND
  k = 5..7 (monotonic, V_CM turun):
      b_k = 1 -> cap sisi-p: VREF->GND
      b_k = 0 -> cap sisi-n: VREF->GND
  setelah b8: tidak ada langkah.
```

Persamaan pergeseran, dari konservasi muatan pada top plate yang mengapung:

```
dV_top = -(C_geser/C_tot) * dV_bottom

split langkah k:  dV_p = -(w/2)/128*VREF     dV_n = +(w/2)/128*VREF
                  differential = -w/128*VREF     <- sama dengan monotonic bobot w
                  common mode  = 0                <- inilah gunanya split
mono langkah k :  dV_p = -w/128*VREF          dV_n = 0
                  differential = -w/128*VREF
                  common mode  = -w/256*VREF     <- droop
```

Droop V_CM total:

```
dV_CM = sum, k = N_SPLIT+1 .. N-1, dari VREF/2^(k+1)

N_SPLIT=4: 28.1250 + 14.0625 + 7.0312 = 49.2188 mV = 3.500 LSB, V_CM 0.900000 -> 0.850781 V
N_SPLIT=6:                              7.0312 mV = 0.500 LSB, V_CM 0.900000 -> 0.892969 V
N_SPLIT=0: sum k=1..7                 = 892.9688 mV, V_CM -> 0.007031 V  -> comparator MATI
```

---

## 8. Energi referensi

```
dQ = sum(C_i tetap di VREF)*(V_top,sebelum - V_top,sesudah)
   + sum(C_i baru ke VREF) *(VREF - V_top,sesudah + V_top,sebelum)
E  = VREF * dQ

1 C_u*VREF^2 = 9.520e-15 * 1.800^2 = 30.845 fJ
```

Dirata-rata atas 256 kode, plus energi reset:

```
N_SPLIT   dV_CM (mV)   E_konv    E_reset   E_total   E_total (fJ)   P = E*fs (uW)
   0       892.9688    202.525   136.624   339.150     10461.0        104.61
   3       105.4688    137.320    79.924   217.245      6700.9         67.01
   4        49.2188    136.713    73.849   210.562      6494.7         64.95
   5        21.0938    136.612    70.710   207.322      6394.8         63.95
   6         7.0312    136.612    69.116   205.727      6345.6         63.46
```

Split **lebih murah** 37.9 % dari monotonic murni, bukan lebih mahal: preset split menaruh
67/128 unit di VREF bukan 127/128, dan ayunan top plate per sisi cuma setengah. Keduanya
memotong muatan resupply yang harus disediakan VREF.

Biaya split yang sebenarnya bukan energi:

| Biaya | mono murni | N_SPLIT=4 | N_SPLIT=6 |
|---|---|---|---|
| driver bottom plate | 14 | 22 | 26 |
| rail bottom plate per cap split | 1 | 2 | 2 |
| preset | semua VREF | 67/61, wajib simetris | 67/61 |
| skew antar-driver | tidak ada | dua plate serentak, sisi berlawanan | idem |
| unit cap | 128 C_u | 128 C_u | 128 C_u |
| sinyal logika | 14 | 14 | 14 |

---

## 9. Kategori (d)

### 9.1 dVos/dVcm — menentukan N_SPLIT

```
error_droop = (dVos/dVcm) * dV_CM

batas kalau error_droop dibatasi 0.1 LSB = 1.40625 mV:
  N_SPLIT=3  dV_CM=105.4688 mV  ->  dVos/dVcm <  1.333 %
  N_SPLIT=4  dV_CM= 49.2188 mV  ->  dVos/dVcm <  2.857 %
  N_SPLIT=5  dV_CM= 21.0938 mV  ->  dVos/dVcm <  6.667 %
  N_SPLIT=6  dV_CM=  7.0312 mV  ->  dVos/dVcm < 20.000 %
```

Kenapa ini bukan offset biasa: dV_CM bergantung bit yang sudah diputuskan, dan bit itu
bergantung input. Offset yang berbeda per kode **adalah INL**, dan karena polanya
ditentukan sinyal ia jadi distorsi harmonik — tidak bisa dirata-ratakan hilang.

Simulasi: pada `xschem/sar-adc/comparator.sch`, sweep V_CM 0.79..0.90 V langkah 10 mV, tiap
titik cari trip point differential (bisection pada dV_in), ambil slope. Efek sistematis —
**tidak perlu Monte Carlo**.

Efek droop pada **kecepatan** sudah dicek dan tidak signifikan. Dari LUT, I_in turun
45.010 -> 38.867 uA (86.4 %) pada N_SPLIT=4, dan t_amp = C_PQ*VTHN_eff/I_CM tumbuh
**80.2 -> 92.8 ps**, yaitu 0.87 % dari t_trial 10.625 ns. Delay comparator didominasi
regenerasi, bukan amplifikasi. Jadi alasan memilih N_SPLIT adalah linearitas, bukan
kecepatan.

(Catatan: VTHN_eff = 0.7742 V. Revisi dokumen sebelumnya mencantumkan 0.1555 V dan
t_amp 16 ps — itu salah, akibat field VT dibagi W karakterisasi LUT di skrip pengecekan.
Kesimpulannya tidak berubah.)

### 9.2 C_par hasil PEX

Batas bawah pra-layout dipakai di 5.1. Setelah PEX cek ulang 4.4. Parasitik top plate =
gain error (jinak), bottom plate = beban driver (jinak). Yang berbahaya adalah parasitik
**tidak simetris p vs n** — itu offset.

### 9.3 Gradien proses

`A_C = 2.8 %*um` hanya komponen acak. Gradien tidak ada di model PDK; ditangani bagian 6.

### 9.4 Skew driver di mode split

Dua bottom plate di sisi berlawanan bergerak serentak. Perlu ditentukan apakah ini spec
settling (jinak, cukup ditunggu) atau spec akurasi (butuh driver matched) — bergantung
kapan comparator melatch relatif terhadap t_trial.

---

## 10. Ringkasan angka

```
Device            : sky130_fd_pr__cap_mim_m3_1  (met3 / capm / via3->met4)
C_u               : capm 2.0 x 2.0 um  ->  9.5200 fF
sigma_r           : 1.400000 %          (A_C = 2.8 %*um / sqrt(4.0 um^2))
C_tot per sisi    : 128 C_u = 1218.56 fF
C_array total     : 2.43712 pF
Jumlah unit       : 256 aktif + 144 dummy (2 ring) = 400 posisi
Bobot per sisi    : 64 32 16 8 4 2 1 + dummy 1   (split: 4 terbesar -> 2x paruh)
Susunan           : grid 20x20, pitch 3.20 um (capm.2b), p/n interleaved satu centroid
Luas array        : 4096 um^2 = 11.36 % tile 1x2  (64.0 x 64.0 um)
Driver            : 22 bottom plate, 14 sinyal logika
LSB               : 14.0625 mV differential
3*sigma_DNL,mid   : 0.473316 LSB        E[max|DNL|] = 0.200200 LSB
INL_rms           : 0.084140 LSB = 1.183219 mV
E[max|INL|]       : 0.190120 LSB
P(max|DNL|>0.5)   : 0.35 %              P(non-monotonic) = 0
sigma_kTC         : 82.45 uV            sigma_drv = 64.03 uV
Jatah comparator  : 2.617100 mV (sisa V_circ setelah semua di atas + RESERVE 0.5)
ripple VREF       : <= 4.0646 mV rms (-52.9 dB)     sigma_jitter <= 35.94 ps
R_on sampling     : <= 1539 ohm
Droop V_CM        : 49.2188 mV (3.500 LSB), V_CM 0.900000 -> 0.850781 V
Energi referensi  : 6494.7 fJ per konversi = 64.95 uW pada 10 MS/s
Gain error (est.) : -0.6 .. -1.8 % dari parasitik top plate (perlu PEX)
```
