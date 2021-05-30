use Suppliers;

select p.pid, s.sname
from parts p, supplier s, catalog c
where c.pid = p.pid
and c.sid = s.sid
and c.cost = (select MAX(c1.cost)
from catalog c1
where c1.pid = p.pid);