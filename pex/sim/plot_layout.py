#!/usr/bin/env python3
"""Peta metal4: trunk ctop dan bus bit, dari geometri .mag (flood-fill konektivitas)."""
import json, re, numpy as np, matplotlib
matplotlib.use('Agg'); import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle

SCR='/tmp/claude-1000/-foss-designs-ttsky26c-saradc/d5ce1e8d-2a8e-4891-ad1a-22293564808e/scratchpad/'
NM=json.load(open(SCR+'netmap.json')); IU=0.005
plt.rcParams.update({'figure.dpi':130,'font.size':8})

def sel(n,l): return [tuple(r[1:]) for r in NM[n] if r[0]==l]
LBL={'ctop':(-16130,-23),'b2':(-22406,-122),'b3a':(-22456,342),'b3b':(-22505,185),
     'b4a':(-21960,-1360),'b4b':(-21108,-1492),'b5a':(-22881,-4778),
     'b5b':(-22831,-3250),'b6a':(-23575,-10775),'b6b':(-23458,-9280),
     'b0':(-22294,19),'b1':(-19943,1383)}
CLR={'ctop':'#c0504d','b3a':'#1f4e79','b3b':'#4f8a10','b4a':'#e36c09','b2':'#7030a0'}
GREY='#c8c8c8'

def draw(ax, nets, alpha=1.0):
    for n in NM:
        if n=='vss': continue
        c = CLR.get(n, GREY); z = 3 if n in CLR else 1
        for r in sel(n,'metal4'):
            ax.add_patch(Rectangle((r[0]*IU,r[1]*IU),(r[2]-r[0])*IU,(r[3]-r[1])*IU,
                         fc=c, ec='none', zorder=z, alpha=alpha if n in CLR else 0.55))

fig, ax = plt.subplots(1, 2, figsize=(11,6.2))

# --- kiri: seluruh sel
draw(ax[0], NM)
ax[0].set_xlim(-24050*IU, -15990*IU); ax[0].set_ylim(-11450*IU, 11850*IU)
ax[0].set_title('metal4 seluruh sel cdac\nmerah = ctop, abu = bus bit lain')
for n,(x,y) in LBL.items():
    ax[0].plot(x*IU, y*IU, 'k+', ms=5, zorder=5)
    ax[0].annotate(n, (x*IU,y*IU), fontsize=6, zorder=5,
                   xytext=(3,2), textcoords='offset points')

# --- kanan: zoom ke daerah b3a/b3b
b34 = sel('b3a','metal4')+sel('b3b','metal4')+sel('b4a','metal4')
x0=min(r[0] for r in b34)*IU; x1=max(r[2] for r in b34)*IU
y0=min(r[1] for r in b34)*IU; y1=max(r[3] for r in b34)*IU
mx=(x1-x0)*0.10; my=(y1-y0)*0.10
draw(ax[1], NM)
ax[1].set_xlim(x0-mx, x1+mx); ax[1].set_ylim(y0-my, y1+my)
ax[1].set_title('zoom: b3a (biru) dan b3b (hijau) berjalan\nberdampingan dengan trunk ctop (merah)')
for n in ('b3a','b3b','b4a','b2','ctop'):
    x,y=LBL[n]
    if x0-mx <= x*IU <= x1+mx and y0-my <= y*IU <= y1+my:
        ax[1].plot(x*IU,y*IU,'k+',ms=7,zorder=6)
        ax[1].annotate(n,(x*IU,y*IU),fontsize=8,fontweight='bold',zorder=6,
                       xytext=(4,3),textcoords='offset points')
for a in ax:
    a.set_aspect('equal'); a.set_xlabel('x [um]'); a.set_ylabel('y [um]')
    a.grid(alpha=.25)
h=[Rectangle((0,0),1,1,fc=CLR[k]) for k in ('ctop','b3a','b3b','b4a','b2')]+ \
  [Rectangle((0,0),1,1,fc=GREY,alpha=.55)]
ax[1].legend(h, ['ctop','b3a','b3b','b4a','b2','bit lain'], fontsize=7, loc='upper right')
fig.tight_layout(); fig.savefig('/foss/designs/ttsky26c-saradc/pex/sim/img/04_layout.png')
print('-> pex/sim/img/04_layout.png')
