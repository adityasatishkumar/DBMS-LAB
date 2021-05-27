create database Bank;
use Bank;

create table Branch(
branch_name varchar(30),
branch_city varchar(30),
assests real, 
primary key(branch_name));

create table BankCustomer(
customer_name varchar(30),
customer_street varchar(30),
customer_city varchar(30), 
primary key(customer_name));

create table BankAccount(
accno int,
branch_name varchar(20),
balance real,
primary key(accno),
foreign key(branch_name) references Branch(branch_name));

create table Depositer(
customer_name varchar(20),
accno int,
primary key(customer_name,accno),
foreign key(customer_name) references BankCustomer(customer_name),
foreign key(accno) references BankAccount(accno)
);

create table Loan(
loan_number int,
branch_name varchar(20),
Amount real,
primary key(loan_number),
foreign key(branch_name) references Branch(branch_name) 
);