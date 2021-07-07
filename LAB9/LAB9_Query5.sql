select a.act_name, m.mov_title, m.mov_year 
from actor a, movies m, moviecast mc 
where a.act_id=mc.act_id 
and mc.mov_id=m.mov_id 
and m.mov_year not between 2000 and 2015;