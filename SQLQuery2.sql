Select * from Products

Select * from Products Where ProductName like 'ch%'

Select * from Products Where ProductName like '%ch%'

Select * from Products Where UnitPrice between 10 and 50 order by UnitPrice

Select * from Products Where CategoryID in (1,2,3)

Select Count (*) as [Number Of Products] from Products

Select Count (Region) from Customers
Select * from Customers

Select MIN(UnitPrice) as minUnitPrice from Products
Select MAX(CategoryID) as maxUnitPrice from Products
Select Avg(UnitPrice) as avgUnitPrice from Products
Select SUM(UnitPrice * Quantity) as TotalEarnings from [Order Details]
Select RAND()  --Create random numbers from 0 to 1 

Select LEFT('Bilal Durmus', 2)
Select LEFT(ProductName, 3) from Products 

Select Right('Bilal Durmus', 2)
Select Right(ProductName, 3) from Products 

Select p.ProductName as NAME ,Len(p.ProductName) as Length from Products p    --Length

Select LOWER('bIlaL DUrmuS') as Lowerr
Select UPPER('bIlaL DUrmuS') as Upperr

