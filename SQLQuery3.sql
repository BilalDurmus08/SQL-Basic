Select Trim ('     bilal Durmus       ') --This function delete the front and back spaces from the inside word

Select * from Products Where ProductName like TRIM('  %Ch%') --We do not use Trim for the only our message.
Select * from Products Where Trim (ProductName) = 'Longlife Tofu' 															
--We can use that for the productName. I rearranged Longlife Tofu name with make spaces front of it

Select LTrim('     bilal Durmus       ') --This one going to cut spaces from left
Select RTrim('     bilal Durmus       ') --This one going to cut spaces from Right

Select REVERSE ('Bilal Durmus')

Select CHARINDEX ('i','Bilal Durmus',1) --Searching

Select p.ProductName from Products p Where CHARINDEX('a', ProductName, 1)>15 --After the where statement we should write inequality

Select REPLACE ('Bilal Durmus', ' ', '-' )

Select REPLACE(p.ProductName, ' ', '~') from Products p

Select SUBSTRING ('bilal    Durmus' , 5 , 9) 

Select ASCII('A') --It gives Ascii kod version
Select CHAR(65)   --It gives value of keyboard version

