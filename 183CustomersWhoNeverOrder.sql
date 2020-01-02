Select C.Name as Customers
From Customers as C left join Orders as O
on C.Id=O.CustomerId
where O.CustomerID is null;