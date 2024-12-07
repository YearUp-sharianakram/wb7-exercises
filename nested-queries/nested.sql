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

SELECT *
FROM northwind.`order details`
WHERE ProductID = (SELECT ProductID 
					FROM northwind.products
                    WHERE ProductName = "Sasquatch Ale");
			
SELECT * 
FROM northwind.orders;
-- question 4

SELECT ContactName
FROM northwind.customers
WHERE CustomerID = (SELECT CustomerID
					FROM northwind.orders
                    WHERE OrderID = 10266);
                    
-- question 5
SELECT FirstName,LastName,Title,Salary
FROM northwind.employees
WHERE EmployeeID = (SELECT EmployeeID
					FROM northwind.orders
                    WHERE OrderID = 10266);

