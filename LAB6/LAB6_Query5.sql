use order_database;

select salesman.salesman_id, name, cust_name, commission 
from salesman, customer
where salesman.city = customer.city 
union 
select salesman_id, name, 'no customer', commission 
from salesman 
where not city = any(select city 
from customer);