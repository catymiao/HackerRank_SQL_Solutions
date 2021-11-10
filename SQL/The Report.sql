SELECT x.name, x.grade, x.marks FROM 

(SELECT NAME, grade, marks, 
 1 as Mainsort,
 row_number() over (order by GRADE DESC, NAME asc ) as RowNumber
 FROM STUDENTS, GRADES 
 WHERE MARKS BETWEEN MIN_MARK AND MAX_MARK
 AND grade >=8 

union 

 SELECT  Null AS name , grade, marks, 2 AS Mainsort
 , row_number() over (order by grade desc, marks) as RowNumber
 FROM  students, grades 
 WHERE MARKS BETWEEN MIN_MARK AND MAX_MARK
 AND grade < 8 
)x 

ORDER BY Mainsort, RowNumber
