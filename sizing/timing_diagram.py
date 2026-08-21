import numpy as np, matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle

OUT = ''   # simpan di folder ini. Di notebook: ganti savefig -> plt.show()

# ---- design point ------------------------------------------------------------
VDD, VTHN_eff, VTHP = 1.8, 0.774, 0.696
C_PQ, C_XY, I_CM, tau4, A_v = 5.64e-15, 6.30e-15, 43.8e-6, 40.5e-12, 12.03
LSB, fs, N, alpha, beta = 14.0625e-3, 10e6, 8, 0.15, 0.45

t_amp  = C_PQ*VTHN_eff/I_CM
t_ph3  = C_XY*VTHP/I_CM
dV_XY0 = (A_v*LSB/2)*C_PQ/(C_PQ+C_XY)
t_ph4  = tau4*np.log((VDD/2)/dV_XY0)
t_dec  = t_amp+t_ph3+t_ph4

Ts = 1/fs; t_sample = alpha*Ts; t_conv = Ts-t_sample
t_trial = t_conv/N; t_comp = beta*t_trial; t_reset = t_trial-t_comp

POS, NEG = '#2a78d6', '#eb6834'
INK, INK2, MUTED, GRID, SURF = '#0b0b0b', '#52514e', '#c9c8c2', '#e6e5e0', '#fcfcfb'

def dress(ax):
    ax.set_facecolor(SURF)
    for s in ('top', 'right'): ax.spines[s].set_visible(False)
    for s in ('left', 'bottom'):
        ax.spines[s].set_color(GRID); ax.spines[s].set_linewidth(1)
    ax.tick_params(colors=INK2, labelsize=8, length=3, width=1)

# =============================================================================
# FIGURE A -- anggaran waktu
# =============================================================================
figA, ax = plt.subplots(figsize=(10, 3.6))
figA.patch.set_facecolor(SURF); dress(ax)

rows = [
    (3, 'Ts = 100 ns\n(1 sample)', 1/Ts,
     [(0, t_sample, POS, 'akuisisi 15 ns'), (t_sample, t_conv, NEG, 'konversi 8 bit  85 ns')]),
    (2, 'konversi\n= 8 x t_trial', 1/Ts,
     [(t_sample+i*t_trial, t_trial, POS, f'b{i+1}') for i in range(N)]),
    (1, '1 x t_trial\n= 10.62 ns', 1/t_trial,
     [(0, t_comp, POS, 't_comp  4.78 ns'), (t_comp, t_reset, NEG, 't_reset  5.84 ns')]),
    (0, 't_comp\n= 4.78 ns', 1/t_comp,
     [(0, t_dec, POS, ''), (t_dec, t_comp-t_dec, MUTED, f'margin tak terpakai  {(t_comp-t_dec)*1e9:.2f} ns')]),
]
for y, label, s, segs in rows:
    for x0, w, c, txt in segs:
        ax.add_patch(Rectangle((x0*s, y-0.3), w*s, 0.6, facecolor=c,
                               edgecolor=SURF, linewidth=2, zorder=2))
        if not txt: continue
        if w*s > 0.10:                                    # fits inside
            ax.text(x0*s+w*s/2, y, txt, ha='center', va='center', fontsize=7.5,
                    color='white' if c != MUTED else INK2, zorder=3)
        else:                                             # too narrow -> outside
            ax.text(x0*s+w*s+0.012, y, txt, ha='left', va='center',
                    fontsize=7.5, color=INK2, zorder=3)
    ax.text(-0.02, y, label, ha='right', va='center', fontsize=8.5, color=INK, linespacing=1.4)

# call out the decision sliver explicitly
s = 1/t_comp
ax.annotate(f'keputusan comparator {t_dec*1e12:.0f} ps', xy=(t_dec*s/2, -0.30),
            xytext=(0.10, -0.78), textcoords='data', fontsize=7.5, color=INK2,
            arrowprops=dict(arrowstyle='-', color=MUTED, lw=1))

ax.set_xlim(-0.34, 1.03); ax.set_ylim(-1.0, 3.6)
ax.set_yticks([]); ax.set_xticks([])
ax.spines['left'].set_visible(False); ax.spines['bottom'].set_visible(False)
ax.set_title('Anggaran waktu SAR ADC: dari Ts sampai keputusan comparator',
             fontsize=11, color=INK, pad=12, loc='left')
figA.tight_layout()
figA.savefig(OUT+'figA.png', dpi=140, facecolor=SURF, bbox_inches='tight')

# =============================================================================
# FIGURE B -- waveform 4 fase + kenapa perlu SR latch
# =============================================================================
t_pre, t_rst = 120e-12, 320e-12
t0 = t_pre; t1 = t0+t_amp; t2 = t1+t_ph3; t3 = t2+t_ph4; tend = t3+t_rst
t = np.linspace(0, tend, 6000)

dI = 0.10*I_CM          # differential exaggerated so it is visible at this scale
tau_rst = 45e-12

vp = np.full_like(t, VDD); vq = np.full_like(t, VDD)
vx = np.full_like(t, VDD); vy = np.full_like(t, VDD)

m = (t >= t0) & (t < t1); tt = t[m]-t0
vp[m] = VDD-(I_CM+dI)*tt/C_PQ
vq[m] = VDD-(I_CM-dI)*tt/C_PQ
p1, q1 = VDD-(I_CM+dI)*t_amp/C_PQ, VDD-(I_CM-dI)*t_amp/C_PQ

m = (t >= t1) & (t < t2); tt = t[m]-t1
vp[m] = p1-(I_CM+dI)*tt/C_PQ*0.45
vq[m] = q1-(I_CM-dI)*tt/C_PQ*0.45
vx[m] = VDD-(I_CM+dI)*tt/C_XY
vy[m] = VDD-(I_CM-dI)*tt/C_XY
p2 = p1-(I_CM+dI)*t_ph3/C_PQ*0.45; q2 = q1-(I_CM-dI)*t_ph3/C_PQ*0.45
x2 = VDD-(I_CM+dI)*t_ph3/C_XY;     y2 = VDD-(I_CM-dI)*t_ph3/C_XY

m = (t >= t2) & (t <= t3); tt = t[m]-t2
cm  = (x2+y2)/2 - I_CM*tt/(2*C_XY)
d   = (y2-x2)*np.exp(tt/tau4)
vx[m] = np.clip(cm-d/2, 0, VDD); vy[m] = np.clip(cm+d/2, 0, VDD)
vp[m] = np.clip(p2-I_CM*tt/C_PQ*0.30, 0.02, VDD)
vq[m] = np.clip(q2-I_CM*tt/C_PQ*0.30, 0.02, VDD)
x3, y3 = vx[m][-1], vy[m][-1]; p3, q3 = vp[m][-1], vq[m][-1]

# reset: S1..S4 pull every node back to VDD
m = t > t3; tt = t[m]-t3; e = np.exp(-tt/tau_rst)
vx[m] = VDD-(VDD-x3)*e; vy[m] = VDD-(VDD-y3)*e
vp[m] = VDD-(VDD-p3)*e; vq[m] = VDD-(VDD-q3)*e

clk   = np.where((t >= t0) & (t <= t3), 1.0, 0.0)
ready = ((vx < 0.5*VDD) | (vy < 0.5*VDD)).astype(float)      # NAND(X,Y) high = decided
sr    = np.where(t < t3, 0.0, 1.0)                            # SR latch HOLDS the decision

figB, axes = plt.subplots(5, 1, figsize=(10, 8.4), sharex=True,
                          gridspec_kw={'height_ratios': [.5, 1.25, 1.25, .5, .5], 'hspace': .3})
figB.patch.set_facecolor(SURF)
ps = t*1e12
bands = [(0, t0, 'fase 1\nprecharge'), (t0, t1, 'fase 2\namplifikasi'),
         (t1, t2, 'fase 3\nnMOS XCP on'), (t2, t3, 'fase 4\nregenerasi'),
         (t3, tend, 'reset\n(X=Y=VDD lagi)')]

for k, ax in enumerate(axes):
    dress(ax)
    for i, (a, b, lab) in enumerate(bands):
        if i % 2 == 1: ax.axvspan(a*1e12, b*1e12, color='#f2f1ec', zorder=0, lw=0)
        if k == 0:
            ax.text((a+b)/2*1e12, 1.62, lab, ha='center', va='bottom',
                    fontsize=7.5, color=INK2, linespacing=1.3)
    ax.grid(axis='y', color=GRID, lw=.8, zorder=0); ax.set_axisbelow(True)

def ylab(ax, s): ax.set_ylabel(s, fontsize=9, color=INK, rotation=0, ha='right', va='center')

axes[0].plot(ps, clk, color=INK2, lw=2, zorder=3)
ylab(axes[0], 'CLK'); axes[0].set_ylim(-.3, 1.45)
axes[0].set_yticks([0, 1]); axes[0].set_yticklabels(['0', 'VDD'])

for ax, a, b, na, nb, thr, thrtxt in (
        (axes[1], vp, vq, 'V_P', 'V_Q', VDD-VTHN_eff, 'VDD - V_THN,eff = 1.03 V'),
        (axes[2], vx, vy, 'V_X', 'V_Y', VDD-VTHP,     'VDD - |V_THP| = 1.10 V')):
    ax.plot(ps, a, color=POS, lw=2, zorder=3, label=na)
    ax.plot(ps, b, color=NEG, lw=2, zorder=3, label=nb)
    ax.axhline(thr, color=INK2, lw=1, ls=(0, (4, 3)), zorder=2)
    ax.text(ps[-1], thr+.07, thrtxt, ha='right', fontsize=7.5, color=INK2)
    ylab(ax, f'{na} , {nb}\n[V]'); ax.set_ylim(-.15, 2.05)
    # direct labels where the two traces are furthest apart
    i = int(np.argmax(np.abs(a-b)))
    ax.annotate(na, xy=(ps[i], a[i]), xytext=(0, -11), textcoords='offset points',
                fontsize=8.5, color=POS, ha='center', fontweight='bold')
    ax.annotate(nb, xy=(ps[i], b[i]), xytext=(0, 6), textcoords='offset points',
                fontsize=8.5, color=NEG, ha='center', fontweight='bold')
    ax.legend(loc='center left', bbox_to_anchor=(1.005, .5), fontsize=8,
              frameon=False, labelcolor=INK2)

axes[3].plot(ps, ready, color=INK2, lw=2, zorder=3)
ylab(axes[3], 'ready\n= NAND(X,Y)'); axes[3].set_ylim(-.3, 1.45); axes[3].set_yticks([0, 1])
axes[3].annotate('kembali 0 saat reset:\nkeputusan hilang di sini',
                 xy=((t3+1.6*tau_rst)*1e12, 0.05), xytext=(30, 18), textcoords='offset points',
                 fontsize=7.5, color=INK2, ha='left', va='center',
                 arrowprops=dict(arrowstyle='->', color=MUTED, lw=1))

axes[4].plot(ps, sr, color=INK2, lw=2, zorder=3)
ylab(axes[4], 'SR latch Q\n(bit hasil)'); axes[4].set_ylim(-.3, 1.45); axes[4].set_yticks([0, 1])
axes[4].annotate('SR latch TAHAN nilainya\nselama reset  <- ini alasannya perlu',
                 xy=(tend*1e12*.97, 1), xytext=(-8, -30), textcoords='offset points',
                 fontsize=7.5, color=INK2, ha='right',
                 arrowprops=dict(arrowstyle='->', color=MUTED, lw=1))
axes[4].set_xlabel('waktu [ps]', fontsize=9, color=INK)

axes[0].set_title(f'StrongARM comparator — 4 fase   '
                  f'(keputusan {t_dec*1e12:.0f} ps dari jatah t_comp {t_comp*1e12:.0f} ps)\n'
                  f'selisih diferensial dilebih-lebihkan agar terlihat pada skala 1.8 V',
                  fontsize=11, color=INK, pad=30, loc='left')
figB.subplots_adjust(right=.87)
figB.savefig(OUT+'figB.png', dpi=140, facecolor=SURF, bbox_inches='tight')

print(f't_amp={t_amp*1e12:.0f}  t_ph3={t_ph3*1e12:.0f}  t_ph4={t_ph4*1e12:.0f}  '
      f't_dec={t_dec*1e12:.0f} ps   margin={100*(1-t_dec/t_comp):.1f}%')
print(f'end of ph3: X={x2:.3f} Y={y2:.3f} (target VDD-|VTHP|={VDD-VTHP:.3f})')
print(f'min V_P={vp.min():.3f}  max={vp.max():.3f}   min V_X={vx.min():.3f}')
