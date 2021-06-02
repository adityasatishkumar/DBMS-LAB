create database flightdb;
use flightdb;

create table flights(
flno int,
fromplace varchar(15),
toplace varchar(15),
distance int,
departs datetime,
arrives datetime,
price int,
primary key (flno));

create table aircraft(
aid int,
aname varchar(15),
cruisingrange int,
primary key (aid));

create table employees (
eid int,
ename varchar(15),
salary int,
primary key (eid));

create table certified (
eid int,
aid int,
foreign key (eid) references employees(eid),
foreign key (aid) references aircraft(aid));