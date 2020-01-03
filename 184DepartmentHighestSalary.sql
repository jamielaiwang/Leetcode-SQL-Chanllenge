Select D.Name as Department, T.Name as Employee, T.Salary as Salary
from Department as D, 
 (Select Name, Salary, E.DepartmentId from Employee E inner join
 (Select DepartmentId, max(Salary) as max from Employee Group by DepartmentID) as Tmp
 on E.DepartmentId=Tmp.DepartmentId where E.Salary=Tmp.max) as T
where D.Id=T.DepartmentId
