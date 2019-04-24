0 :0
Wednesday 24 April 2019  01:03:40
-
CAL: scientific calculator engine
-serves multiple TABULA implementations
)

coclass 'cal'

CREATOR=: ;(4!:4<'zx'){4!:3''[zx=.''
onload_z_=: empty
RATIONALIZED_z_=: 1  NB. switch for inversion heuristics
NB. smoutputINV_z_=: smoutput&sw  NB. trace inversion heuristics
