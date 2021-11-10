/*
Enter your query here.
*/

select * from (
select f1.x as f1_x, f1.y as f1_y from functions f1
inner join functions f2
on f1.x=f2.y
and f1.y=f2.x)a
where f1_x <= f1_y
and  f1_x <> f1_y  
union (
select f1.x as f1_x, f1.y as f1_y  from functions f1
where f1.x=  f1.y
group by f1_x,f1_y
having count(*)=2)
order by f1_x
