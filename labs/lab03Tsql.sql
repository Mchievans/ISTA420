.echo ON
.headers ON

--Name: Malachi Evans
--File: lab03tsql.sql
--Date: January 22, 2019



-- 1. What is the order number and the date of each order sold by each employee?
 select e.employeeid, e.lastname, e.firstname, o.employeeid, o.orderid, o.orderdate from employees e inner join orders o on e.employeeid = o.employeeid order by e.employeeid;

 -- 2. List each territory by region.
select t.territoryid, t.territorydescription, t.regionid, r.regionid, r.regiondescription from territories t inner join region r on r.regionid = t.regionid order by r.regiondescription;

-- 3. What is the supplier name for each product alphabetically by supplier?
select s.supplierid, s.companyname, p.productid, p.productname from suppliers s inner join products p on p.supplierid = s.supplierid order by s.companyname, p.productname;

-- 4. For every order on May 5, 1998, how many of each item was ordered, and what was the price of the item?
select o.orderdate, o.orderid, p.productid, sum(od.quantity) from orders o inner join order_details od on o.orderid = od.orderid inner join products p on p.productid = od.productid where o.orderdate like '1998-05-05' group by o.orderdate, o.orderid, p.productid;

-- 5. For every order in May, 1998, what was the customer's name and the shipper's name?
select o.orderid, o.orderdate, o.customerid, c.companyname as Customer_Name, o.shipperid, s.companyname as Shipper_Name from orders o inner join shippers s on o.shipperid = s.shipperid inner join customers c on o.customerid = c.customerid where o.orderdate like '1998-05%' order by c.companyname;
.
-- 6. What is the customer's name and the employee's name for every order shipped to France?
select c.customerid, c.companyname as CustomerName, e.employeeid, e.firstname, e.lastname, o.orderid, o.shipcountry from orders o inner join customers c on o.customerid = c.customerid inner join employees e on e.employeeid = o.employeeid where o.shipcountry = 'France' order by c.companyname;

-- 7. List the products by name that were shipped to Germany.
select p.productid, p.productname, o.shipcountry from products p inner join order_details od on p.productid = od.productid inner join orders o on o.orderid = od.orderid where o.shipcountry = 'Germany' group by p.productname order by p.productname;
