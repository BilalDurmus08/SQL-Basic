Select * from Customers

Select Distinct c.Country from Customers c order by c.Country --If we do not want to pick same object we can use distinct

Select c.Country, COUNT(*) as Quantity from Customers c group by c.Country

Select * from Customers

Select c.Country, c.City, COUNT(*) as Quantity from Customers c 
group by c.Country, c.City having COUNT(*) > 1  order by c.Country --having key good for the group by 

Select Country from Customers where Country <> 'Argentina'  -- <> this meaning is 'not'

Select * from Products p inner join Categories c --Inner join gives us that when we call the more than one table where
on p.CategoryID = c.CategoryID order by P.ProductName -- at least one properties same. We can call them with Inner join

Select p.ProductName, o.OrderDate as Date, od.UnitPrice * od.Quantity as Total 
from Products p inner join [Order Details] od
on p.ProductID = od.ProductID inner join Orders o 
on o.OrderID = od.OrderID order by p.ProductName, o.OrderDate

Select * from Products p left join [Order Details] od --Left join allow us if the on statement is not true
on p.ProductID = od.ProductID						--We can still bring the data	
where od.ProductID is Null							--If we want to learn equals Null, We use is statement

Select * from Customers c left join Orders o     --Here there are two unequal CustomerId line,
on c.CustomerID = o.CustomerID					--We learned from is Null statement							
where o.CustomerID is Null

Select * from Orders o right join Customers c    
on c.CustomerID = o.CustomerID												
where o.CustomerID is Null

Select * from Orders o full join Customers c    
on c.CustomerID = o.CustomerID												
where o.CustomerID is Null

--Workshop1

Select * from Orders o right Join Employees E
on o.EmployeeID = E.EmployeeID 
Where o.EmployeeID is Null Order By E.EmployeeID

--Workshop2

Select p.ProductName, Count(*) as total 
from Products p Inner Join [Order Details] od
on p.ProductID = od.ProductID
group by p.ProductName
order by p.ProductName

--Workshop3

Select ca.CategoryName, COUNT(*) as [Number Of CategoryName] 
from Categories ca Inner Join Products p
on ca.CategoryID = p.CategoryID
Inner join [Order Details] od
on od.ProductID = p.ProductID 
group by ca.CategoryName
order by ca.CategoryName

--Workshop4

Select e2.FirstName + ' ' + e2.LastName, e1.FirstName + ' ' + e1.LastName 
from Employees e1
right join Employees e2 on e1.EmployeeID = e2.ReportsTo
