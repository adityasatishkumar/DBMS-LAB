use Bank;

select distinct d.customer_name 
from Depositer d 
where exists(
select * from BankAccount ba 
where ba.accno=d.accno 
and exists(
select * from Branch b 
where b.branch_name = ba.branch_name 
and b.branch_city='Delhi'));