## WHERE only < 3 persons' salaries in the Table E2 higher than this person in the Table E
Select D.Name as Department, E.Name as Employee, E.Salary as Salary
From Employee as E 
inner join Department as D
on E.DepartmentId=D.Id
where (select count(distinct(Salary))
       from Employee as E2
       where E2.DepartmentId=E.DepartmentId
       and E2.Salary>E.Salary)<3;