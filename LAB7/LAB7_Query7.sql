use book_database;

create view view2 
as select b.book_id, b.title, bc.no_of_copies from book b,book_copies bc 
where b.book_id = bc.book_id;
select * from view2;