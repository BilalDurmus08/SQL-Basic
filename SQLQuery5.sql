
-- Insert Into     Update     Delete

Insert into Categories (CategoryName, Description)
values ('test Name', 'Test Description')

Insert Into [Order Details]
values (10248, 12, 18.00, 31, 0.2)

Update Categories set CategoryName = 'Test 3', Description = 'Description test 3'
Where CategoryID = 12

Delete from Categories where CategoryID = 12

-- Insert, Update, Delete with Join

Select * from CustomersWorkTable 

Insert into CustomersWorkTable (CustomerID1, CompanyName1, ContactName1)
Select c.CustomerID, c.CompanyName, c.ContactName from Customers c

Delete from CustomersWorkTable

Insert Into CustomersWorkTable 
Select c.CustomerID, c.CompanyName, c.ContactName from Customers c
where ContactName like '%on%'

-----

update Customers set CompanyName = CustomersWorkTable.CompanyName1 
from Customers inner join CustomersWorkTable
on Customers.CustomerID = CustomersWorkTable.CustomerID1

Select * from Customers 
 
 --

 Delete Customers --We saw a FK error. The reason of that error is there are key that connect to eachother
 from
 Customers inner join CustomersWorkTable
on Customers.CustomerID = CustomersWorkTable.CustomerID1
Where CustomersWorkTable.CompanyName1 like '%TEST%'


Select CustomerID, CompanyName, ContactName from Customers  
union								 --Union Key Brings only the different statement with the same table		 								  
Select * from CustomersWorkTable    --Also if we want to use union key colons number has to be equal







