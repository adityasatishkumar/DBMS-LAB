create database Suppliers;
use Suppliers;

create table supplier(
sid int,
sname char(30),
city char(30));

create table catalog(
sid int,
pid int,
cost int);

create table parts(
pid int,
pname varchar(15),
color varchar(10),
primary key (pid));