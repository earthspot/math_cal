	NB. handy4cal.ijs
cocurrent 'z'

AZ=: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
CM=: ','
CO=: ':'
DT=: '.'
NB=: 'NB.'
QT=: ''''
SC=: ';'
SH=: '!'
ST=: '*'
UL=: '_'

aann=: 'aa00'&$: :(4 : 0)
	NB. Generate integer-suffixed id
	NB. eg pq012 from: 'pq000' aann 12
	NB. 0 can be replaced by 0-9
	NB. x is any valid (str) id
n=. -+/x e. '0123456789'  NB. n<0 -to count from end
(n}.x),n{.":100000000+y	  NB. re-fit suffix
)

and=: *.
andnot=: [ *. [: -. ]
any=: +./
append=: [ 1!:3 [: < ]
az=: 'abcdefghijklmnopqrstuvwxyz'
begins=: [ (] -: [ {.~ [: # ]) [: , ]
beginsWith=: [ (] -: [ {.~ [: # ]) [: , ]
brace=: 1 |. '}{' , ":
brack=: 1 |. '][' , ":
cmx=: [: > <;._2

countdown=: 3 : 0
	NB. Returns a countdown to control potential runaways.
	NB. countdown '?'  NB. query the o/s count
	NB. countdown 500	NB. set a limit
	NB. countdown''    NB. forces error after 500 calls
	NB. -Alternatively: take action on (0=countdown'')
if. y-:'?' do.
  COUNTDOWN_z_ NB. [ sess1 'COUNTDOWN=',":COUNTDOWN_z_
elseif. 0=#y do.
  if. 0=COUNTDOWN_z_ do. 'countdown over'(13!:8)199 end.
  COUNTDOWN_z_=: COUNTDOWN_z_-1
elseif. do.
  assert. 0< <.y
  COUNTDOWN_z_=: <.y
end.
)

cr=: [: 5!:5 boxopen

crex=: 0&$: :(4 : 0)
	NB. printable lit repn of (string)noun y
	NB. y is VALUE. For cr-replacement use: crx
	NB. x=1 reveals diagnostics otherwise hidden
NB. Need to deal with null case first
if. 0 e. $y do. 5!:6 <'y' return. end.
z=. y rplc QT ; QT,QT  NB. SHOULD leave non-null & non-byte intact
z=. q1 z rplc CRLF ; (q1',CRLF,') ; CR ; (q1',CR,') ; LF ; (q1',LF,') ; TAB ; (q1',TAB,')
NB. catch remaining non-print chars in: y
for_c. ~. y -. 32}. 127{. a. do.
  z=. z rplc c ; q1 CM, CM,~ paren (":a. i. c),'{a.'
end.
NB. eliminate: '',*  *,'' *,'',*
z=. z rplc (CM,QT,QT,CM) ; CM
if. (3{.z)-:QT,QT,CM do. z=. 3}.z end.
if. (_3{.z)-:CM,QT,QT do. z=. _3}.z end.
NB. specify ravel for vec len: 1
if. ($y)-:(,1) do. z=. CM,z end.
try. assert y -: ".z	NB. Does it convert back again?
catch.
  if. x do.
    smoutput '>>> crex: BAD lit repn: z --'
    smoutput z
    smoutput '>>> crex: --using instead: 5!:6 <''y'''
  end.
  5!:6 <'y' return.	NB. use built-in conversion instead
end.
z
)

crr=: > , '=: ' , cr
date=: 6!:0@('YYYY-MM-DD  hh:mm:ss'"_)
ddefine=: 1 : 'm&$: : (4 : 0)'
dec=: 16 #. 16 | '0123456789ABCDEF0123456789abcdef' i. ]

default=: 0&$: :(4 : 0)
	NB. pronoun (y) created with value (x)
	NB. UNLESS name (y) already in-use.
	NB. NOT compatible with the "misc.ijs" version
	NB. which has x<--> swapped.
	NB. Permits MYVAR=: 99 default 'MYVAR'
	NB. as well as:   99 default 'MYVAR'
if. 0<: 4!:0 <y do. y~ return. end.
(y)=:x
)

double=: +: :[:
dtlf=: #~ ([: +./\. (10{a.)&~:)
dyadic=: [: :
errno=: 13!:11
extx=: (0 < [: # ]) # ] , [ #~ [: -. '.' e. ]
filename=: 3 : '''.'' taketo 1 pick fpathname y'

from=: 4 : 0
  NB. extract x from anytype list y
z=. '<from:unset>'
try.
select. datatype y
  case. 'literal'	do.
	x=. {.x
	if. 'literal'-:datatype x do.
		z=. x lfrom ;:y
	else.	z=. x { ;:y
	end.
  case. 'boxed'	do.
	x=. {.x
	if. 'literal'-:datatype x do.
		z=. x lfrom y
	else.	z=. x{ y
	end.
 fcase. 'floating' do.
  case. 'integer'	do.	z=. x { y
  case.		do.	z=. x { y
end.
catch.
  ''
end.
>z
)

halve=: -: :[:
ifdefined=: 0 <: [: 4!:0 <
ii=: ] {. [: i. 10 #~ #
ijs=: '.ijs'&extx
isBool=: isBools *. isScalar
isBools=: [: all 0 1 e.~ ]
isBoxed=: 32 = 3!:0
isEmpty=: 0 = [: */ $
isFin=: isNum andnot isInf
isInf=: _ e. |
isLen2=: 2 = #
isLit=: 2 2048 e.~ 3!:0
isNo=: isNum *. isScalar
isNum=: 1 4 8 64 128 e.~ 3!:0
isScalar=: [: {. 0 = [: $ $
listnameswithprefix=: 0 1 2 3&$: :(] ((] -: ({.~ #))S:0 _ # [)~ a: , [ 4!:1~ [: {. ])
llog=: (1 { ":)@(,@([: ] ;: ,. [: ".&.> ;:))
log=: [: ": ;: ,. [: ".&.> ;:
max=: $:/ :>.
monadic=:  :[:
mt=: 0 e. $
nb=: ([: }:@; (<' ') ,.~ ,.)@:(":&.>)
not=: -.
nouns=: 3 : 'z ,. (datatype each v) ,. v=.".each z=.nl 0'
np=: [: <: 2 * -.
nxt=: newtempscript_j_
op=: 3 : 'opec ijs ''~proj/'',y'
or=: +.
ornot=: [ +. [: -. ]
pad=: ([: - [) {. [: ": 100000000 + ]
paren=: 1 |. ')(' , ":
pathof=: ] {.~ [: >: '/' i:~ ]
pc=: '%' ,~ [: ": [: <. 0.5 + 100 * 88350 %~ ]

q=: 3 : 0
QQQ_z_=: y	NB. cr needs a global!
QQ_z=. cr 'QQQ_z_'
erase 'QQQ_z_'
QQ_z
)

re=: 3 : 0
  NB. reloads a test word declared in this script
re_path=. '~/re.ijs'  NB. path of this script
select. y
case. 0     do. shell 'open ',re_path
case. 1     do. load re_path
end.
)

read=: [: 1!:1 <
sllog=: smoutput@llog
smcut3=: smcut3ucp
sq=: *: :[:
sqr=: %: :[:
sqrt=: %: :[:
square=: *: :[:
ssw=: smoutput&sw
st=: [: 1!:1 [: < tmp
sw=: ] rplc [: , (paren&.> ,. ":&".&.>)&smresolve
temp=: lasttemp`tmp@.(*@#@])

timeout=: 3 : 0
  NB. timeout'' ---force error when TIME exceeded.
  NB. timeout 2 ---init TIME to 2 seconds ahead of now
if. 0<#y do. TIME=: y+ 6!:1'' return. end.
assert. TIME > 6!:1''
)

tmp=: [: jpath '~temp/' , ijs@":
to=: [ + [: i. [: >: -~
ts=: 6!:2 , 7!:2@]
twice=: +: :[:
txt=: '.txt'&extx
wide=: uucp
write=: [ 1!:2 [: < ]
x2b=: [: (#~ ([: +./\. ' '&~:))&.> <"1
x2f=: }.@((<10{a.) ;@,. ])@([: (#~ ([: +./\. ' '&~:))&.> <"1)

startonload ''
