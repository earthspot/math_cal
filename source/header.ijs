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
AABUILT=: '2019-06-05  05:12:03'
AABUILT=: '2019-06-05  16:28:48'
AABUILT=: '2019-06-05  16:42:08'
AABUILT=: '2019-06-05  17:22:13'
AABUILT=: '2019-06-05  17:39:38'
AABUILT=: '2019-06-05  18:18:19'
AABUILT=: '2019-06-05  19:00:37'
AABUILT=: '2019-06-05  21:32:52'
AABUILT=: '2019-06-05  22:24:09'
AABUILT=: '2019-06-05  23:44:54'
AABUILT=: '2019-06-06  00:17:36'
AABUILT=: '2019-06-06  00:34:59'
AABUILT=: '2019-06-11  02:18:49'
AABUILT=: '2019-06-11  02:37:07'
AABUILT=: '2019-06-11  02:40:28'