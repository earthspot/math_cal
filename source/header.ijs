0 :0
Thursday 25 April 2019  01:57:47
-
CAL: scientific calculator engine
-serves multiple TABULA implementations
)

coclass 'cal'

CREATOR=: ;(4!:4<'zx'){4!:3''[zx=.''
onload_z_=: empty
RATIONALIZED_z_=: 1  NB. switch for inversion heuristics
EXTENDEDSINE_z_=: 0  NB. switch for extended trig verbs in _z_
smoutputINV_z_=: empty
NB. smoutputINV_z_=: smoutput&sw  NB. trace inversion heuristics

AABUILT=: '2019-04-25  02:31:26'
AABUILT=: '2019-04-25  02:32:39'
AABUILT=: '2019-04-25  02:37:26'
AABUILT=: '2019-04-25  02:49:03'
AABUILT=: '2019-04-25  23:08:11'