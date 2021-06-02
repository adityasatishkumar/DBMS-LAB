use flightdb;

select aname from aircraft 
where cruisingrange > any(select distance 
from flights where fromplace='Bangalore' and toplace='Delhi');