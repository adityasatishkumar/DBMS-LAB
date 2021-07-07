select S.*, SS.sem, SS.sec 
from student S, semsec SS, class C 
where S.usn = C.usn 
AND SS.ssid = C.ssid 
AND SS.sem = 4 AND SS.sec = 'C';
