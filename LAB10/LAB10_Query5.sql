create view STU_test1_marks_view as 
select test1, code
from marks 
where usn = '1RN13CS091';
select * from STU_test1_marks_view;
