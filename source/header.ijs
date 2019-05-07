0 :0
Wednesday 1 May 2019  06:04:06
-
CAL: scientific calculator engine
-serves multiple TABULA implementations
)

require 'format/zulu'
require 'plot'
require 'math/uu/handy4uu'

coclass 'cal'

PARENTDIR=: (zx i:'/'){.zx=.jpathsep>(4!:4<'zx'){4!:3''[zx=.''
onload_z_=: empty
RATIONALIZED_z_=: 1  NB. switch for inversion heuristics
EXTENDEDSINE_z_=: 0  NB. switch for extended trig verbs in _z_
smoutputINV_z_=: empty
NB. smoutputINV_z_=: smoutput&sw  NB. trace inversion heuristics

AABUILT=: '2019-05-07  09:39:15'
AABUILT=: '2019-05-07  10:12:10'