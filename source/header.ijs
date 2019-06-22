0 :0
Saturday 22 June 2019  11:41:58
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
smoutputINV_z_=: empty  NB. DO NOT trace inversion heuristics
NB. smoutputINV_z_=: smoutput&sw  NB. trace inversion heuristics

AABUILT=: '2019-06-22  11:42:49'
AABUILT=: '2019-06-22  11:44:14'