use book_database;

insert into publisher values ('mcgraw-hill', 99890, 'bangalore'); 
insert into publisher values ('pearson', 98890, 'newdelhi'); 
insert into publisher values ('random house', 74556, 'hyderabad'); 
insert into publisher values ('hachette livre', 897086, 'chenai'); 
insert into publisher values ('grupo planeta', 77561, 'bangalore'); 
select * from publisher;

insert into book values (1,'dbms','01-2017', 'mcgraw-hill'); 
insert into book values (2,'adbms','06-2016', 'mcgraw-hill'); 
insert into book values (3,'cn','09-2016', 'pearson'); 
insert into book values (4,'cg','09-2015', 'grupo planeta'); 
insert into book values (5,'os','05-2016', 'pearson'); 
select * from book;

insert into book_authors values ('navathe', 1); 
insert into book_authors values ('navathe', 2); 
insert into book_authors values ('tanenbaum', 3); 
insert into book_authors values ('edward angel', 4); 
insert into book_authors values ('galvin', 5); 
select * from book_authors;

insert into library_branch values (10,'rr nagar','bangalore'); 
insert into library_branch values (11,'rnsit','bangalore'); 
insert into library_branch values (12,'rajaji nagar', 'bangalore'); 
insert into library_branch values (13,'nitte','mangalore'); 
insert into library_branch values (14,'manipal','udupi'); 
select * from library_branch;

insert into book_copies values (10, 1, 10); 
insert into book_copies values (5, 1, 11); 
insert into book_copies values (2, 2, 12); 
insert into book_copies values (5, 2, 13); 
insert into book_copies values (7, 3, 14); 
insert into book_copies values (1, 5, 10); 
insert into book_copies values (3, 4, 11); 
select * from book_copies;

insert into card values (100); 
insert into card values (101); 
insert into card values (102); 
insert into card values (103); 
insert into card values (104);
select * from card;

insert into book_lending values ('01-01-17','01-06-17', 1, 10, 101); 
insert into book_lending values ('11-01-17','11-03-17', 3, 14, 101); 
insert into book_lending values ('21-02-17','21-04-17', 2, 13, 101); 
insert into book_lending values ('15-03-17','15-07-17', 4, 11, 101); 
insert into book_lending values ('12-08-17','12-08-17', 1, 11, 104); 
select * from book_lending;