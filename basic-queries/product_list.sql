SELECT TABLE_NAME 
FROM INFORMATION_SCHEMA.TABLES 
WHERE 
	TABLE_TYPE = 'BASE TABLE'
    AND
    TABLE_NAME = 'Products';
    
-- number 2

SELECT ProductID, ProductName, UnitPrice
FROM northwind.products;

-- number 3
SELECT ProductID, ProductName, UnitPrice
FROM northwind.products
ORDER BY UnitPrice ASC;

-- number 4
SELECT ProductID, ProductName, UnitPrice
FROM products
WHERE UnitPrice <= 7.50;

-- number 5
SELECT ProductID, ProductName, UnitPrice, UnitsInStock
FROM products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC;

-- number 6
SELECT ProductID, ProductName, UnitPrice, UnitsInStock
FROM products
ORDER BY UnitPrice DESC, ProductName ASC;

-- number 7
SELECT ProductID, ProductName, UnitsInStock, UnitsOnOrder
FROM Products
WHERE UnitsInStock = 0 AND UnitsOnOrder > 0
ORDER BY ProductName ASC;

-- number 8
-- Categories

-- number 9
SELECT *
FROM Categories;
-- seafood is Id number 8

-- number 10
SELECT *
FROM products
WHERE  CategoryID = 8;

-- number 11
SELECT FirstName, LastName
FROM Employees;

 -- number 12
 SELECT *
 FROM Employees
 WHERE Title LIKE '%Manager%';
 
 -- number 13
 SELECT DISTINCT Title
 From Employees;
 
 -- number 14
 SELECT *
 FROM Employees
 WHERE SALARY between 2000 and 2500;
 
 -- number 15
SELECT *
FROM suppliers;

-- number 16
SELECT *
FROM Products
WHERE SupplierID = 4;