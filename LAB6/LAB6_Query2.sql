use order_database;

insert into salesman values('1000','John','Bangalore','25%'); 
insert into salesman values('2000','Ravi','Bangalore','20%'); 
insert into salesman values('3000','Kumar','Mysore','15%'); 
insert into salesman values('4000','Smith','Delhi','30%'); 
insert into salesman values('5000','Harsha','Hyderaba','15%'); 
select * from salesman;

insert into customer values('10','Preethi','Bangalore','100','1000');
insert into customer values('11','Vivek','Bangalore','300','1000');
insert into customer values('12','Bhaskar','Chennai','400','2000');
insert into customer values('13','Chethan','Bangalore','200','2000');
insert into customer values('14','Mamatha','Bangalore','400','3000');
select * from customer;

insert into orders values('50','5000','04-MAY-17','10','1000');
insert into orders values('51','450','20-JAN-17','10','2000');
insert into orders values('52','1000','24-FEB-17','13','2000');
insert into orders values('53','3500','13-APR-17','14','3000');
insert into orders values('54','550','09-MAR-17','12','2000');
select * from orders;