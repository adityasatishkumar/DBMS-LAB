use Bank;

insert into Branch values('SBI_Chamrajpet','Bangalore',50000);
insert into Branch values('SBI_ResidencyRoad','Bangalore',10000);
insert into Branch values('SBI_ShivajiRoad','Bangalore',20000);
insert into Branch values('SBI_ParliamentRoad','Delhi',10000);
insert into Branch values('SBI_Jantarmantar','Delhi',20000);
select *from Branch;


insert into Loan values(2,'SBI_ResidencyRoad',2000);
insert into Loan values(1,'SBI_Chamrajpet',1000);
insert into Loan values(3,'SBI_ShivajiRoad',3000);
insert into Loan values(4,'SBI_ParliamentRoad',4000);
insert into Loan values(5,'SBI_Jantarmantar',3000);
select *from Loan;

insert into BankAccount values(1,'SBI_Chamrajpet',2000);
insert into BankAccount values(2,'SBI_ResidencyRoad',5000);
insert into BankAccount values(3,'SBI_ShivajiRoad',6000);
insert into BankAccount values(4,'SBI_ParliamentRoad',9000);
insert into BankAccount values(5,'SBI_Jantarmantar',8000);
insert into BankAccount values(6, 'SBI_ShivajiRoad', 4000);
insert into BankAccount values(8, 'SBI_ResidencyRoad', 4000);
insert into BankAccount values(9, 'SBI_ParliamentRoad', 3000);
insert into BankAccount values(10, 'SBI_ResidencyRoad', 5000);
insert into BankAccount values(11, 'SBI_Jantarmantar', 2000);
select *from BankAccount;

insert into BankCustomer values ('Avinash', 'Bull_Temple_Road', 'Bangalore');
insert into BankCustomer values ('Dinesh', 'Bannergatta_Road', 'Bangalore');
insert into BankCustomer values ('Mohan', 'National_College_Road', 'Bangalore');
insert into BankCustomer values ('Nikhil', 'Akbar_Road', 'Delhi');
insert into BankCustomer values ('Ravi', 'Prithviraj_Road', 'Delhi');
select *from BankCustomer;


insert into Depositer values('Avinash', 1);
insert into Depositer values('Dinesh', 2);
insert into Depositer values('Nikhil', 4);
insert into Depositer values('Ravi', 5);
insert into Depositer values('Avinash', 8);
insert into Depositer values('Nikhil', 9);
insert into Depositer values('Dinesh', 10);
insert into Depositer values('Nikhil', 11);
select *from Depositer;
