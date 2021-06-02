use flightdb;

select distinct a.aname from aircraft a where a.aid in (
select c.aid from certified c, employees e 
where c.eid = e.eid and not exists(
select * from employees e1 where e1.eid=e.eid and e1.salary<80000));