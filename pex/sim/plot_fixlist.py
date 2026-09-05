#!/usr/bin/env python3
"""Peta metal4 cdac dengan anotasi apa yang harus diperbaiki."""
import json, matplotlib
matplotlib.use('Agg'); import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle, Ellipse

SCR='/tmp/claude-1000/-foss-designs-ttsky26c-saradc/d5ce1e8d-2a8e-4891-ad1a-22293564808e/scratchpad/'
NM=json.load(open(SCR+'netmap.json')); IU=0.005
plt.rcParams.update({'figure.dpi':140,'font.size':8})
RED='#d92b2b'
CLR={'ctop':'#c0504d','b3a':'#1f4e79','b3b':'#4f8a10','b4a':'#e36c09','b2':'#7030a0'}
GREY='#d0d0d0'
def sel(n,l): return [tuple(r[1:]) for r in NM[n] if r[0]==l]

FIX=[('1',(-113.55,-1.65,-81.59, 1.97)),
     ('2',(-114.42, 5.84,-81.59, 9.46)),
     ('3',(-115.98,-9.13,-81.59,-6.46)),
     ('3',(-115.98,13.34,-81.59,16.00))]
ARRAY=(-111.53,-57.34,-81.92,56.62)

def draw(ax):
    for n in NM:
        if n=='vss': continue
        c=CLR.get(n,GREY); z=3 if n in CLR else 1
        for r in sel(n,'metal4'):
            ax.add_patch(Rectangle((r[0]*IU,r[1]*IU),(r[2]-r[0])*IU,(r[3]-r[1])*IU,
                         fc=c,ec='none',zorder=z,alpha=1 if n in CLR else .55))

fig,ax=plt.subplots(1,2,figsize=(13,7.4),gridspec_kw={'width_ratios':[1,1.7]})

# ---------------- kiri ----------------
draw(ax[0])
x0,y0,x1,y1=ARRAY; PAD=4.0
# pita tempat cincin dummy seharusnya berada -- digambar sebagai bingkai, bukan blok
for bx,by,bw,bh in ((x0-PAD,y0-PAD,(x1-x0)+2*PAD,PAD), (x0-PAD,y1,(x1-x0)+2*PAD,PAD),
                    (x0-PAD,y0,PAD,y1-y0), (x1,y0,PAD,y1-y0)):
    ax[0].add_patch(Rectangle((bx,by),bw,bh,fc=RED,ec=RED,lw=.8,hatch='///',
                    alpha=.30,zorder=6))
ax[0].add_patch(Rectangle((x0-PAD,y0-PAD),(x1-x0)+2*PAD,(y1-y0)+2*PAD,
                fc='none',ec=RED,lw=1.8,ls='--',zorder=7))
ax[0].annotate('FIX 4  cincin dummy\n(belum ada sama sekali)',
               xy=(x0-PAD/2,-30), xytext=(-133,-72), color=RED, fontsize=8.5,
               fontweight='bold', zorder=9,
               arrowprops=dict(arrowstyle='->',color=RED,lw=1.5))
ax[0].annotate('tulang punggung ctop', xy=(-80.6,-40), xytext=(-76,-62),
               color=CLR['ctop'], fontsize=8.5, fontweight='bold', zorder=9,
               ha='center',
               bbox=dict(fc='white',ec='none',alpha=.9,pad=1),
               arrowprops=dict(arrowstyle='->',color=CLR['ctop'],lw=1.5))
ax[0].add_patch(Rectangle((-118,-11.5),36.5,29,fc='none',ec=RED,lw=1.3,ls=':',zorder=7))
ax[0].annotate('FIX 1-3', xy=(-100,18), xytext=(-131,34), color=RED,
               fontsize=9, fontweight='bold', zorder=9,
               arrowprops=dict(arrowstyle='->',color=RED,lw=1.5))
ax[0].set_xlim(-136,-66); ax[0].set_ylim(-80,66)
ax[0].set_title('metal4 seluruh sel cdac',fontsize=9)

# ---------------- kanan ----------------
draw(ax[1])
for tag,(bx0,by0,bx1,by1) in FIX:
    cx,cy=(bx0+bx1)/2,(by0+by1)/2
    ax[1].add_patch(Ellipse((cx,cy),(bx1-bx0)*1.05,(by1-by0)*1.30,
                    fc='none',ec=RED,lw=2.2,zorder=8))
    ax[1].text(bx0-1.2, cy, tag, color=RED, fontsize=13, fontweight='bold',
               va='center', ha='right', zorder=9)
ax[1].set_xlim(-124,-77); ax[1].set_ylim(-13,25.5)
ax[1].set_title('zoom: tiga bus yang merusak INL',fontsize=9)
txt=('FIX 1   b3a  32.0 um sejajar anak tangga ctop, celah 0.61 um\n'
     'FIX 2   b3b  32.8 um sejajar anak tangga ctop, celah 0.61 um\n'
     '        keduanya -> bobot D4 salah +4.04 %, INL 0.76 LSB\n'
     '        aksi: geser kedua bus ke celah >= 2 um (spt b2, ungu)\n'
     '\n'
     'FIX 3   b4a  seluruh bus satu track lebih dekat ke ctop\n'
     '        daripada kembarannya b4b: 32.6 um2 di pita 1-2 um\n'
     '        lawan b4b 4.8 um2. Selisih kopling 2.20 fF.\n'
     '        aksi: samakan celahnya dengan b4b')
ax[1].text(0.012,0.985,txt,transform=ax[1].transAxes,fontsize=7.4,va='top',
           family='monospace',zorder=10,
           bbox=dict(fc='white',ec=RED,alpha=.95,boxstyle='round,pad=0.55'))
h=[Rectangle((0,0),1,1,fc=CLR[k]) for k in ('ctop','b3a','b3b','b4a','b2')]+\
  [Rectangle((0,0),1,1,fc=GREY,alpha=.55)]
ax[1].legend(h,['ctop (trunk)','b3a','b3b','b4a','b2 (sehat)','bit lain'],
             fontsize=7.2,loc='lower right',ncol=3)
for a in ax:
    a.set_aspect('equal'); a.set_xlabel('x [um]'); a.set_ylabel('y [um]'); a.grid(alpha=.22)
fig.tight_layout(); fig.savefig('/foss/designs/ttsky26c-saradc/pex/sim/img/05_fixlist.png')
print('-> pex/sim/img/05_fixlist.png')
