.echo ON
.headers ON

--Name: Malachi Evans
--File: tsqlexercise04.sql
--Date: February 03, 2019

--1. 
WITH USCUST AS (select customerid from customers where country like "USA") select O.customerid, count(O.orderid)as orderamount from orders O WHERE O.CUSTOMERID IN USCUST group by customerid ORDER BY ORDERAMOUNT DESC;
 
--2. 
With Germsup as (select s.supplierid, s.country, p.supplierid, p.productid as pid, p.productname from suppliers s  join products p on s.supplierid = p.supplierid where s.country like "Germany"), Germord as (select d.productid as pid , d.quantity , d.orderid , o.orderid , o.shipcountry  from orders o join order_details d on o.orderid = d.orderid  where o.shipcountry like ’Germany’) select distinct gp.productname, sum(go.quantity) as total from germsup gp join germord go on gp.pid = go.pid group by gp.productname order by total desc;

--3.
WITH EmployeeSubordinatesReport (EmployeeID , LastName , FirstName , NumberOfSubordinates , ReportsTo) AS ( SELECT  EmployeeID , LastName , FirstName , (SELECT COUNT(1) FROM Employees e2  WHERE e2 . ReportsTo = e . EmployeeID) as NumberOfSubordinates , ReportsTo  FROM Employees e)  SELECT Employee . LastName , Employee . FirstName , Employee . NumberOfSubordinates ,  Manager . LastName as ManagerLastName , Manager . FirstName as ManagerFirstName  FROM EmployeeSubordinatesReport Employee LEFT JOIN EmployeeSubordinatesReport Manager ON  Employee . ReportsTo = Manager . EmployeeID order by Employee . NumberOfSubordinates desc ;   

--4.
