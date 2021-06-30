use book_database;

create view view1 
as select pub_year from book; 
select * from view1;