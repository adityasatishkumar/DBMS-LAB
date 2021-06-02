use flightdb;

select avg(e.salary), c.aid from certified c, employees e 
where c.aid in(select aid 
from aircraft where cruisingrange>1000) 
and e.eid = c.eid group by c.aid;