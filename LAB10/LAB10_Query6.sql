select S.usn, S.sname, S.address, S.phone, S.gender,(CASE
when IA.final between 17 and 20 then 'outstanding'
when IA.final between 12 and 16 then 'average'
else 'weak' end) AS CAT
from student S, semsec SS, marks IA, subject sub
where S.usn = IA.usn 
AND SS.ssid = IA.ssid AND sub.code = IA.code AND sub.sem = 8;