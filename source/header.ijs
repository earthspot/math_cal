0 :0
Wednesday 15 May 2019  08:31:04
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

AABUILT=: '2019-05-25  07:52:45'
AABUILT=: '2019-05-25  07:56:30'
AABUILT=: '2019-05-25  17:37:12'
AABUILT=: '2019-05-25  18:00:45'
AABUILT=: '2019-05-25  18:03:17'
AABUILT=: '2019-05-25  18:08:06'
AABUILT=: '2019-05-25  18:08:42'