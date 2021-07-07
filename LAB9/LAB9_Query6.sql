select mov_title, max(rev_stars) 
from movies inner join rating using (mov_id) 
group by mov_title 
having max(rev_stars)>0 
order by mov_title;