.echo ON
.headers ON

--Name: Malachi Evans
--File: tsqlexercise03.sql
--Date: January 24, 2019

--1.
SELECT od1.orderid, od1.productid, od1.unitprice, od1.quantity, (od1.quantity * od1.unitprice) AS linetotal, (SELECT sum(od2.quantity * od2.unitprice) FROM order_details od2 WHERE od2.orderid = od1.orderid) AS ordertotal, (SELECT (od1.quantity * od1.unitprice) / sum(od3.quantity * od3.unitprice) * 100 FROM order_details od3 WHERE od3.orderid = od1.orderid) AS PctOfTotalOrder FROM order_details od1 LIMIT 25;



--2.  A
    SELECT DISTINCT c.city, c.region, c.postalcode, e.city, e.region, e.postalcode FROM  customers c INNER JOIN employees e ON c.city = e.city;    
    --B
    SELECT DISTINCT c.city, c.region, c.postalcode, e.city, e.region, e.postalcode FROM  customers c LEFT OUTER JOIN employees e ON c.city = e.city ORDER BY e.city;
    --C
    SELECT DISTINCT e.city,e.region, e.postalcode, c.city, c.region, c.postalcode FROM employees e LEFT JOIN customers c ON c.city = e.city ORDER BY c.city;

--3. 
SELECT * FROM (SELECT productid, productname, unitprice FROM products ORDER BY unitprice DESC) AS a LIMIT 10;

--4.
SELECT OrderID , CustomerID , EmployeeID , OrderDate ,RequiredDate FROM Orders AS O1 WHERE OrderDate = (SELECT MAX(OrderDate) FROM Orders AS O2 WHERE O2. EmployeeID = O1. EmployeeID); 

