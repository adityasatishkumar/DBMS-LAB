use book_database;

select b.book_id, b.title, b.pub_year, b.publisher_name, bc.no_of_copies, ba.author_name, lb.branch_name from 
book b, book_authors ba, library_branch lb, book_copies bc 

where b.book_id = ba.book_id and 
b.book_id = bc.book_id and 
lb.branch_id = bc.branch_id;
