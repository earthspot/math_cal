smoutput(jpathsep>(4!:4<'zx'){4!:3'');~zx=.'cal expandedPath component test'
cocurrent 'cal'
Q=: 3 : 'q1234__=: y'
A=: 3 : 'assert. y-:q1234__ [qqq__=: y;q1234__'

start_cal_ '$'	NB. start with factory SAMPLE

Q expandedPath '$'
A '/users/ianclark/documents/github/math_cal/SAMPLE.tbx'
Q expandedPath ,'$'
A '/users/ianclark/documents/github/math_cal/SAMPLE.tbx'
NB. The next one will vary by whether there's a saved SAMPLE
NB. Q expandedPath '$$'
NB. A '/users/ianclark/tabula-user/SAMPLE.tbx'
Q expandedPath '$1'
A '/users/ianclark/documents/github/math_cal/SAMPLE1.tbx'
Q expandedPath '1'
A z=.'/users/ianclark/documents/github/math_cal/SAMPLE1.tbx'
Q expandedPath ,'1'
A z
Q expandedPath 1
A z
Q expandedPath 0
A '/users/ianclark/documents/github/math_cal/SAMPLE0.tbx'
Q expandedPath '~/tabula-user/SAMPLE9.ijs'
A '/users/ianclark/tabula-user/SAMPLE9.ijs'
Q expandedPath '~Gitrcal/SAMPLE1.tbx'
A z
Q expandedPath '~Gitrcal/SAMPLE1.ijs'
A '/users/ianclark/documents/github/math_cal/SAMPLE1.ijs'

