use Suppliers;

select p.pname from parts p,catalog c,supplier s
where p.pid = c.pid and c.sid = s.sid and s.sname = 'Acme Widget' 
and not exists(
select * from catalog c1, supplier s1 
where p.pid = c1.pid 
and c1.sid = s1.sid 
and s1.sname <> 'Acme Widget');
