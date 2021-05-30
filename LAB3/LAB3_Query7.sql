use Suppliers;

select distinct c.sid from catalog c
where c.cost > (select avg (c1.cost)
from catalog c1
where c1.pid = c.pid );
