.echo ON
.headers ON

--Name: Malachi Evans
--File: lab04tsql.sql
--Date: January 22, 2019

--1. Create a report that shows all orders taken by Janet.
select o.orderid, o.orderdate, o.employeeid 
from orders o where o.employeeid = 
(select e.employeeid from employees e where firstname like 'Janet');

--2. Create a report that shows all products by name that are in the Seafood category.
 select p.productid, p.productname, p.categoryid 
 from products p where p.categoryid = 
 ( select c.categoryid from categories c where c.categoryname like 'seafood');

--3. Create a report that shows all orders taken by any employee whose last name begins with “A.”
select o.orderid, o.orderdate, o.employeeid 
from orders o where o.employeeid in 
(select e.employeeid from employees e where e.lastname like 'd%');

--4. Create a report that shows the product name and supplier id for all 
--products supplied by Exotic Liquids, Grandma Kelly’s Homestead, and Tokyo Traders.
select p.productname, p.supplierid from products p where p.supplierid in (select s.supplierid from suppliers s where s.companyname in ('Exotic Liquids','Grandma Kelly''s Homestead','Tokyo Traders'));

--5. Create a report that shows all products supplied from the Paciﬁc Ocean region.
select p.productid, p.productname, p.supplierid from products p where p.supplierid in(select s.supplierid from suppliers s where s.country in ('Japan','Australia','Singapore'));

--6. Create a report that shows all companies by name that sell products in CategoryID 8.
select s.companyname from suppliers s where s.supplierid in (select p.supplierid from products p where p.categoryid =  8);

--7. Create a report in two parts that shows the date of the last sale made by each employee, and the date of the ﬁrst sale made by each employee.
select o.employeeid, o.orderdate from orders o where o.orderdate = (select max(o2.orderdate) from orders o2 where o.employeeid = o2.employeeid) order by o.employeeid; 

select o.employeeid, o.orderdate from orders o where o.orderdate = (select min(o2.orderdate) from orders o2 where o.employeeid = o2.employeeid) order by o.employeeid; 

--8. What is the product number of our most expensive product? Create a report that shows the employee id and order id of every order for that product.
select o.employeeid, o.orderid from orders o where o.orderid in (select od2.orderid from order_details od2 where od2.productid = 38);

--9. Create a report showing the date of the last sale for every product, ordered by product id.
select distinct od.productid, o.orderid, max(o.orderdate) from order_details od inner join orders o on od.orderid = o.orderid  where od.orderid like '%' group by od.productid;

--10. Create a report that shows all companies by name that sell products in the Seafood category.

--11. Create a report that lists the ten most expensive products.

--12. Create a report that shows the date of the last order by all employees.

--13. Create a line item report that contains a line for each product in the order with the following columns: the order id, the product id, the unit price, the quantity sold, the line item price, and the percent of that line item constitutes of the total amount of the order.