select  N, 'Leaf' from BST 
where N  not in (select p from BST where p is not null)  -- this "where ... is not null" statement is essential 
union
select distinct N, 'Inner' from BST 
where N in (select distinct P from BST) 
and p is not null 
union 
select N, 'Root' from BST 
where p is null 
