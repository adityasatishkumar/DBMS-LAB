use flightdb;

select ename from employees 
where salary <(select min(price) 
from flights 
where fromplace='Bangalore' and toplace='Frankfurt');