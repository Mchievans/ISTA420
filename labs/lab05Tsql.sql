--Name: Malachi Evans
--File: Lab05tsql.sql
-- Date: 28 January, 2019

--1. 
SELECT orderid, orderdate, custid, empid,
  DATEFROMPARTS(YEAR(orderdate), 12, 31) AS endofyear
FROM Sales.Orders
WHERE orderdate <>  DATEFROMPARTS(YEAR(orderdate), 12, 31);

--2.
select empid, Max(orderdate) as maxorderdate from sales.orders group by empid
select o.empid, o.orderid, o.custid, d.maxorderdate
 from sales.orders o join
 (select empid, Max(orderdate) as maxorderdate 
 from sales.orders group by empid) d 
 on o.orderdate = d.maxorderdate and o.empid = d.empid;

 with d as 
 (select empid, Max(orderdate) as maxorderdate 
 from sales.orders group by empid)
 select o.empid, o.orderid, o.custid, d.maxorderdate
 from sales.orders o join d on 
 o.empid = d.empid and
 o.orderdate = d.maxorderdate;

 --3.
 WITH OrdersRN AS
(
  SELECT orderid, orderdate, custid, empid,
    ROW_NUMBER() OVER(ORDER BY orderdate, orderid) AS rownum
  FROM Sales.Orders
)
SELECT * FROM OrdersRN WHERE rownum BETWEEN 11 AND 20;

--4.
select o.empid, year(o.orderdate) as orderyear, sum(od.qty) as qty
from sales.orders o join sales.OrderDetails od 
on o.orderid = od.orderid group by o.empid, year(o.orderdate)
order by o.empid; 

Drop view if exists sales.vemporders;
go
create view sales.vemporders as 
(select o.empid, year(o.orderdate) as orderyear, sum(od.qty) as qty
from sales.orders o join sales.OrderDetails od 
on o.orderid = od.orderid group by o.empid, year(o.orderdate))
go

select * from sales.vemporders order by empid, orderyear;


