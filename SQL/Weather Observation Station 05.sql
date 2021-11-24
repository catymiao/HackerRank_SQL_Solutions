/*
Enter your MySQL query here.
*/

(select city, length(city) 
from station 
order by length(city) asc , city asc limit 1) 
union
(select city, length(city) 
from station 
order by length(city) desc, city asc limit 1)

/*
Enter your MS SQL Server query here.
*/
select * from 
(select top 1 city, len(city) L
from station 
order by len(city) asc , city asc )a 
union  
select * from 
(select top 1 city, len(city) L
from station 
order by len(city) desc, city asc )b
