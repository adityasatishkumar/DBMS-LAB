create database order_database;
use order_database;

create table salesman(
Salesman_id int,
Name char(30), 
City varchar(30), 
Commission varchar(5),
primary key(Salesman_id));

create table customer(
Customer_id int, 
Cust_Name char(30), 
City varchar(30), 
Grade int, 
Salesman_id int,
primary key(Customer_id,Salesman_id),
foreign key(Salesman_id) references salesman(Salesman_id) on delete cascade);

create table orders(
Ord_No int,
Purchase_Amt int, 
Ord_Date varchar(20), 
Customer_id int, 
Salesman_id int,
primary key(Customer_id,Salesman_id),
foreign key(Customer_id) references customer(Customer_id) on delete cascade,
foreign key(Salesman_id) references salesman(Salesman_id) on delete cascade);
