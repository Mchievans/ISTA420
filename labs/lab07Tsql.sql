--Name: Malachi Evans
--File: lab07.sql
--Date: February 04, 2019

use TSQLV4


--1.Write a query against the dbo.Orders table that computes for each
-- customer order, both a rank and a dense rank,
-- partitioned by custid, ordered by qty 

SELECT * FROM dbo.Orders; 

select custid, orderid, qty,
rank() Over(partition by custid order by qty) as rnk,
DENSE_RANK() over (partition by custid order by qty) as drnk
from dbo.Orders order by custid, qty; 

--3.Write a query against the dbo.Orders table that computes for each
-- customer order:
-- * the difference between the current order quantity
--   and the customer's previous order quantity
-- * the difference between the current order quantity
--   and the customer's next order quantity.

SELECT CUSTID, ORDERID, QTY,
QTY - LAG(QTY) OVER(PARTITION BY CUSTID ORDER BY orderdate,ORDERID) AS PREVDIFF,
QTY - lEAD(QTY) OVER(PARTITION BY CUSTID ORDER BY orderdate,ORDERID) as nextdiff
FROM dbo.ORDERS;