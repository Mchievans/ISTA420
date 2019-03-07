.echo ON
.headers ON

--Name: Malachi Evans
--File: lab06Tsql.sql
--Date: January 29, 2019

--1. Create a list of every country where we have either a customer or a supplier.
select country from suppliers
union 
select country from customers;

--2. Create a list of every city and country where we have either a customer or a supplier.
select city, country from suppliers
union 
select city, country from suppliers;
--3. Create a list of every country where we have both a customer and a supplier.
select country from suppliers
intersect 
select country from customers;
--4. Create a list of every city and country where we have both a customer and a supplier.
select city, country from suppliers
intersect 
select city, country from suppliers;
--5. Ceate a list of every country where we have customers but not suppliers.
select country from customers
EXCEPT
select country from suppliers;
--6. Ceate a list of every country where we have suppliers but not customers.
select country from suppliers
EXCEPT
select country from customers;

--7. Create a list of every country where we have suppliers but not customers and where we have customers but not suppliers. Do not include any country where we have both.  
 with custcountry as 
 ( select country from customers except select country from suppliers), suppliersonly as (select country from suppliers except select country from customers) select country from custcountry union select country from suppliersonly;

