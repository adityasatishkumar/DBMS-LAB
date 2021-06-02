use flightdb;

select ename from employees where eid in(
select eid from certified where aid in(
select aid from aircraft where aname = 'Boeing'));