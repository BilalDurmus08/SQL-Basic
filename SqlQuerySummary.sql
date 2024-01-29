--CommentLine 
Select ContactName Namee, Address addresss from Customers

Select * from Customers where City = 'London'

--Case Ýnsentitive                               If we add "-" it will be reverse
											--We can use asc and desc keyword.
Select * from Products where CategoryID = 1 or CategoryID = 6 order by -SupplierID
Select * from Products where CategoryID = 1 or CategoryID = 6 order by SupplierID desc

Select count(*) from Products where CategoryID = 2

Select CategoryID from Products group by CategoryID

Select CategoryID, count(*) from Products group by CategoryID having count (*) <50

Select Categories.CategoryID, Products.ProductName, Categories.CategoryName
from Products inner join Categories 
on Products.CategoryID = Categories.CategoryID

Select c.CustomerID, c.ContactName, o.OrderDate, o.OrderID from Customers c inner join Orders o 
on c.CustomerID = o.CustomerID