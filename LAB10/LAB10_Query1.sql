create database college_database;
use college_database;

create table student(
usn varchar(30),
sname varchar(30),
address varchar(30),
phone real,
gender varchar(30),
primary key(usn));
  
create table semsec(   
ssid varchar(30), 
sem int, 
sec varchar(30),
primary key(ssid));
  
create table class(
usn varchar(30),
ssid varchar(30),
primary key(usn,ssid),
foreign key(usn) references student(usn),
foreign key(ssid) references semsec(ssid));
  
 create table subject(
code varchar(30),
title varchar(30),
sem int,
credits int,
primary key(code)); 

create table marks(
usn varchar(30),code varchar(30),
ssid varchar(30), 
test1 real, 
test2 real, 
test3 real, 
final real,
primary key(usn,code,ssid),
foreign key(usn) references student(usn),
foreign key(code) references subject(code),
foreign key(ssid) references semsec(ssid));
