# Write your MySQL query statement below
#DELETE FROM table_name
#WHERE [condition];
#Notice the WHERE clause in the DELETE statement. 
#The WHERE clause specifies which record(s) should be deleted. 
#If you omit the WHERE clause, all records in the table will be deleted.


delete from Person
where Id not in 
(select minID from 
 (Select min(Id) as minId 
 from Person
 group by Email) as P2)
