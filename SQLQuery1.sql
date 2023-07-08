Select * from Products

Select ProductName as Name, ProductID as ID from Products

Select p.CategoryID as Category, p.ProductName as name from Products p

Select p.ProductName as Name1, p.UnitPrice * p.UnitsInStock as TotalMoney from Products p

Select p.QuantityPerUnit + ' ~ ' + p.ProductName as Identity1 from Products p

Select * from Products Where UnitsInStock < 10 and UnitsOnOrder > 0  

Select * from Products Where not ProductName = 'Rogede sild' and not Discontinued = 0

Select * from Products Where not UnitsInStock < 50 or ReorderLevel = 25

Select * from Products order by ProductName desc

Select * from Products order by UnitPrice, ProductName 

Select * from Products Where ProductName like '%ch%'
