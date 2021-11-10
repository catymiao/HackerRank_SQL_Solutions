select max(total_salary), count(rank) 
from(
  select  months*salary AS total_salary, rank() over (order by months*salary desc) AS rank from Employee
  )a
where rank = 1
