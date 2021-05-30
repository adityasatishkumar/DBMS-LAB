use Suppliers;

select s.sname from supplier s 
where not exists(
select p.pid from parts p 
where p.color = 'Red' 
and not exists (
select c.sid from catalog c 
where c.sid = s.sid 
and c.pid = p.pid));
