SAVED=: '2019-06-05  22:29:22'
CAPT=: 'plot test using Function plotline'

TTIMAGE=: 0 define
plot test using Function plotline              
┌   ┌ ┌ {1}        6 rad  angle                
├ ┌ │ └>{2}   -0.279 /    sine                 
├ ├ └>  {3}    0.960 /    cosine               
├ └>    {4}    0.681 /    sin+cos              
└>      {5}       NO      plot {2}{3}{4} vs {1}
)

TT=: cmx 0 define
tn                    tu  ts  td      tf                                         
angle                 rad rad 0 0 0 0                                            
sine                  /   /   1 0 0 0 sin a ; a(rad) [/]                         
cosine                /   /   1 0 0 0 cos a ; a(rad) [/]                         
sin+cos               /   /   3 2 0 0 a+b: a(/),b(/)                             
plot {2}{3}{4} vs {1} !   *   1 2 3 4 plotline(X,U,V,W) : X(*),U(*),V(*),W(*)    
)

vquan=: 0 6 _78648470848139r281474976710656 4324222545170811r4503599627370496 3065847011600587r4503599627370496 0

vfact=: 0 1 1 1 1 1x

vmodl=: 0 1 1 1 1 1


TTINFO=: 0 define
uses function: plotline to specify the items to be plotted.

Can override the plotted items using tool: replot
)