use flightdb;

select max(a.cruisingrange), c.eid from certified c, aircraft a 
where c.aid = a.aid group by c.eid having count(c.eid)>3;