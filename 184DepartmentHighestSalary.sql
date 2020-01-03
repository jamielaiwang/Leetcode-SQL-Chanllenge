#First select maxmium salary in each department with corresponding Id. 
#Then inner join the result table with Employee to get the Employee name 
#who has maximum salary, DepartmentId and maximum salary. 
#Then join the result table with the Department table to get the Department Name 
#based on Department id.

Select D.Name as Department, T.Name as Employee, T.Salary as Salary
from Department as D, 
 (Select Name, Salary, E.DepartmentId from Employee E inner join
 (Select DepartmentId, max(Salary) as max from Employee Group by DepartmentID) as Tmp
 on E.DepartmentId=Tmp.DepartmentId where E.Salary=Tmp.max) as T
where D.Id=T.DepartmentId
