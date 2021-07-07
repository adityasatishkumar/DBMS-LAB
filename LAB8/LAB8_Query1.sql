create database StudentEnrollment;
use STudentEnrollment;

create table student(
regno varchar(20),
name varchar(30),
major varchar(20),
bdate date,
primary key (regno) 
);

create table course(
courseno int,
cname varchar(20),
dept varchar(20),
primary key (courseno)
);
   
create table enroll(
regno varchar(20),
courseno int,
sem int,
marks int,
primary key (regno,courseno),
foreign key (regno) references student (regno),
foreign key (courseno) references course (courseno) 
);

create table text(
book_isbn int,
book_title varchar(30),
publisher varchar(30),
author varchar(30),
primary key (book_isbn) 
);

create table book_adoption(
courseno int,
sem int,
book_isbn int,
primary key (courseno,book_isbn),
foreign key (courseno) references course (courseno),
foreign key (book_isbn) references text(book_isbn) 
);






