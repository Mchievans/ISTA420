.echo ON
.headers ON
--Name: Malachi Evans   
--File: lab03.sql
--date: January 22, 2018

--1. What is the order number and the date of each order sold by each employee?
 Select e.employeeid, e.lastname, e.firstname,
  o.employeeid, o.orderid, o.orderdate 
 from employees as e inner join orders o 
 on e.employeeid = o.employeeid order by e.employeeid;