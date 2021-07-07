use studentenrollment;

insert into student values('1PE11CS002','b','SR','19930924');
insert into student values('1PE11CS003','c','SR','19931127');
insert into student values('1PE11CS004','d','SR','19930413');
insert into student values('1PE11CS005','e','JR','19940824');
select * from student;

insert into course values(111,'OS','CSE');
insert into course values(112,'EC','CSE');
insert into course values(113,'SS','ISE');
insert into course values (114,'DBMS','CSE');
insert into course values (115,'SIGNALS','ECE');
select * from course;

insert into text values(10,'DATABASE SYSTEMS','PEARSON','Schield');
insert into text values(900,'OPERATING SYS','PEARSON','Leland');
insert into text values(901,'CIRCUITS','HALL INDIA','Bob');
insert into text values(902,'SYSTEM SOFTWARE','peterson','Jacob');
insert into text values(903,'SCHEDULING','PEARSON','Patil');
insert into text values(904,'DATABASE SYSTEMS','PEARSON','Jacob');
insert into text values(905,'DATABASE MANAGER','PEARSON','Bob');
insert into text values(906,'SIGNALS','HALL INDIA','Sumit');
select * from text;

insert into enroll values('1PE11CS002',114,5,100);
insert into enroll values('1PE11CS003',113,5,100);
insert into enroll values('1PE11CS004',111,5,100);
insert into enroll values('1PE11CS005',112,3,100);
select * from enroll;

insert into book_adoption values(111,5,900);
insert into book_adoption values(111,5,903);
insert into book_adoption values(111,5,904);
insert into book_adoption values(112,3,901);
insert into book_adoption values(113,3,10);
insert into book_adoption values(114,5,905);
insert into book_adoption values(113,5,902);
insert into book_adoption values(115,3,906);
select * from book_adoption;