use northwind;
-- question 1
use northwind;
SELECT ProductID, ProductName,UnitPrice,CategoryName
FROM products
JOIN categories ON products.CategoryID = categories.CategoryID
ORDER BY CategoryName, ProductName;

-- question 2
use northwind;
SELECT ProductId, ProductName, UnitPrice, CompanyName
FROM products
JOIN suppliers ON products.SupplierID = suppliers.SupplierID
WHERE UnitPrice > 75;

-- question 3
SELECT ProductId, ProductName, UnitPrice, CategoryName, CompanyName
FROM products
JOIN categories ON products.CategoryID = categories.CategoryID
JOIN suppliers ON products.SupplierID = suppliers.SupplierID
ORDER BY ProductName;

-- question 4
use northwind;
SELECT ProductID, ProductName,UnitPrice,CategoryName
FROM products
JOIN categories ON products.CategoryID = categories.CategoryID
WHERE UnitPrice = (SELECT MAX(UnitPrice) from products)
ORDER BY CategoryName, ProductName;

-- question 5

