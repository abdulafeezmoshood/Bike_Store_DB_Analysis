-- Scenario One --
Select *
FROM Sales.Customers

Select contactname, address, postalcode, city, country
From sales.Customers

-- Scenario 2: Identifying customer countries --
Select country
From sales.Customers
-- 91 rows returned for task 1 --

Select distinct country
From Sales.Customers
-- 21 rows returned for task 2 -- 
Select city, region
From Sales.Customers

Select distinct city, region
From Sales.Customers

-- Scenario 3: Human-Friendly column Titles and Debugging Errors -- 
Select C.Contactname, C.Contacttitle
From Sales.Customers AS C

Select contactname, contacttitle, companyname 
From Sales.Customers

Select contactname as 'Name', contacttitle as 'Title', companyname as 'Company Name'
From Sales.Customers;

Select P.productname AS 'Product Name'
From Production.Products AS P

Select city country FROM Sales.Customers;
-- The code will only return for the country because there is no comma in the query and the query will run from the sales.customers table and pick the first command next to it which is the country column
Select city, country FROM Sales.Customers;

-- Scenario 4: Product Categories and Campaign Identification
Select categoryid, productname FROM production.Products

Select categoryid AS 'Category ID', productname AS 'Product Name',
CASE categoryid
WHEN 1 THEN 'Beverages'
WHEN 2 THEN 'Condiments'
WHEN 3 THEN 'Confections'
WHEN 4 THEN 'Diary Products'
WHEN 5 THEN 'Grains/Cereals'
WHEN 6 THEN 'Meat/Poultry'
WHEN 7 THEN 'Produce'
WHEN 8 THEN 'Seafood'
ELSE 'Other'
END AS 'Category Name' 
FROM production.Products
ORDER BY [Category ID]

-- Scenario 4 Question 3 
Select categoryid AS 'Category ID', productname AS 'Product Name',
CASE categoryid
WHEN 1 THEN 'Beverages'
WHEN 2 THEN 'Condiments'
WHEN 3 THEN 'Confections'
WHEN 4 THEN 'Diary Products'
WHEN 5 THEN 'Grains/Cereals'
WHEN 6 THEN 'Meat/Poultry'
WHEN 7 THEN 'Produce'
WHEN 8 THEN 'Seafood'
ELSE 'Other'
END AS 'Category Name',
CASE 
WHEN categoryid IN (1,7,8) THEN 'Campaign Products'
ELSE 'Non-Compaign Products'
END AS 'Iscampaign'
FROM production.Products
ORDER BY [Category ID]

--Scenario 4 question 4
Select P.productname AS 'Product Name', C.categoryname AS 'Category Name'
FROM Production.Products AS P
INNER JOIN Production.Categories AS C
ON P.categoryid = C.categoryid
-- You have to join on the foreign keys categoryID to display the syntax because it's common to both tables
-- If there's a new category, it won't show because inner joins only match the row by row on the other table.


-- Scenario 5 
Select Customers.custid, contactname, orderid
FROM Sales.Customers
INNER JOIN Sales.Orders
ON Customers.custid = Orders.custid
-- The error was 'Ambiguous column name 'custid', because the query didn't state which of the table the custid is reading from customers or orders.



