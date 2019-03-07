.echo on
.headers on

--Run:sqlite3 nw-150810.db<lab02.sql
--Name:Malachi Evans  
--File:lab02.sql
--Date: January 08, 2019

--1. What are the regions?

 select * from region;

--2. What are the cities?

select * from territories;

--3. What are the cities in the Southern region?

select * from territories where regionid = 4;

--4. How do you run this query with the fully qualified column name?

select territories.territoryid, territories.territorydescription, territories.regionid from territories where regionid = 4;

--5.How do you run this query with a table alias?

select t.territoryid, t.territorydescription, t.regionid from territories t where t.regionid = 4;

--6. What is the contact name, telephone number, and city for each customer?

select contactname,companyname,phone,city from customers;

--7. What are the products currently out of stock?

select p.productid, p.productname, p.supplierid, p.unitsinstock from products p where p.unitsinstock = 0;