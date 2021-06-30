use order_database;

select grade,COUNT(*)
from customer
group by grade
having grade > (select avg(grade)
from customer
where city = 'Bangalore');