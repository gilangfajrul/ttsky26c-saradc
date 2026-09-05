#!/usr/bin/env python3
"""Bandingkan CDAC skematik vs PEX(C-coupled) vs PEX(full-RC)."""
import os, re, json
import numpy as np, matplotlib
matplotlib.use('Agg'); import matplotlib.pyplot as plt

SIM = '/foss/designs/ttsky26c-saradc/pex/sim'
IMG = os.path.join(SIM, 'img'); os.makedirs(IMG, exist_ok=True)
plt.rcParams.update({'figure.dpi':130,'font.size':9,'axes.grid':True,'grid.alpha':.3,
                     'axes.spines.top':False,'axes.spines.right':False})
BLU,RED,GRN,ORG = '#1f4e79','#c0504d','#4f8a10','#e36c09'
COL  = {'sch':BLU,'pex':RED,'rc':GRN}
LS   = {'sch':'-','pex':'-','rc':'--'}
NAME = {'sch':'skematik','pex':'PEX C-coupled','rc':'PEX full-RC'}
FLAV = ['sch','pex','rc']

VREF, F_AC = 1.8, 1e6
LSB_ID = 2*VREF/256          # 14.0625 mV, 1 LSB 8-bit diferensial

# ------------------------------------------------------------------ 1. muat
W, CTOT = {}, {}
txt = ''
for f in ('res_w.txt','res_w_rc.txt'):
    p = os.path.join(SIM,f)
    if os.path.exists(p): txt += open(p).read()
for ln in txt.splitlines():
    t = ln.split()
    if t[:1] == ['W']:    W.setdefault(t[1],{})[t[2]] = float(t[3])
    elif t[:1] == ['CTOT']: CTOT[t[1]] = 1/(2*np.pi*F_AC*float(t[2]))
FLAV = [f for f in FLAV if f in W]

# -------------------------------------------- 2. bobot per bit DAC (7 bit)
# skema split-cap: A_k = clk_k & D_k, B_k = ~clk_k | D_k.  Setelah bit k
# diputuskan A_k = B_k = D_k, jadi level akhir DAC hanya bergantung pada
# W_k = w_A + w_B.  Suku reset bit yang belum diputuskan sama di sisi p dan
# n sehingga lenyap di residu diferensial -> pencarian SAR murni biner
# pada himpunan level W_k.
PAIR = {7:('b6a','b6b'), 6:('b5a','b5b'), 5:('b4a','b4b'), 4:('b3a','b3b'),
        3:('b2',),       2:('b1',),       1:('b0',)}
IDEAL = {7:64/128, 6:32/128, 5:16/128, 4:8/128, 3:4/128, 2:2/128, 1:1/128}
BITS  = [7,6,5,4,3,2,1]

Wb = {f:{k:sum(W[f][n] for n in PAIR[k]) for k in BITS} for f in FLAV}

# --------------------------------------------- 3. kurva transfer + DNL/INL
def levels(wb):
    """Ambang transisi ADC: Vin_diff = 2 Vref sum(W_k d_k) - Vref sum(W_k)."""
    c = np.arange(128)
    s = np.zeros(128)
    for k in BITS:
        s += wb[k]*((c >> (k-1)) & 1)
    return 2*VREF*s - VREF*sum(wb.values())

def dnl_inl(lev):
    """Endpoint-fit: buang gain+offset, sisakan linearitas murni.
    Satu langkah kode DAC = 2 LSB (bit terakhir diputuskan komparator
    tanpa langkah DAC), jadi normalisasi memakai LSB efektif itu."""
    n    = len(lev)
    lsb  = (lev[-1]-lev[0])/(n-1)      # LSB efektif per langkah kode DAC
    fit  = lev[0] + lsb*np.arange(n)
    # LSB 8-bit = lsb/2: bit terakhir memakai ambang L(c) sendiri, bit ke-7
    # memakai titik tengah, jadi tiap langkah DAC terbagi rata jadi dua kode.
    inl  = (lev-fit)/lsb*2             # dalam LSB 8-bit
    dnl  = np.diff(lev)/lsb - 1        # lebar kode/2 dibagi LSB/2 -> tanpa faktor 2
    return dnl, inl, lsb

RES = {}
for f in FLAV:
    lev = levels(Wb[f])
    dnl, inl, lsb = dnl_inl(lev)
    RES[f] = dict(lev=lev, dnl=dnl, inl=inl, lsb=lsb)

# ------------------------------------------------------------ 4. transient
TR = {}
for f in FLAV:
    p = os.path.join(SIM, 'tran_%s.dat' % f)
    if os.path.exists(p):
        d = np.loadtxt(p)
        TR[f] = (d[:,0], d[:,1])

# ============================================================== PLOT 1 bobot
fig, ax = plt.subplots(1, 2, figsize=(10,3.6))
x = np.arange(len(BITS)); wdt = 0.8/len(FLAV)
for i,f in enumerate(FLAV):
    dev = [ (Wb[f][k]/IDEAL[k]-1)*100 for k in BITS ]
    ax[0].bar(x+i*wdt-0.4+wdt/2, dev, wdt, color=COL[f], label=NAME[f])
ax[0].set_xticks(x); ax[0].set_xticklabels(['D%d'%k for k in BITS])
ax[0].axhline(0, color='k', lw=.8)
ax[0].set_ylabel('simpangan bobot [%]'); ax[0].set_title('Bobot bit DAC vs biner ideal')
ax[0].legend(fontsize=8)

# pasangan a/b: ketidakseimbangan menggeser common-mode ctop
pairs = [k for k in BITS if len(PAIR[k])==2]
xp = np.arange(len(pairs))
for i,f in enumerate(FLAV):
    imb = [ (W[f][PAIR[k][0]]/W[f][PAIR[k][1]]-1)*100 for k in pairs ]
    ax[1].bar(xp+i*wdt-0.4+wdt/2, imb, wdt, color=COL[f], label=NAME[f])
ax[1].set_xticks(xp); ax[1].set_xticklabels(['%s / %s'%PAIR[k] for k in pairs])
ax[1].axhline(0, color='k', lw=.8)
ax[1].set_ylabel('ketidakseimbangan a/b [%]')
ax[1].set_title('Kesetimbangan pasangan split-cap')
fig.tight_layout(); fig.savefig(IMG+'/01_bobot.png'); plt.close(fig)

# ============================================================ PLOT 2 DNL/INL
fig, ax = plt.subplots(2, 1, figsize=(9,5.4), sharex=True)
for f in FLAV:
    ax[0].step(np.arange(127), RES[f]['dnl'], where='mid', color=COL[f], lw=1.4, ls=LS[f],
               label='%s  max |DNL| = %.3f LSB' % (NAME[f], np.abs(RES[f]['dnl']).max()))
    ax[1].plot(np.arange(128), RES[f]['inl'], color=COL[f], lw=1.4, ls=LS[f],
               label='%s  max |INL| = %.3f LSB' % (NAME[f], np.abs(RES[f]['inl']).max()))
for a,t in zip(ax, ('DNL','INL')):
    a.axhline(0.5, color='k', ls=':', lw=.8); a.axhline(-0.5, color='k', ls=':', lw=.8)
    a.set_ylabel('%s [LSB]'%t); a.legend(fontsize=8, loc='upper left')
ax[1].set_xlabel('kode DAC (7 bit)')
ax[0].set_title('Linearitas CDAC saja (endpoint-fit, LSB 8-bit = 14.0625 mV)')
fig.tight_layout(); fig.savefig(IMG+'/02_dnl_inl.png'); plt.close(fig)

# ======================================================== PLOT 3 settling MSB
if TR:
    fig, ax = plt.subplots(1, 2, figsize=(10,3.6))
    for f in FLAV:
        if f not in TR: continue
        t,v = TR[f]; t = t*1e9
        ax[0].plot(t, v*1e3, color=COL[f], lw=1.3, ls=LS[f], label=NAME[f])
        ax[1].plot(t, (v-v[-1])*1e3, color=COL[f], lw=1.3, ls=LS[f], label=NAME[f])
    ax[0].set_xlabel('t [ns]'); ax[0].set_ylabel('v(ctop) [mV]')
    ax[0].set_title('Langkah MSB: b6b 1.8 V -> 0 (driver 150 ohm)')
    ax[1].set_xlabel('t [ns]'); ax[1].set_ylabel('galat settling [mV]')
    ax[1].set_yscale('symlog', linthresh=0.1)
    for lv,st in ((7.03125,'-.'),(1.40625,':')):
        ax[1].axhline(lv, color='k', ls=st, lw=.7); ax[1].axhline(-lv, color='k', ls=st, lw=.7)
    ax[1].set_title('galat vs nilai akhir (garis: 0.5 dan 0.1 LSB)')
    ax[1].set_xlim(0.9, 3.5); ax[0].legend(fontsize=8); ax[1].legend(fontsize=8)
    fig.tight_layout(); fig.savefig(IMG+'/03_settling.png'); plt.close(fig)

# ================================================================ ringkasan
out = []
W_ = '%-26s' + ' %13s'*len(FLAV)
def row(lbl, vals): out.append(W_ % (lbl, *vals))
row('', [NAME[f] for f in FLAV])
row('C_total di ctop [pF]', ['%.4f'%(CTOT[f]*1e12) for f in FLAV])
row('  vs skematik [%]',    ['%+.2f'%((CTOT[f]/CTOT['sch']-1)*100) for f in FLAV])
row('gain (sum W/ideal) [%]',['%+.3f'%((sum(Wb[f].values())/sum(IDEAL.values())-1)*100) for f in FLAV])
row('LSB efektif [mV]',     ['%.4f'%(RES[f]['lsb']/2*1e3) for f in FLAV])
row('max |DNL| [LSB]',      ['%.4f'%np.abs(RES[f]['dnl']).max() for f in FLAV])
row('max |INL| [LSB]',      ['%.4f'%np.abs(RES[f]['inl']).max() for f in FLAV])
BCAP_ = ['b6b','b5b','b4b','b3b','b2','b1','b0']
row('drift CM ctop [mV]',   ['%+.2f'%(VREF*(sum(Wb[f].values())/2
                              - sum(W[f][n] for n in BCAP_))*1e3) for f in FLAV])
out.append('')
H_ = '%-6s %10s' + ' %10s'*len(FLAV)
out.append(H_ % ('bit','ideal', *['%s [%%]'%f for f in FLAV]))
for k in BITS:
    out.append(H_ % ('D%d'%k, '%.6f'%IDEAL[k],
        *['%+.3f'%((Wb[f][k]/IDEAL[k]-1)*100) for f in FLAV]))
rep = '\n'.join(out)
open(os.path.join(SIM,'RINGKASAN.txt'),'w').write(rep+'\n')
print(rep)

# ============ 5. dari mana simpangan bobot itu datang: kopling rute ke ctop
def captab(p):
    c = {}
    for ln in open(p):
        m = re.match(r'^C\S+\s+(\S+)\s+(\S+)\s+([0-9.eE+-]+)f\s*$', ln.strip())
        if m:
            a,b,v = m.group(1).split('.')[0], m.group(2).split('.')[0], float(m.group(3))
            c[tuple(sorted((a,b)))] = c.get(tuple(sorted((a,b))),0)+v
    return c
cc   = captab('/foss/designs/ttsky26c-saradc/pex/c/cdac.pex.spice')
unit = CTOT['sch']*1e15/128          # fF per unit MIM (dari skematik)
lines = ['', 'Asal simpangan: kopling rute bit-line ke ctop (PEX C-coupled)',
         '%-5s %6s %9s %9s %8s %9s' % ('bit','unit','MIM [fF]','rute [fF]','+%','bobot%')]
for k in BITS:
    mim  = 2*IDEAL[k]*128*unit if len(PAIR[k])==2 else IDEAL[k]*128*unit
    mim  = IDEAL[k]*128*unit
    rout = sum(cc.get(tuple(sorted(('ctop',n))),0) for n in PAIR[k])
    lines.append('%-5s %6d %9.2f %9.2f %8.2f %9.3f' % (
        'D%d'%k, round(IDEAL[k]*128), mim, rout, rout/mim*100,
        (Wb['pex'][k]/IDEAL[k]-1)*100))
lines.append('(kolom +%% dibagi pertumbuhan C_total %.2f%% menghasilkan kolom bobot%%)'
             % ((CTOT['pex']/CTOT['sch']-1)*100))
lines.append('')
lines.append('Perbandingan dua mode ekstraksi (kapasitansi yang sama-sama ada identik,')
lines.append('yang berbeda hanya cap ke substrat -> full-RC tidak mengurangi shielding):')
rcc = captab('/foss/designs/ttsky26c-saradc/pex/rc/cdac.pex.spice')
def _issub(x): return x.startswith('w_n') or x == 'VSUBS'
sub = [k for k in set(cc)|set(rcc) if any(_issub(x) for x in k)]
lines.append('%-24s %10s %10s' % ('pasangan','C-coup [fF]','full-RC [fF]'))
for k in ['ctop','b6a','b6b','b5a','b4a','b3a','b2','b1','b0']:
    kc = [p for p in sub if k in p and any(x=='VSUBS' for x in p)]
    kr = [p for p in sub if k in p and any(x.startswith('w_n') for x in p)]
    lines.append('%-24s %10.2f %10.2f' % (k+' <-> substrat',
                 cc.get(kc[0],0) if kc else 0, rcc.get(kr[0],0) if kr else 0))
lines.append('%-24s %10.2f %10.2f' % ('total ke substrat',
             sum(v for k,v in cc.items() if any(_issub(x) for x in k)),
             sum(v for k,v in rcc.items() if any(_issub(x) for x in k))))
for k in [('b6a','ctop'),('b6b','ctop'),('b6a','b6b')]:
    kk=tuple(sorted(k))
    lines.append('%-24s %10.2f %10.2f' % ('%s <-> %s'%k, cc.get(kk,0), rcc.get(kk,0)))
extra = '\n'.join(lines)
open(os.path.join(SIM,'RINGKASAN.txt'),'a').write(extra+'\n')
print(extra)

if TR:
    lines = ['', 'Settling langkah MSB (b6b 1.8 V -> 0, driver 150 ohm / 150 ps):',
             '%-16s %14s %14s %14s' % ('','v akhir [mV]','t 0.5 LSB [ps]','t 0.1 LSB [ps]')]
    m = {}
    for ln in open(os.path.join(SIM,'res_t.txt')):
        t = ln.split()
        if len(t) >= 4 and t[1] in ('vfin','t05','t01'):
            m.setdefault(t[0],{})[t[1]] = float(t[3])
    for f in FLAV:
        if f not in m: continue
        lines.append('%-16s %14.3f %14.1f %14.1f' % (NAME[f], m[f]['vfin']*1e3,
                     m[f]['t05']*1e12-1000, m[f]['t01']*1e12-1000))
    txt2 = '\n'.join(lines)
    open(os.path.join(SIM,'RINGKASAN.txt'),'a').write(txt2+'\n')
    print(txt2)
