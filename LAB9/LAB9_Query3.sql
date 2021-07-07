select m.mov_title from movies m, director d 
where m.dir_id=d.dir_id 
and d.dir_name='Alfred Hitchcock';