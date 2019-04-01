	NB. cal - inverC8.ijs
'==================== [cal] inverC8.ijs ===================='
NB. TABULA inversion -- inverC8 -- DIFFERENCE of 2 items
0 :0
Wednesday 24 October 2018  01:49:11
-
Based on inverC6, with - for %
)

coclass z=.'inverC8'
clear z

inversion=: inversionC_cal_ f.

fit=: 3 : 0
  NB. Conjecture:	(fwd X)= Y= X[1] / X[2]
dif=: Y0D - Y0  NB. the (scalar) difference turning: Y0 into: Y0D
select. amodel
case. 1 1 do. bwd=: 13 : 'X0 * 1,dif'  NB. bwd: Y --> X
case. 1 0 do. bwd=: 13 : 'X0 * 1,dif'  NB. bwd: Y --> X
case. 0 1 do. bwd=: 13 : 'X0 * 1,~-dif'  NB. bwd: Y --> X
case.     do. assert. 0
end.
i.0 0
)