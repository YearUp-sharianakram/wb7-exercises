-- question 1

SELECT ProductName, UnitPrice
FROM northwind.products
WHERE UnitPrice = (SELECT MAX(UnitPrice) From northwind.products);

SELECT *
FROM northwind.orders;
-- question 2

SELECT OrderID, ShipName, ShipAddress
FROM northwind.Orders 
WHERE ShipVIA = (SELECT ShipperID FROM northwind.Shippers WHERE CompanyName = 'Federal Shipping');

-- question 3
