.echo
.headers on

--Name:Malachi Evans
--File: lab02b.sql
--Date: January 14, 2019

--1. Who are our customers in North America?
select contactname, companyname, country from customers where country IN("canada", "USA", "Mexico");

--2. What orders were placed in April, 1998?
select orderid, orderdate from orders where orderdate like "1998%-04%";

--3. What sauces do we sell?
select productname, productid from products where productname like "%sauce%";

--4. You sell some kind of dried fruit that I liked very much. What is its name?
select productname, productid from products where productname like "%dried%";

--5.what employees ship products to Germany in December?
select employeeid, shippeddate, shipcountry from orders 
where shipcountry = "Germany" and shippeddate like "%-12-%";

--6.We have an issue with product 19. I need to know the total amount and the net amount of all orders for product 19 where the customer took a discount.
select orderid, productid,(unitprice * quantity) as total, (unitprice * quantity - discount) as net, discount from order_details where productid = 19 and discount >0;

--7.I need a list of employees by title, rst name, and last name, with the employee's position under their names, and a line separating each employee.
select titleofcourtesy || ' ' || firstname || ' ' || lastname || '
' || title || '
' from employees;

