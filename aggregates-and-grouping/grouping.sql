SELECT *
FROM northwind.products;


-- How many suppliers are there?
SELECT COUNT(*) 
FROM northwind.suppliers;

-- what is the sum of all the employee's salaries?
SELECT SUM(SALARY) AS totalSalary
FROM northwind.employees;

-- What is the price of the cheapest item that Northwind sells?

SELECT min(UnitPrice) 
FROM northwind.products;

-- what is the average price of items that Northwind sells?
SELECT avg(UnitPrice)
FROM northwind.products;

-- what is the supplier ID of each supplier and the number of item in the category?
SELECT SupplierID, COUNT(*)
from northwind.products
GROUP BY SupplierID;


-- what is the category ID of each category and the average price of each item in the category?
SELECT CategoryID, avg(UnitPrice)
from northwind.products
GROUP BY CategoryID;

-- For suppliers that provide at least 5 items to Northwind, what is the supplier ID of each supplier and the number of items they supply?

SELECT SupplierID, COUNT(*)
from northwind.products
GROUP BY SupplierID
HAVING COUNT(*) >= 5;


-- question 9
SELECT ProductID, ProductName,(UnitPrice * UnitsInStock) AS InventoryValue
FROM northwind.Products
ORDER BY InventoryValue DESC, ProductName ASC;

