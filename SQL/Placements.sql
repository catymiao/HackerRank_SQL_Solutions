/*
MySQL
*/
select Name from (
SELECT s.Name, p1.salary AS StudentSalary, p2.Salary AS FriendSalary
FROM Students s
INNER JOIN Friends f
on s.ID= f.ID
INNER JOIN Packages p1
on s.ID = P1.ID 
INNER JOIN Packages p2
on f.Friend_ID = p2.ID)a 
Where FriendSalary > StudentSalary
ORDER BY FriendSalary

/*newly defined variable cannot be in the same query as the where statement. In this case "FriendSalary" (StudentSalary can be used here)
