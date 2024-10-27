## Bike_Store_DB_Analysis
 This is a business analysis for a bike store, to extract meaningful insights from the corporate database.
## Scenario Overview:
You are working as a business analyst for a bike store, and your task is to extract meaningful insights from the corporate database. The project involves several smaller tasks aimed at building foundational SQL skills and solving business problems. 
The marketing team, sales department, and management rely on your analysis to drive business campaigns and improve customer engagement.
## Tasks and Scenarios:
# Scenario 1: Overview of Customers Table
The marketing team has requested customer information to send invitations for a new
campaign.

# Scenario 2: Identifying Customer Countries

The marketing team needs a list of countries where customers are located to tailor campaign
strategies.
1. Write a query to return only the country column from the Sales.Customers table.
2. Modify the query above to return only distinct country names.
3. How many rows are returned by the query in Task 1?
4. How many rows are returned by the query in Task 2?
5. When do the following queries return the same result?
  SELECT city, region FROM Sales.Customers;
  SELECT DISTINCT city, region FROM Sales.Customers;
6. Is the DISTINCT clause applied to all specified columns or just the first column? Explain your answer

# Scenario 3: Human-Friendly Column Titles and Debugging Errors

The marketing department needs reports with customer-friendly column titles.
1. Write a query that selects the contactname and contacttitle columns
   from Sales.Customers using the alias C for the table and prefix these columns accordingly.
2. Write a query that returns the contactname, contacttitle, and companyname columns
from Sales.Customers with the following aliases:
Name (for contactname)
Title (for contacttitle)
Company Name (for companyname)
3. Write a query to select the productname from Production.Products with:
Alias for the table: P
Alias for the column: Product Name
4. Debugging Task:
A developer wrote the following query:
SELECT city country FROM Sales.Customers;
Identify and correct the error in the query so it returns two columns. Explain why the original query failed.




