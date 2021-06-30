use order_database;

create view highsalesman as
select b.ord_date, a.salesman_id, a.name 
from salesman a, orders b
where a.salesman_id = b.salesman_id 
and b.purchase_amt=(select max(purchase_amt) 
from orders c 
where c.ord_date = b.ord_date);
select * from highsalesman;