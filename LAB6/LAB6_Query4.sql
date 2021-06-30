use order_database;

select Name,Salesman_id from salesman s
where 1<(select count(*)
from customer	
where Salesman_id=s.Salesman_id);