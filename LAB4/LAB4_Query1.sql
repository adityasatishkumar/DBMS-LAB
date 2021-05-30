create database StudentFaculty;
use StudentFaculty;

create table student(
snum int, 
sname varchar(10), 
major varchar(2), 
lvl varchar(2), 
age int,
primary key (snum));

create table faculty(
fid int, 
fname varchar(20), 
deptid int,
primary key(fid));

create table class(
cname varchar(20), 
meetsat timestamp, 
room varchar(10), 
fid int,
primary key (cname),
foreign key(fid) references faculty(fid));

create table enrolled(
snum int, 
cname varchar(20),
primary key(snum,cname),
foreign key(snum) references student(snum),
foreign key(cname) references class(cname));	