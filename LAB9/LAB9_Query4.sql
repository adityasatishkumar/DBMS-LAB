select m.mov_title from movies m, moviecast mc 
where m.mov_id=mc.mov_id
and act_id in(
select act_id from moviecast 
group by act_id 
having count(act_id) > 1) 
group by m.mov_title having count(*) >= 2;
