use flightdb;

select F.flno, F.departs from flights F
where F.flno in ((select F0.flno
from flights F0
where F0.fromplace = 'Bangalore' and F0.toplace = 'Kolkata'
and EXTRACT(hour from F0.arrives) < 18 )
UNION(select F0.flno
from flights F0, flights F1
where F0.fromplace = 'Bangalore' and F0.toplace <> 'Kolkata'
and F0.toplace = F1.fromplace and F1.toplace = 'Kolkata'
and F1.departs > F0.arrives
and EXTRACT(hour from F1.arrives) < 18)
UNION(select F0.flno
from flights F0, flights F1, flights F2
where F0.fromplace = 'Bangalore'
and F0.toplace = F1.fromplace
and F1.toplace = F2.fromplace
and F2.toplace = 'Kolkata'
and F0.toplace <> 'Kolkata'
and F1.toplace <> 'Kolkata'
and F1.departs > F0.arrives
and F2.departs > F1.arrives
and EXTRACT(hour from F2.arrives) < 18))