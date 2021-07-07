select SS.sem, SS.sec, S.gender, count(S.gender) as COUNT
from student S, semsec SS, class C 
where S.usn = C.usn AND SS.ssid = C.ssid 
group by SS.sem, SS.sec, S.gender 
ORDER by sem;