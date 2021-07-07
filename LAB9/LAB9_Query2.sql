use movie_database;
insert into actor values(100, "Leonardo DiCaprio", 'M');
insert into actor values(101, "Tom Hanks", 'M');
insert into actor values(102, "Tom Cruise", 'M');
insert into actor values(103, "Margot Robbie", 'F');
insert into actor values(104, "Jennifer Aniston", 'F');
insert into actor values(105, "Gal Gadot", 'F');
select * from actor;

insert into director values(200, 'Steven Spielberg', '1649503470');
insert into director values(201, 'Alfred Hitchcock', '7989467865');
insert into director values(202, 'James Cameron', '5218281077');
insert into director values(203, 'Kathryn Bigelow', '6157228013');
insert into director values(204, 'Niki Caro', '8976600547');
insert into director values(205, 'Sofia Coppola', '3949875040');
select * from director;

insert into movies values(300, 'Avatar', 2010, 'EN', 202);
insert into movies values(301, 'Dial M For Murder', 1990, 'EN', 201);
insert into movies values(302, 'Jurassic Park 1', 1999, 'EN', 200);
insert into movies values(303, 'Jurassic Park 2', 2017, 'EN', 200);
insert into movies values(304, 'Vertigo', 1986, 'EN', 201);
insert into movies values(305, 'Zero Dark Thirty', 2012, 'EN', 200);
select * from movies;

insert into moviecast values(101, 300, 'actor');
insert into moviecast values(105, 300, 'actress');
insert into moviecast values(102, 301, 'actor');
insert into moviecast values(103, 301, 'actress');
insert into moviecast values(100, 302, 'actor');
insert into moviecast values(104, 302, 'actress');
insert into moviecast values(100, 303, 'actor');
insert into moviecast values(104, 303, 'actress');
insert into moviecast values(102, 304, 'actor');
insert into moviecast values(105, 304, 'actress');
insert into moviecast values(103, 305, 'actress');
select * from moviecast;

insert into rating values(300, 4.5);
insert into rating values(301, 3);
insert into rating values(302, 4);
insert into rating values(303, 3.5);
insert into rating values(304, 5);
insert into rating values(305, 4);
select * from rating;