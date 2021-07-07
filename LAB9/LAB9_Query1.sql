create database movie_database;
use movie_database;

create table actor(
act_id int, 
act_name varchar(30), 
act_gender enum('M','F'), 
primary key(act_id));

create table director(
dir_id int, 
dir_name varchar(30), 
dir_phone varchar(10), 
primary key(dir_id));

create table movies(
mov_id int, 
mov_title varchar(30), 
mov_year year, 
mov_lang varchar(10), 
dir_id int, 
primary key(mov_id), 
foreign key(dir_id) references director(dir_id) on delete cascade);

create table moviecast(
act_id int, 
mov_id int, 
part varchar(20), 
primary key(act_id, mov_id), 
foreign key(act_id) references actor(act_id) on delete cascade, 
foreign key(mov_id) references movies(mov_id) on delete cascade);

create table rating(
mov_id int, 
rev_stars float, 
primary key(mov_id, rev_stars), 
foreign key(mov_id) references movies(mov_id) on delete cascade);
