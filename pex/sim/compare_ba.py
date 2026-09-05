#!/usr/bin/env python3
"""Bandingkan CDAC sebelum vs sesudah revisi layout (cincin dummy + re-route)."""
import os, numpy as np, matplotlib
matplotlib.use('Agg'); import matplotlib.pyplot as plt
SIM='/foss/designs/ttsky26c-saradc/pex/sim'
plt.rcParams.update({'figure.dpi':130,'font.size':9,'axes.grid':True,'grid.alpha':.3,
                     'axes.spines.top':False,'axes.spines.right':False})
VREF=1.8
PAIR={7:('b6a','b6b'),6:('b5a','b5b'),5:('b4a','b4b'),4:('b3a','b3b'),
      3:('b2',),2:('b1',),1:('b0',)}
IDEAL={7:.5,6:.25,5:.125,4:.0625,3:.03125,2:.015625,1:1/128}
BITS=[7,6,5,4,3,2,1]

def load(fn, flav='pex'):
    W={}; ct=None
    for ln in open(os.path.join(SIM,fn)):
        t=ln.split()
        if t[:2]==['W',flav]: W[t[2]]=float(t[3])
        elif t[:2]==['CTOT',flav]: ct=1/(2*np.pi*1e6*float(t[2]))
    return W,ct

def metrics(W):
    Wb={k:sum(W[n] for n in PAIR[k]) for k in BITS}
    c=np.arange(128); s=np.zeros(128)
    for k in BITS: s+=Wb[k]*((c>>(k-1))&1)
    lev=2*VREF*s-VREF*sum(Wb.values())
    lsb=(lev[-1]-lev[0])/127
    inl=(lev-(lev[0]+lsb*np.arange(128)))/lsb*2
    dnl=np.diff(lev)/lsb-1
    return Wb,inl,dnl,lsb

BEF,ctB = load('res_w_before.txt')
AFT,ctA = load('res_w.txt')
WbB,inlB,dnlB,_ = metrics(BEF)
WbA,inlA,dnlA,_ = metrics(AFT)

print('%-24s %12s %12s %10s'%('','sebelum','sesudah','perubahan'))
def r(l,a,b,f='%.4f',d=None):
    print('%-24s %12s %12s %10s'%(l,f%a,f%b,(d or '%+.4f')%(b-a)))
r('C_total ctop [pF]', ctB*1e12, ctA*1e12)
r('max |INL| [LSB]', abs(inlB).max(), abs(inlA).max())
r('max |DNL| [LSB]', abs(dnlB).max(), abs(dnlA).max())
BC=['b6b','b5b','b4b','b3b','b2','b1','b0']
r('drift CM ctop [mV]', VREF*(sum(WbB.values())/2-sum(BEF[n] for n in BC))*1e3,
                        VREF*(sum(WbA.values())/2-sum(AFT[n] for n in BC))*1e3,'%+.2f')
print()
print('%-6s %10s %10s %10s'%('bit','sebelum %','sesudah %','perubahan'))
for k in BITS:
    a=(WbB[k]/IDEAL[k]-1)*100; b=(WbA[k]/IDEAL[k]-1)*100
    print('%-6s %10.3f %10.3f %10.3f %s'%('D%d'%k,a,b,b-a,'  <-- masih terbesar' if k==4 else ''))

fig,ax=plt.subplots(1,2,figsize=(11,3.8))
ax[0].plot(np.arange(128),inlB,color='#c0504d',lw=1.3,
           label='sebelum  max %.3f LSB'%abs(inlB).max())
ax[0].plot(np.arange(128),inlA,color='#1f4e79',lw=1.3,
           label='sesudah  max %.3f LSB'%abs(inlA).max())
ax[0].axhline(.5,color='k',ls=':',lw=.8); ax[0].axhline(-.5,color='k',ls=':',lw=.8)
ax[0].set_xlabel('kode DAC (7 bit)'); ax[0].set_ylabel('INL [LSB]')
ax[0].set_title('INL sebelum vs sesudah revisi'); ax[0].legend(fontsize=8)
x=np.arange(len(BITS)); w=.38
ax[1].bar(x-w/2,[(WbB[k]/IDEAL[k]-1)*100 for k in BITS],w,color='#c0504d',label='sebelum')
ax[1].bar(x+w/2,[(WbA[k]/IDEAL[k]-1)*100 for k in BITS],w,color='#1f4e79',label='sesudah')
ax[1].set_xticks(x); ax[1].set_xticklabels(['D%d'%k for k in BITS])
ax[1].axhline(0,color='k',lw=.8); ax[1].set_ylabel('simpangan bobot [%]')
ax[1].set_title('Bobot bit DAC'); ax[1].legend(fontsize=8)
fig.tight_layout(); fig.savefig(SIM+'/img/06_before_after.png')
print('\n-> pex/sim/img/06_before_after.png')
