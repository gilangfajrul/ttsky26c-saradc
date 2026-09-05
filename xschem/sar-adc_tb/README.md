# Testbench ADC utuh — `sar-adc_tb.sch`

Generasi kedua. Semua yang di sini menguji **skematik utuh**
`xschem/sar-adc/sar-adc.sch` lewat `sar-adc_tb.sch`, bukan deck SPICE tulisan
tangan.

Era sebelumnya (TB1–TB10, satu blok per deck) ada di
[`ref/README.md`](ref/README.md). Angka dari sana masih dipakai sebagai
referensi silang dan disebut eksplisit di bawah.

## Cara menjalankan

Netlist **dari GUI xschem**, jangan headless.

> Netlisting headless selagi GUI terbuka pernah memotong netlist secara
> diam-diam di atas file yang baik. Kalau perlu otomatis, tulis ke direktori
> lain.

```sh
cd xschem/sar-adc_tb/simulation
ngspice -b sar-adc_tb.spice
```

Setelah mengubah skematik: **Reload di GUI dulu** kalau file pernah disunting
dari luar, lalu netlist ulang. Menyimpan dari GUI di atas file yang sudah
berubah di disk akan menghapus perubahan itu.

---

# Bagian 1 — Cara menyusun simulasi

## Empat potong di skematik TB

| simbol | perannya |
|---|---|
| `sar-adc.sym` | DUT, diberi nama instance `xtop` |
| `devices/code.sym` dengan `place=header` | baris `.lib` dan `.include` yang harus muncul **sebelum** netlist |
| `simulator_commands.sym` | blok `.control` — isi simulasinya |
| `code.sym` biasa | `.param` dan `.options`, muncul di badan netlist |
| widget graph (`B 2 ...`) | plot di dalam xschem, membaca `.raw` langsung |

Header harus `place=header` karena `.lib` wajib berada di atas. Isi TB ini:

```
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
```

`tcleval(@value)` di field `format` yang membuat variabel `$::SKYWATER_MODELS`
diterjemahkan saat netlist.

## Anatomi blok `.control`

```
.control
 remzerovec                 <- buang vektor nol dari run sebelumnya
 save <daftar node>         <- BATASI apa yang disimpan
 tran <maxstep> <tstop>     <- jalankan
 write sar-adc_tb.raw       <- tulis hasil
.endc
```

Urutannya penting: `save` harus **sebelum** `tran`, `write` **sesudah**.

`.control` itu bahasa shell, bukan SPICE. Konsekuensinya ada di bagian sapuan
di bawah.

## Probing node di dalam subckt — dan kenapa `vtail` dinamai

Node di dalam subckt dijangkau lewat jalur instance:

```
v( <instance>.<instance>.<node> )
```

Hierarki TB ini:

```
xtop                        (sar-adc)
├── xcomparator             (comparator)   -> vtail, pcp, pcn, comp_vop, comp_von
├── xcdacn / xcdacp         (cdac)
├── xsarlogic               (sarlogic)     -> valid_delayed, clk1..clk8
├── xdacdrivern / xdacdriverp (cdac_driver)
└── xbootstrapn / xbootstrapp (bootstrap)  -> vgate, cbot, ctop
```

Jadi node tail komparator adalah:

```
v(xtop.xcomparator.vtail)
```

**Kenapa menamainya penting.** Sebelum diberi nama, node itu ter-netlist sebagai
`#net1` — nama yang **dibuat otomatis oleh xschem dari urutan kawat**. Nama
otomatis bergeser setiap kali skematik disunting: tambah satu kawat, `#net1`
bisa jadi `#net3`. Daftar `save` yang menyebutnya akan diam-diam menunjuk node
lain, atau gagal, tanpa peringatan yang jelas.

Memberi `lab_pin` bernama `vtail` mengunci namanya. Aturan praktisnya: **setiap
node yang akan kamu probe, beri nama.** Node yang tidak diprobe boleh dibiarkan
otomatis.

Cara memastikan nama sebuah node: buka `simulation/sar-adc_tb.spice` dan baca
baris subckt-nya. Netlist adalah kebenaran, skematik hanya sumbernya.

## `save` — kenapa wajib

Tanpa `save`, ngspice menyimpan **semua** node termasuk node internal model
transistor (`#body`, `#dbody`, `#sbody`).

```
tanpa save : 3257 vektor, raw 290 MB
dengan save:   38 vektor, raw  12 MB
```

`save` juga mempercepat penulisan dan membuat file bisa dibuka berulang kali
tanpa menyiksa RAM.

**`+` menyambung baris dan ini berfungsi di dalam `.control`** — diverifikasi
2026-08-25 dengan deck minimal plus kontrol negatif. Jadi daftar panjang boleh
dipecah:

```
 save v(clks) v(EOC) v(d7) v(d6) ... v(xtop.xcomparator.vtail)
 + v(xtop.xcomparator.pcp) v(xtop.xcomparator.pcn)
```

## Memilih `tran <maxstep> <tstop>`

**`maxstep`** membatasi langkah terbesar; ngspice boleh memakai langkah lebih
kecil kalau perlu. Pilih dari peristiwa tercepat yang ingin kamu lihat.

| yang diukur | maxstep layak |
|---|---|
| kode dan residu saja | 50 ps |
| margin timing (EOC vs D0, setup/hold) | **20 ps** |
| bentuk gelombang regenerasi komparator | 5 ps |

TB ini memakai 20 ps karena margin EOC yang diukur berorde 500 ps dan D0 settle
~200 ps.

**`tstop`** dari jumlah konversi yang dibutuhkan. Dengan clock 100 ns dan
`TD=10n`, fase konversi ada di 25–110, 125–210, 225–310 ns.

| tujuan | tstop |
|---|---|
| satu konversi | 120 ns |
| pola berulang / bandingkan antar konversi | **350 ns** (3 konversi) |
| sapuan offset (hanya butuh trial 1) | **30 ns** |

Poin terakhir yang membuat sapuan murah: `D7` terkunci di `clk1` (~26.3 ns) dan
tidak berubah lagi. Untuk mengukur offset, **potong di 30 ns**. Ramp lambat
untuk resolusi yang sama butuh ~8 µs.

## Menyapu parameter

`.control` adalah shell, dan setiap `tran` membuat **plot baru**. Vektor dari
plot lama lenyap. Hanya variabel shell (`set` / `$var`) yang menyeberang.

```
.control
 unset appendwrite
 foreach vv -0.020 -0.018 -0.016 ... 0.020
   alter Vd = $vv
   tran 20p 30n
   meas tran d7v find v(d7) at=29n
   echo 'SWEEP $vv -> $&d7v'
   write offsweep.raw v(d7) v(clks) v(xtop.clkc)
   set appendwrite
   destroy $curplot
 end
.endc
```

| baris | kenapa begitu |
|---|---|
| `foreach`, bukan `dowhile` | `dowhile` dengan counter vektor gagal `Error: RHS invalid`, loop luar jalan **sekali**, dan exit code tetap 0 |
| `alter Vd = $vv` | mengubah nilai DC sumber tanpa netlist ulang. Sumbernya harus `DC`, bukan `PWL` |
| `meas ... at=29n` | ambil nilai pada satu titik waktu |
| `$&d7v` | mengambil isi vektor hasil `meas` |
| `echo` **sebelum** `destroy` | `meas` menaruh hasil di plot saat ini; sesudah destroy hilang |
| `destroy $curplot` | tanpa ini plot menumpuk di RAM dan sim melambat ~30× |
| `unset appendwrite` di awal | iterasi **pertama** memotong file lama; tidak perlu menghapusnya manual |
| `set appendwrite` **tepat sesudah `write`** | iterasi ke-2 dan seterusnya menambah. Taruh sesudah `write`, bukan di akhir badan loop — kalau ada perintah yang gagal di antaranya, `set` terlewat dan iterasi berikutnya menimpa |
| kutip **tunggal** di `echo` | lihat "Kutip" di bawah |

## Kutip: pakai `'`, jangan `"`

Di dalam `.control` **selalu kutip tunggal**:

```
 echo 'SWEEP $vv -> $&d7v'        <- benar
 echo "SWEEP $vv -> $&d7v"        <- merusak skematik
```

Alasannya bukan ngspice, tapi xschem. Blok `.control` disimpan di field
`value="..."`, jadi sebuah `"` di dalamnya **menutup field itu lebih awal** dan
merusak skematik sekaligus netlist.

Kutip tunggal aman: ngspice tetap mengekspansi `$var` maupun `$&vektor` di
dalamnya. Diverifikasi — outputnya identik dengan kutip ganda.

## Baris pertama deck selalu dibuang

SPICE membaca baris pertama sebagai **judul**, apa pun isinya. Menulis deck uji
cepat dengan komponen di baris pertama membuat komponen itu hilang, dan
gejalanya menyesatkan:

```
Vsrc a 0 DC 1        <- dimakan sebagai judul
R1 a 0 1k
.control
 alter Vsrc = 2
.endc
```

```
Error: no such device or model name vsrc
```

Terbaca seperti sintaks `alter` yang salah, padahal sumbernya memang tidak ada.
Netlist dari xschem selalu diawali `** sch_path: ...`, jadi ini hanya menggigit
deck tulisan tangan. Biasakan baris pertama berupa komentar `*`.

## `alter` — tiga bentuk, semuanya sah

```
 alter Vd = 0.5           <- paling ringkas
 alter vd dc = 0.5        <- eksplisit
 alter Vd = $vv           <- lewat variabel foreach, nilai negatif juga aman
```

Sumbernya harus `DC`. Sumber `PWL` tidak bisa diubah dengan bentuk ini.

## Membaca hasil

**Tabel dari `echo`** — paling langsung:

```sh
grep "^SWEEP" run.log | awk '{printf "%8.4f  %d\n", $2*1000, ($3>0.9)}'
```

**Plot bertumpuk di xschem** — tiap iterasi jadi satu dataset di `.raw`:

```
rawfile=$netlist_dir/offsweep.raw
dataset=-1                        <- -1 menumpuk semua; angka lain memilih satu
node="clks d7 xtop.clkc"
```

**Pasca-proses** — untuk apa pun yang lebih dari sekadar melihat gelombang
(ekstraksi step, spread, margin), baca `.raw` dengan skrip. Format binernya:
header teks sampai baris `Binary:`, lalu `float64` little-endian,
`npoints × nvars`, kolom 0 adalah waktu.

## Melihat progres run panjang

ngspice membanjiri log dengan `Reference value :` — itu **satu-satunya**
penunjuk progres, angkanya adalah waktu simulasi saat ini. Dipisah `\r`, bukan
`\n`, jadi `tail` biasa tidak melihatnya:

```sh
tail -c 2000 run.log | tr '\r' '\n' | tail -3
```

---

# Bagian 2 — Keadaan desain

Empat cacat ditemukan dan diperbaiki sejak TB10.

| # | cacat | perbaikan |
|---|---|---|
| A | `clkc` bebas berlari, `dvalid` tak pernah aktif | `clk8` masuk NOR gerbang `clkc` |
| B | DAC tak pernah kembali ke state sampling | reset shift register dari `~clks` |
| C | `cmp` tiba **sesudah** clock-nya sendiri | flop loop pindah ke tepi turun `rdy` |
| D | indeks `D` di `cdac_driver` **geser satu bit** | semua label naik satu: b6←D7 … b0←D1 |

Cacat D paling merusak: `clk_k` mengunci `D(8−k)`, jadi cap digerakkan oleh bit
yang **belum diputuskan**. Cap MSB berbalik retroaktif satu trial kemudian. Kode
keluar `10111111` dengan residu 44 LSB.

Empat perubahan setelah itu:

| perubahan | alasan |
|---|---|
| `dfstp_1` → `dfxtp_2` pada flop data | preset `SET_B=~clks` memaksa semua pin ke `0xFF` selama track. Tidak berguna: saat track `clk_k=0`, jadi `A_k = clk_k & D = 0` dan `B_k = ~clk_k \| D = 1` **tanpa peduli D**. State VCM datang dari `clk_k`, bukan dari D |
| reset dihapus seluruhnya | konversi semu di 0–10 ns tidak menyentuh sampel mana pun; konversi pertama yang nyata sudah benar |
| `EOC` = `clk8` → 2× `dlygate4sd3_1` | lihat timing di bawah |
| `MS5` PMOS `vtail`→VDD, gate `clk` | reset node tail komparator |

**Yang harus dipertahankan:** reset shift register `x1..x8` (`dfrtp_2`,
`RESET_B = ~clks`). Preset dibuang dari flop **data** saja. Kalau ini ikut
terbuang, sequencer tidak pernah kembali ke awal.

## Kenapa MS5, dan kenapa PMOS

Selama precharge (`clk`=0), `Mtail` mati dan `vtail` mengambang. Pasangan input
(drain = `pcp` di VDD, gate = `vip`) justru **mengisi** `vtail` sampai
`vip − Vth`. Titik henti itu bergantung sinyal, dan dalam 4.2 ns tak pernah
tercapai karena arusnya subthreshold.

Terukur di `simulation/comparator_tb.raw`, 27 tepi naik `clkc`:

```
SEBELUM MS5   rentang 0.456 .. 1.006 V    spread 550 mV     std 178 mV
SESUDAH MS5   rentang 1.80615 .. 1.82154 V spread 15.4 mV   std 4.0 mV
```

36× lebih baik. `vtail` duduk sedikit **di atas** VDD — tendangan kapasitif dari
tepi naik `clk` lewat Cgd MS5 (gate PMOS naik, drain ikut terangkat). Tidak
berbahaya.

Sisa spread hampir seluruhnya di **trial 1** (1.8142 / 1.8156 / 1.8215 antar
konversi); trial 2–8 hanya menyebar ~1 mV. Sebabnya precharge trial 1 adalah
fase track 15.1 ns, bukan precharge antar-trial 4.2 ns, dan `ctop` sedang
bergerak. Sisa 7 mV itu **common-mode** dan terbukti jinak — lihat simetri step.

**Kenapa PMOS ke VDD, bukan nFET ke VSS.** Dengan nFET ke VSS, `vtail`=0 membuat
pasangan input `Vgs = 0.9 V` → menyala, sementara `pcp` ditahan VDD oleh `MS1`
(PMOS W=0.42) melawan nFET input (W=5). nFET menang, `pcp` tidak pernah
benar-benar VDD, dan precharge rusak. Dengan PMOS ke VDD, `Vgs = −0.9 V`,
pasangan input mati total, tidak ada arus statis.

```
XMS5 vtail clk vdd vdd sky130_fd_pr__pfet_01v8 L=0.15 W=0.42
```

Ukuran sama dengan MS1–MS4, **jangan lebih besar**. Kapasitansi `vtail` hanya
beberapa fF; mengisinya ke 1.8 V dalam 1 ns butuh ~9 µA, sedangkan jendela
precharge 4.2 ns.

---

# Bagian 3 — Angka referensi

## Transfer function

```
1 LSB ideal   = VDD/128            = 14.0625 mV
1 LSB efektif = |step b0| terukur  = 13.9915 mV  -> gain error -0.505%
FS diferensial                     = +/- 1.8 V
kode c        <-> Vd dalam [(c-128)*u, (c-127)*u)
titik tengah kode c                = (c - 127.5) * u
```

**Jebakan yang pernah menjerat:** menjumlahkan ketujuh step DAC memberi 1.784 V,
dan itu **bukan** full scale. Step-step itu *threshold pencarian biner*, bukan
rentang. Gabungan seluruh batas keputusan di pohon 8-trial mencakup setiap
kelipatan 1 U dari −127 sampai +127, jadi LSB = 1 U dan FS = 256 LSB.

Cek cepat yang menangkapnya: satu step MSB (900 mV) harus sama dengan 64 LSB,
jadi LSB = 900/64 = 14.06 mV.

## Gain diukur dari residu, bukan dari kode

```
metode baca-kode 2 titik, span 129 kode
  ketidakpastian +/-0.5 LSB tiap ujung  ->  gain +/- 0.78%
gain error yang diukur                  ->  -0.505%
```

Ketidakpastian lebih besar dari besaran yang diukur. Metode baca-kode itu untuk
silikon, di mana hanya pin digital terlihat. Di simulasi baca `ctopp − ctopn`
langsung — presisi mikrovolt.

## Residu **wajib** dibaca pada instan `clkc` naik

Membacanya 0.3 ns sebelum `clk_k` memberi gain error −1.8%; pada tepi naik
`clkc` memberi **−0.505%**. `clkc` naik adalah saat komparator benar-benar
melihat.

## Konvensi `Vd` di TB

```
Voff net1 0 DC 0.9
Ep   vip net1 net2 0  0.5      ->  vip = 0.9 + 0.5*Vd
En   vin net1 net2 0 -0.5      ->  vin = 0.9 - 0.5*Vd
```

Dengan gain **±0.5**, `Vd` benar-benar diferensial. Kalau gain ditulis ±1,
`vip − vin = 2*Vd` dan namanya berbohong. Semua angka di dokumen ini diferensial.

## Titik uji yang sudah dihitung

| kode | biner | Vd (mV) | vip | vin |
|---|---|---|---|---|
| 170 | `10101010` | +594.64 | 1.19732 | 0.60268 |
| 85 | `01010101` | −594.64 | 0.60268 | 1.19732 |
| 192 | `11000000` | +902.45 | 1.35123 | 0.44877 |
| 63 | `00111111` | −902.45 | 0.44877 | 1.35123 |

Semuanya **titik tengah jendela kode pada transfer function nyata**
(u = 13.9915 mV), bukan ideal. Margin ±7 mV ke tiap sisi.

## Clock

```
Vclk  PULSE(0 1.8 10n 100p 100p 14.9n 100n)
```

Track 15.1 ns, konversi 84.9 ns, **periode 100 ns = 10 MS/s**.

`PER` harus **100n**. Menulis `84.9n` memberi 15/70, bukan 15/85 — dan margin
timing turun dari 27% ke 3%.

---

# Bagian 4 — Hasil terverifikasi (tt, 27 °C)

Run 2026-08-25, `Vd` berganti tanda tiap konversi (+594.64 / −594.64 mV):

```
  konv 1: Vd=+594.34 mV -> kode 170 = 10101010   OK
  konv 2: Vd=-594.34 mV -> kode  85 = 01010101   OK
  konv 3: Vd=+594.34 mV -> kode 170 = 10101010   OK
```

Konversi 62.36 ns dari 85 ns tersedia — sisa 22.6 ns. Periode trial 8.72 ns.

## Bobot DAC dan simetri

| step | terukur (mV) | ideal | rasio thd b0 | \|naik\| − \|turun\| |
|---|---|---|---|---|
| b6 | 895.591 | 900 | 64.01 | 0.0003 mV |
| b5 | 447.826 | 450 | 32.01 | 0.0006 |
| b4 | 223.913 | 225 | 16.00 | −0.0002 |
| b3 | 111.945 | 112.5 | 8.00 | −0.0002 |
| b2 | 55.973 | 56.25 | 4.00 | 0.0002 |
| b1 | 27.983 | 28.125 | 2.00 | 0.0001 |
| b0 | 13.9915 | 14.0625 | 1.00 | 0.0002 |

Nilai absolut kurang seragam 0.505% (**gain error**, parasitik top-plate). Rasio
nyaris sempurna (**matching bagus**). Bedakan keduanya: gain error tidak merusak
INL/DNL, mismatch rasio merusak.

**Simetri step lolos telak.** Selisih antara arah naik dan arah turun
0.0001–0.0006 mV untuk ketujuh cap — tiga orde di bawah ambang 1.4 mV. Tidak ada
error linearitas tengah-skala. Ini sekaligus bukti sisa 7 mV di `vtail` trial-1
tidak menggigit.

## Ongkos MS5

Pembanding adil — run lama memakai Vd persis sama dengan komparator sebelum MS5:

| | tanpa MS5 | dengan MS5 |
|---|---|---|
| periode trial | 8.631 ns | 8.720 ns (+89 ps) |
| durasi konversi | 61.94 ns | 62.36 ns |
| ayunan `ctopp` 1 ns pasca-strobe | 101.8 mV | 118.2 mV (+16%) |
| gain error | −0.63% | **−0.505%** |

Kickback naik **16%, bukan 3.6×**, meski ayunan `vtail` naik dari ~0.5 V ke
1.8 V. Dan gain error justru **mengecil**. Kedua-duanya sebab yang sama: pada
`Vgs = −0.9 V` transistor input berada di akumulasi, `Cgs`-nya tinggal overlap.

## Timing

```
D0 settle         = clk8 + 192..209 ps
EOC               = clk8 + 742..743 ps   (2x dlygate4sd3_1)
MARGIN EOC - D0   = +532 .. +551 ps
pedestal sampling = -0.46 mV             (0.035 LSB — bootstrap bukan tersangka)
```

`EOC = clk8 & valid` **salah** dan sempat dipakai: `valid` naik 224 ps *sebelum*
`clk8`, jadi EOC naik ~100 ps **mendahului** D0, dan berupa pulsa sub-nanodetik
yang tak terlihat pembaca 10 MHz. `clk8` + 2 `dlygate` benar. **Satu** stage
akan menyisakan ~200 ps di atas setup — terlalu tipis.

Margin ini hanya bisa diukur kalau kode berturut-turut **berbeda**, karena `D0`
butuh tepi. Dengan input konstan angka ini tidak bisa didapat.

---

# Bagian 5 — TB #1: offset

## Yang diukur

Trial 1 membandingkan `(vip − vin)` tersampel langsung dengan nol; tidak ada DAC
yang terlibat. Jadi `D7` sendirian adalah detektor offset:

```
D7 = 1  bila  (Vd_sampled + Voffset) > 0
```

Cari `Vt` tempat `D7` berbalik, lalu `offset = −Vt`. Karena
`Vd_sampled = Vd + pedestal`, yang didapat adalah **offset ADC end-to-end**.

## Kenapa satu titik di Vd = 0 tidak berguna

Pada Vd = 0 tepat, ADC ideal berada **persis di batas** kode 127/128. Hasilnya
lempar koin — terbukti: run Vd=0 memberi `0x80` di konversi pertama dan `0x7F`
di konversi kedua.

Lebih buruk lagi, residu trial 1 di sana hanya 0.4 µV — **di bawah presisi
numerik solver** (`reltol=1e-4`). Ubah `reltol` sedikit, hasilnya bisa berbeda.

Offset adalah **tegangan tempat transisi kode terjadi**, bukan kode pada satu
tegangan.

## Deck

Kembalikan `Vd` ke `DC` (nilainya ditimpa `alter`), lalu:

```
.control
 unset appendwrite
 foreach vv -0.020 -0.018 -0.016 -0.014 -0.012 -0.010 -0.008 -0.006 -0.004 -0.002
 +        0.000 0.002 0.004 0.006 0.008 0.010 0.012 0.014 0.016 0.018 0.020
   alter Vd = $vv
   tran 20p 30n
   meas tran d7v find v(d7) at=29n
   echo 'SWEEP $vv -> $&d7v'
   write offsweep.raw v(d7) v(clks) v(xtop.clkc) v(xtop.ctopp) v(xtop.ctopn)
 +      v(xtop.xcomparator.vtail)
   set appendwrite
   destroy $curplot
 end
.endc
```

Tidak perlu menghapus `offsweep.raw` lama — `unset` di awal membuat iterasi
pertama memotongnya sendiri. Diverifikasi: tiga run berturut-turut tetap
menghasilkan 21 dataset, bukan 42 lalu 63.

Setelah bracket diketahui, ulangi dengan daftar rapat, misal 0.2 mV
(= 0.014 LSB).

## Ambang

| hasil | arti |
|---|---|
| \|offset\| < 0.5 LSB (7 mV) | tidak menggeser kode mana pun — cukup |
| 0.5 – 1 LSB | dapat diterima, catat di spec |
| > 1 LSB | kejar sumbernya |

Pra-MS5, pilot 3 titik memberi bracket selebar 20 mV karena offset berubah tiap
komparasi. **Pasca-MS5 bracket harus jauh lebih sempit**, karena `vtail` kini
deterministik. Kalau tidak, ada jalur lain yang belum diketahui.

---

# Bagian 6 — TB #2: 1 LSB, gain, simetri  ✅ SELESAI

Dijalankan 2026-08-25 dengan `Vd` PWL berganti tanda. Seluruh isinya sudah masuk
Bagian 4. Deck yang dipakai:

```
Vd  PWL(0n 0.59464 105n 0.59464 106n -0.59464 205n -0.59464 206n 0.59464)
```

```
.control
 remzerovec
 save v(clks) v(EOC) v(vip) v(vin) v(d7) v(d6) v(d5) v(d4) v(d3) v(d2) v(d1) v(d0)
 + v(xtop.ctopp) v(xtop.ctopn) v(xtop.clkc) v(xtop.comp_valid)
 + v(xtop.xcomparator.vtail) v(xtop.xcomparator.pcp) v(xtop.xcomparator.pcn)
 + v(xtop.clk1) v(xtop.clk2) v(xtop.clk3) v(xtop.clk4)
 + v(xtop.clk5) v(xtop.clk6) v(xtop.clk7) v(xtop.clk8)
 tran 20p 350n
 write sar-adc_tb.raw
.endc
```

Input berganti tanda itu yang membuka empat pengukuran sekaligus: simetri step,
spread `vtail`, margin EOC−D0, dan jendela kode campuran. **Dengan input konstan
keempatnya tidak terlihat sama sekali** — pelajaran yang paling mahal dari
seluruh sesi ini.

---

# Bagian 7 — Masih terbuka

| item | status |
|---|---|
| **register output** | **WAJIB, belum ada.** Terukur dengan kode berganti tiap konversi: pin menampilkan kode campuran (`0x2A`, `0x6A`, `0x4A` — kode yang tak pernah ada) selama **~60 ns dari tiap 100 ns**. Jendela valid hanya 87.4 → 126.5 ns ≈ 39 ns. Perbaikan: 8× `dfxtp_1`, CLK=`EOC`, D=`D7..D0`; margin EOC sudah terbukti +532 ps |
| **TB #1 offset** | belum dijalankan. Satu-satunya angka besar yang belum kita punya |
| glitch bergantung-data | setelah `dfxtp`, gerbang `clk_k` sesaat meneruskan bit konversi *sebelumnya*. Simetri step yang sempurna menunjukkan ini kemungkinan jinak, tapi belum diuji langsung. Kalau bermasalah: sisipkan 1 `dlygate4sd3_1` di jalur `clk_k` menuju `cdac_driver` |
| TG vs std-cell untuk `cdac_driver` | **TB ini tidak bisa menjawabnya.** `Vavdd`/`Vdvdd` sumber ideal impedansi nol, jadi tidak ada bounce supply. Argumen utama TG (referensi CDAC = `dvdd` yang juga memberi daya ke seluruh logika) secara struktural tidak terlihat. Untuk memutuskan: tambahkan R+L seri + decap, ukur droop `dvdd`. Ambang: droop < 7 mV agar error < 0.5 LSB |
| rantai delay | 10× `dlygate4sd3_1` dilewati **dua kali** per trial. Memotong ke 3 menyisakan 2.52 ns settling sedangkan step 900 mV butuh 3.86 ns (6.5 tau, tau = 596 ps). **5 stage lantainya, bukan 3.** Kalau didorong lebih jauh, naik ke `and2_4`/`or2_4` (sufiks sky130 = drive strength; `_1` lebih **lemah** dari `_2`) |
| DNL/INL, SNDR/ENOB | belum. Blok `.param` (nfft=64, mcyc=29 coprime, fs=10 MHz) siap untuk FFT koheren, tapi `Vinp`/`Vinn` masih DC |
| corner + Monte Carlo | belum. Semua hasil tt/27 °C |

---

# Bagian 8 — Jebakan yang sudah menggigit

| jebakan | akibat |
|---|---|
| netlist headless selagi GUI xschem terbuka | netlist terpotong diam-diam di atas file yang baik |
| menyimpan dari GUI setelah file diedit di disk | edit hilang; **Reload dulu** |
| probing node ber-nama-otomatis (`#net1`) | nama bergeser saat skematik disunting; **beri nama setiap node yang diprobe** |
| `dowhile` dengan `tran` di dalamnya | `Error: RHS invalid`, loop luar jalan sekali, exit code tetap 0 |
| tanpa `destroy $curplot` di loop | plot menumpuk, sim melambat ~30× |
| tanpa `save` | 3257 vektor, raw 290 MB. Dengan `save`: 12 MB |
| kutip ganda `"` di dalam `.control` | menutup field `value="..."` xschem lebih awal — skematik dan netlist rusak. Pakai `'` |
| baris pertama deck tulisan tangan berisi komponen | dimakan sebagai judul; gejalanya `no such device`, terbaca seperti sintaks `alter` yang salah |
| `set appendwrite` di awal loop | tiap run **menambah** ke file lama: 3 plot, lalu 6, lalu 9. Pakai `unset` di awal + `set` sesudah `write` |
| `MF=` disalin ke SPICE tulisan tangan | tidak menskalakan kapasitansi; simbol xschem menambahkan `m=` saat netlist |
| membaca residu pada `clk_k − 0.3 ns` | gain error tampak −1.8% padahal −0.505% |
| **stimulus konstan** | simetri step, spread `vtail`, margin EOC, dan jendela kode campuran semuanya **tak terlihat**. Pakai input yang berganti tiap konversi |

> **Dikoreksi 2026-08-25:** dokumen ini sebelumnya menulis bahwa `+` tidak
> menyambung baris di dalam `.control`. **Itu salah** — diuji dengan deck minimal
> plus kontrol negatif, `+` berfungsi dan `save` boleh dipecah beberapa baris.
