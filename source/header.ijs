0 :0
Thursday 25 April 2019  23:35:48
-
CAL: scientific calculator engine
-serves multiple TABULA implementations
)

coclass 'cal'

PARENTDIR=: (zx i:'/'){.zx=.jpathsep>(4!:4<'zx'){4!:3''[zx=.''
onload_z_=: empty
RATIONALIZED_z_=: 1  NB. switch for inversion heuristics
EXTENDEDSINE_z_=: 0  NB. switch for extended trig verbs in _z_
smoutputINV_z_=: empty
NB. smoutputINV_z_=: smoutput&sw  NB. trace inversion heuristics

AABUILT=: '2019-04-29  01:07:35'