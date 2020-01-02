Select FirstName, LastName, City, State

from Person as p left join Address as a

on p.PersonID=a.PersonId;