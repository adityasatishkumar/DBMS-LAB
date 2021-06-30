use book_database;

select card_no 
from book_lending 
where year(date_out)>17 and month(date_out)<7 
group by card_no having count(card_no)>2;
