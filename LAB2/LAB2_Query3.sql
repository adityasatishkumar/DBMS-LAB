use Bank;

select c.customer_name
from BankCustomer c
where exists(

select d.customer_name
from Depositer d, BankAccount ba
where d.accno=ba.accno 
and c.customer_name=d.customer_name 
and ba.branch_name='SBI_ResidencyRoad'
group by d.customer_name
having count(d.customer_name)>=2);

