NB. math_cal repo - run
0 :0
Tuesday 7 May 2019  10:07:41
-
open BUILTFILE
)

cocurrent 'base'

NB.==================================
GIT=. '~Gitrcal'  NB. for DEV
GTB=. '~Gitrtab'  NB. for DEV
UUFILE_z_=: '~Gitruu/uu.ijs'
UULOC=. 'cal'
NB.==================================

BUILTFILE_z_=: GIT,'/cal.ijs'
NB. TESTFILE_z_=:  GIT,'/test/test.ijs'
TESTFILE_z_=: '~TestCAL/*.ijs'

NB. ---------------------------------------------------------

load UUFILE  NB. >>> RELOADS _uu_ FROM ITS LAST BUILTFILE

clear UULOC
load BUILTFILE	

smoutput sw'+++ run.ijs: BUILTFILE=[(BUILTFILE)] loaded ok'

loadall=: [: load&.> ([: pathof&.> <&jpath) ,&.> [: {."1 [: 1!:0 <&jpath
loadall TESTFILE
smoutput sw'--- run.ijs: TESTFILE=[(TESTFILE)] completed ok'

smoutput sw'+++ (GIT) run: load (GTB) latest build...'
load GTB,'/tabula.ijs'

onload_z_=: do  NB. restore for ad-hoc edits of /source/*.ijs