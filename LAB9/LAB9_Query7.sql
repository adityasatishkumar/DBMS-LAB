update rating set rev_stars = 5 
where mov_id in (
select mov_id from movies 
where dir_id in(
select dir_id from director 
where dir_name='Steven Spielberg'));
select * from rating;