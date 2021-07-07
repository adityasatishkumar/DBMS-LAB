use studentenrollment;

select b.book_isbn, b.courseno, t.book_title from book_adoption b,text t 
where t.book_isbn = b.book_isbn 
and b.courseno in(select 
courseno from course 
where dept = 'CSE' 
and courseno in (select 
courseno from book_adoption 
group by courseno having count(*)>2));
