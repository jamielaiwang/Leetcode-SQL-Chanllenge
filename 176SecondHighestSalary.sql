SELECT
IFNULL(
(SELECT distinct Salary
From Employee 
Order by Salary DESC
Limit 1, 1), NULL)
AS SecondHighestSalary;
