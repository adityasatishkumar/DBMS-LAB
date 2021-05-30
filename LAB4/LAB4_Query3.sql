use StudentFaculty;

select distinct S.sname from student S, class C, enrolled E, faculty F
where S.snum = E.snum 
and E.cname = C.cname 
and C.fid = F.fid 
and F.fname = 'Harish' and S.lvl = 'Jr';

select C.cname from class C
where C.room = 'R128'
or C.cname in (
select E.cname from enrolled E
group by E.cname
having COUNT(*) >= 5);

select distinct S.sname from student S
where S.snum in (
select E1.snum from enrolled E1, enrolled E2, class C1, class C2
where E1.snum = E2.snum 
and E1.cname <> E2.cname
and E1.cname = C1.cname
and E2.cname = C2.cname 
and C1.meetsat = C2.meetsat);

select f.fname,f.fid from faculty f
where f.fid in (
select fid from class
group by fid having COUNT(*)=(
select COUNT(distinct room) from class) );
            
select distinct F.fname from faculty F
where 5 > (
select COUNT(E.snum) from class C, enrolled E
where C.cname = E.cname
and C.fid = F.fid);

select distinct S.sname from student S
where S.snum not in (
select E.snum from enrolled E );

select S.age, S.lvl from Student S
group by S.age, S.lvl
having S.lvl in (
select S1.lvl from Student S1
where S1.age = S.age
group by S1.lvl, S1.age
having COUNT(*) >= all (select COUNT(*)
from Student S2
where s1.age = S2.age
group by S2.lvl, S2.age));