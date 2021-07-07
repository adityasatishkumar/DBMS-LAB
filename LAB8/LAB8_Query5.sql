use studentenrollment;

select distinct c.dept from course c
where c.dept in(select c.dept
from course c,book_adoption b,text t
where c.courseno=b.courseno
and t.book_isbn=b.book_isbn
and t.publisher='HALL INDIA')
and c.dept not in(select c.dept
from course c,book_adoption b,text t
where c.courseno=b.courseno
and t.book_isbn=b.book_isbn
and t.publisher != 'HALL INDIA');