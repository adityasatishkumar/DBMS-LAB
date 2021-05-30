use Suppliers;

select distinct p.pname 
from parts p,catalog c 
where p.pid = c.pid;