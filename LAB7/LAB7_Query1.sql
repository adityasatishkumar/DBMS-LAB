create database book_database;
use book_database;

create table publisher (
name varchar(30), 
phone int, 
address varchar(50),
primary key(name)); 

create table book (
book_id int, 
title varchar(50), 
pub_year varchar(10), 
publisher_name varchar(30),
primary key(book_id),
foreign key (publisher_name) references publisher (name) on delete cascade
);

create table book_authors (
author_name varchar(30), 
book_id int,
foreign key (book_id) references book (book_id) on delete cascade, 
primary key (book_id, author_name)); 

create table library_branch (
branch_id int, 
branch_name varchar(50), 
address varchar(50),
primary key(branch_id)); 

create table book_copies (
no_of_copies int, 
book_id int,
branch_id int,
foreign key (book_id) references book (book_id) on delete cascade, 
foreign key (branch_id) references library_branch (branch_id) on delete cascade, 
primary key (book_id, branch_id)); 

create table card (
card_no int,
primary key(card_no)); 

create table book_lending (
date_out date, 
due_date date, 
book_id int,
branch_id int,
card_no int,
foreign key (book_id) references book (book_id) on delete cascade, 
foreign key (branch_id) references library_branch (branch_id) on delete cascade, 
foreign key (card_no) references card (card_no) on delete cascade, 
primary key (book_id, branch_id, card_no));
