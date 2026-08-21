import numpy as np
from scipy.io import loadmat
from scipy.interpolate import RegularGridInterpolator as RGI
from scipy.optimize import brentq

LUT = '../../lookuptable/skywater130a/'
VDD = 1.8

def load(name):
    d = loadmat(LUT+name+'.mat', squeeze_me=True, struct_as_record=False)[name]
    return d

nf, nl, pf = load('nfet_01v8'), load('nfet_01v8_lvt'), load('pfet_01v8')

def axes(d):
    return (np.atleast_1d(d.L).astype(float), np.atleast_1d(d.VGS).astype(float),
            np.atleast_1d(d.VDS).astype(float), np.atleast_1d(d.VSB).astype(float))

def interp(d, field, L):
    """3-D interpolator over (VGS,VDS,VSB) at the L grid point nearest L, per um of W."""
    Ls, VGS, VDS, VSB = axes(d)
    iL = int(np.argmin(np.abs(Ls-L)))
    arr = np.asarray(getattr(d, field))[iL]            # [VGS, VDS, VSB]
    return RGI((VGS, VDS, VSB), arr/float(d.W), bounds_error=False, fill_value=None)

def avg_over_swing(d, field, L, VDS_fix, VSB_fix, lo=0.0, hi=VDD):
    """Average a cap over a rail-to-rail gate/node swing, per um."""
    _, VGS, _, _ = axes(d)
    f = interp(d, field, L)
    g = VGS[(VGS >= lo) & (VGS <= hi)]
    return float(np.mean(f(np.column_stack([g, np.full_like(g, VDS_fix), np.full_like(g, VSB_fix)]))))

# =====================================================================
# BAGIAN 1 -- C_PQ dan C_XY dari CDD / CSS / CGG asli
# =====================================================================
L_IN, L34, L56, L_SW = 0.20, 0.15, 0.15, 0.15
W1, W3, W5, Wsw = 5.00, 0.42, 0.42, 0.42
C_LOAD, C_RTE_PQ, C_RTE_XY = 3.0e-15, 1.0e-15, 1.5e-15

# per-um, dirata-rata sepanjang ayunan node yang bersangkutan
cdd_1 = avg_over_swing(nl, 'CDD', L_IN, VDS_fix=0.9, VSB_fix=0.2)     # drain M1 -> node P
css_3 = avg_over_swing(nf, 'CSS', L34,  VDS_fix=0.6, VSB_fix=0.4)     # source M3 -> node P
cdd_3 = avg_over_swing(nf, 'CDD', L34,  VDS_fix=0.6, VSB_fix=0.4)     # drain M3 -> node X
cgg_3 = avg_over_swing(nf, 'CGG', L34,  VDS_fix=0.6, VSB_fix=0.4)     # gate M4 -> node X
cdd_5 = avg_over_swing(pf, 'CDD', L56,  VDS_fix=0.6, VSB_fix=0.0)     # drain M5 -> node X
cgg_5 = avg_over_swing(pf, 'CGG', L56,  VDS_fix=0.6, VSB_fix=0.0)     # gate M6 -> node X
cdd_sw= avg_over_swing(pf, 'CDD', L_SW, VDS_fix=0.6, VSB_fix=0.0)     # drain switch

print('--- kontribusi per um (rata-rata sepanjang ayunan) ---')
for nm, v in [('CDD M1 (input)', cdd_1), ('CSS M3 (nXCP src)', css_3), ('CDD M3 (nXCP drn)', cdd_3),
              ('CGG M4 (nXCP gate)', cgg_3), ('CDD M5 (pXCP drn)', cdd_5),
              ('CGG M6 (pXCP gate)', cgg_5), ('CDD switch', cdd_sw)]:
    print(f'  {nm:22s} {v*1e15:7.3f} fF/um')

C_PQ_terms = [('M1 drain  (CDD)',  cdd_1*W1),
              ('M3 source (CSS)',  css_3*W3),
              ('S2 drain  (CDD)',  cdd_sw*Wsw),
              ('routing',          C_RTE_PQ)]
C_XY_terms = [('M3 drain  (CDD)',  cdd_3*W3),
              ('M4 gate   (CGG)',  cgg_3*W3),
              ('M5 drain  (CDD)',  cdd_5*W5),
              ('M6 gate   (CGG)',  cgg_5*W5),
              ('S3 drain  (CDD)',  cdd_sw*Wsw),
              ('buffer gate (C_LOAD)', C_LOAD),
              ('routing',          C_RTE_XY)]
C_PQ = sum(v for _, v in C_PQ_terms)
C_XY = sum(v for _, v in C_XY_terms)

print(f'\n--- C_PQ (node P atau Q), W1={W1} W3={W3} ---')
for n_, v in C_PQ_terms: print(f'  {n_:24s} {v*1e15:6.3f} fF   ({100*v/C_PQ:4.1f}%)')
print(f'  {"TOTAL":24s} {C_PQ*1e15:6.3f} fF')
print(f'\n--- C_XY (node X atau Y), W3={W3} W5={W5} ---')
for n_, v in C_XY_terms: print(f'  {n_:24s} {v*1e15:6.3f} fF   ({100*v/C_XY:4.1f}%)')
print(f'  {"TOTAL":24s} {C_XY*1e15:6.3f} fF')
print(f'\n  C_XY/C_PQ = {C_XY/C_PQ:.2f}   (taksiran lama: 5.64 / 6.30 fF)')

# =====================================================================
# BAGIAN 2 -- transient besar-sinyal: V_P, V_Q, V_X, V_Y satu per satu
# =====================================================================
id_in = interp(nl, 'ID', L_IN)
id_n  = interp(nf, 'ID', L34)
id_p  = interp(pf, 'ID', L56)
W_TAIL = 0.42

VSB_MAX = 0.4        # sumbu VSB tabel cuma [0, 0.2, 0.4] -> WAJIB di-clamp, jangan diekstrapolasi

def I(f, W, vgs, vds, vsb):
    vgs = np.clip(vgs, 0, VDD); vds = np.clip(vds, 0, VDD)
    vsb = np.clip(vsb, 0, VSB_MAX)
    return W*max(float(f([[vgs, vds, vsb]])[0]), 0.0)

# node tail punya kapasitansi sendiri -> ia state, bukan diselesaikan kuasi-statik
css_in  = avg_over_swing(nl, 'CSS', L_IN, VDS_fix=0.9, VSB_fix=0.2)
cdd_tl  = avg_over_swing(nf, 'CDD', L34,  VDS_fix=0.3, VSB_fix=0.0)
C_TAIL  = 2*css_in*W1 + cdd_tl*W_TAIL + 0.5e-15
print(f'\n  C_tail = {C_TAIL*1e15:.3f} fF  (2x CSS input + CDD tail + routing)')

def simulate(VCM=0.900, dVin=14.0625e-3/2, tstop=1500e-12, dt=0.02e-12):
    n = int(tstop/dt)
    t=np.zeros(n); vp=np.zeros(n); vq=np.zeros(n); vx=np.zeros(n); vy=np.zeros(n); vs=np.zeros(n)
    vp[0]=vq[0]=vx[0]=vy[0]=VDD
    vs[0]=0.0                                   # tail node mulai dari 0 (CLK baru naik)
    vip, vin = VCM+dVin/2, VCM-dVin/2
    for k in range(n-1):
        P,Q,X,Y,S = vp[k],vq[k],vx[k],vy[k],vs[k]
        it = I(id_n,  W_TAIL, VDD, S, 0.0)           # M7 tail
        i1 = I(id_in, W1, vip-S, P-S, S)             # M1: drain P
        i2 = I(id_in, W1, vin-S, Q-S, S)             # M2: drain Q
        i3 = I(id_n,  W3, Y-P,   X-P,  P)            # M3: gate Y, src P, drn X
        i4 = I(id_n,  W3, X-Q,   Y-Q,  Q)            # M4: gate X, src Q, drn Y
        i5 = I(id_p,  W5, VDD-Y, VDD-X, 0.0)         # M5: gate Y, src VDD, drn X
        i6 = I(id_p,  W5, VDD-X, VDD-Y, 0.0)         # M6: gate X, src VDD, drn Y
        vp[k+1] = P + dt*(i3 - i1)/C_PQ
        vq[k+1] = Q + dt*(i4 - i2)/C_PQ
        vx[k+1] = X + dt*(i5 - i3)/C_XY
        vy[k+1] = Y + dt*(i6 - i4)/C_XY
        vs[k+1] = S + dt*(i1 + i2 - it)/C_TAIL
        for a in (vp,vq,vx,vy): a[k+1] = min(max(a[k+1], 0.0), VDD)
        vs[k+1] = min(max(vs[k+1], 0.0), VDD)
        t[k+1] = t[k]+dt
        if (vx[k+1] < 0.02 and vy[k+1] > VDD-0.02) or (vy[k+1] < 0.02 and vx[k+1] > VDD-0.02):
            s = slice(0, k+2)
            return t[s], vp[s], vq[s], vx[s], vy[s], vs[s], True
    return t, vp, vq, vx, vy, vs, False

t, vp, vq, vx, vy, vs, done = simulate()
VTHN_eff, VTHP = 0.774, 0.696
cm_pq = (vp+vq)/2; cm_xy = (vx+vy)/2
i_a = int(np.argmax(cm_pq <= VDD-VTHN_eff)) if np.any(cm_pq <= VDD-VTHN_eff) else -1
i_b = int(np.argmax(cm_xy <= VDD-VTHP))     if np.any(cm_xy <= VDD-VTHP)     else -1

print(f'\n--- transient besar-sinyal (VCM=0.900 V, dVin={14.0625/2:.2f} mV) ---')
print(f'  selesai regenerasi : {done}   t_total = {t[-1]*1e12:.0f} ps')
if i_a>0: print(f'  akhir fase 2 (CM_PQ = {VDD-VTHN_eff:.3f} V) : t={t[i_a]*1e12:6.1f} ps  '
                f'V_P={vp[i_a]:.4f}  V_Q={vq[i_a]:.4f}  dV_PQ={abs(vp[i_a]-vq[i_a])*1e3:6.2f} mV')
if i_b>0: print(f'  akhir fase 3 (CM_XY = {VDD-VTHP:.3f} V) : t={t[i_b]*1e12:6.1f} ps  '
                f'V_X={vx[i_b]:.4f}  V_Y={vy[i_b]:.4f}  dV_XY={abs(vx[i_b]-vy[i_b])*1e3:6.2f} mV')
print(f'  akhir              : V_P={vp[-1]:.4f} V_Q={vq[-1]:.4f} V_X={vx[-1]:.4f} V_Y={vy[-1]:.4f}')
if i_a>0:
    print(f'\n  A_v terukur = dV_PQ/dV_in = {abs(vp[i_a]-vq[i_a])/(14.0625e-3/2):.2f}   (rumus eq(1): 12.0)')
