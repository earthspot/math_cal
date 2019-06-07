SAVED=: '2019-06-07  02:39:55'
CAPT=: 'cost to capture atmospheric CO2'

TTIMAGE=: 0 define
cost to capture atmospheric CO2                              
    ┌   {1}       28.96 g/mol        molecular weight of air=
    │ ┌ {2}          80 ppm          CO2 increase since 1960 
    │ ├ {3}      44.009 g/mol        molecular weight of CO2=
    ├ └>{4}       0.004 g/mol        wt contribution of CO2  
    └>┌ {5}       0.012 %            % by wt of CO2          
      ├ {6}      5.2E18 kg           wt of atmosphere        
┌ ┌ ┌ └>{7}    6.322E11 t            wt of CO2 in atmosphere 
│ │ └>  {8}     185.933 Gelephant    ={7}                    
│ └>    {9}     464.833 wt.humanity  ={7}                    
├       {10}        100 USD/t        cost to capture CO2     
└>    ┌ {11}     63.217 TUSD         cost to restore 1960 CO2
      ├ {12}        1.1 TUSD         (est)USA deficit/FY2020 
      └>{13}      57.47 /            How many times bigger?  
)

TT=: cmx 0 define
tn                       tu          ts     td              tf                                                                           
molecular weight of air= g/mol       kg/mol  0  0 0 0 0 0 0                                                                              
CO2 increase since 1960  ppm         /       0  0 0 0 0 0 0                                                                              
molecular weight of CO2= g/mol       kg/mol  0  0 0 0 0 0 0                                                                              
wt contribution of CO2   g/mol       kg/mol  2  3 0 0 0 0 0 a*b: a(ppm),b(g/mol)                                                         
% by wt of CO2           %           /       4  1 0 0 0 0 0 a%b: a(g/mol),b(g/mol)                                                       
wt of atmosphere         kg          kg      0  0 0 0 0 0 0                                                                              
wt of CO2 in atmosphere  t           kg      5  6 0 0 0 0 0 a*b: a(/),b(kg)                                                              
={7}                     Gelephant   kg      7  0 0 0 0 0 0 a                                                                            
={7}                     wt.humanity kg      7  0 0 0 0 0 0 a                                                                            
cost to capture CO2      USD/t       eur/kg  0  0 0 0 0 0 0                                                                              
cost to restore 1960 CO2 TUSD        eur    10  7 0 0 0 0 0 a*b: a(USD/t),b(t)                                                           
(est)USA deficit/FY2020  TUSD        eur     0  0 0 0 0 0 0                                                                              
How many times bigger?   /           /      11 12 0 0 0 0 0 a%b: a(TUSD),b(TUSD)                                                         
)

vquan=: 0 724r25 80 44009r1000 44009r12500000 44009r3620000 5200000000000000000 114423400000000r181 572117r3077 2860585r6154 100 572117r9050 11r10 572117r9955

vfact=: 0 1r1000 1r1000000 1r1000 1r1000 1r100 1 1000 3400000000000 1360000000000 11r12500 880000000000 880000000000 1

vmodl=: 0 1 1 1 1 1 1 1 1 1 1 1 1 1

exe11=: 3 : 'a*b [a=. 10{y [b=. 7{y [ITEMNO=:11'
exe13=: 3 : 'a%b [a=. 11{y [b=. 12{y [ITEMNO=:13'
exe4=: 3 : 'a*b [a=. 2{y [b=. 3{y [ITEMNO=:4'
exe5=: 3 : 'a%b [a=. 4{y [b=. 1{y [ITEMNO=:5'
exe7=: 3 : 'a*b [a=. 5{y [b=. 6{y [ITEMNO=:7'
exe8=: 3 : 'a [a=. 7{y [ITEMNO=:8'
exe9=: 3 : 'a [a=. 7{y [ITEMNO=:9'