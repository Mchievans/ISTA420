# T-SQL Homework 03

## Chapter 3, Joins

### Name: Malachi Evans

#### Date: January 21, 2019

-------------

1. In general, why would you even want to join two (or more) tables together? This is a good time to think about the nature of relational algebra.
<<<<<<< HEAD
    + Joing two or more tables can provide aditional information that are related by similar data or keys. Putting togther parts of a composite such as soliders in army making a platoon based on mos.
=======
    + Joining two or more tables can provide additional information that are related by similar data or keys. Putting together parts of a composite such as soldiers in army making a platoon based on mos.
>>>>>>> ab6d5f04a13fcad8a0743c9891bf1d892aea85be

2. Describe in your own words the output from an inner join.
   + a inner join two rows with the same attributes and then filters them by the specified predicate.
3. Describe in your own words the output from an outer join.
<<<<<<< HEAD
   + outer joins join tables based on specfied rows like  inner joins and returns a cretesian product and that is filtered by row but also a outer join colum that doesnt all have a match.
4. Describe in your own words the output from an cross join.
     + A cross join matches each row to all rows in a table. All possible combinations 
5. A convenient nemonic for remembering the various joins is "Ohio." Why is this true?
   +  Inner  Outter  Cross
=======
   + outer joins join tables based on specified rows like inner joins and returns a cartesian product and that is filtered by row but also a outer join Colum that doesn’t all have a match.
4. Describe in your own words the output from a cross join.
     + A cross join matches each row to all rows in a table. All possible combinations 
5. A convenient mnemonic for remembering the various joins is "Ohio." Why is this true?
   +  Inner Outer  Cross
>>>>>>> ab6d5f04a13fcad8a0743c9891bf1d892aea85be
            + full, left, right 
6. Give an example of a composite join.
     + filter by multiple columns
7. What is the difference between the following two queries? The business problem is \How many orders do we have from each customer?"

================first query===============

SELECT C.custid, COUNT(*) AS numorders

FROM Sales.Customers AS C

LEFT OUTER JOIN Sales.Orders AS O

ON C.custid = O.custid

GROUP BY C.custid;

================second query===============

SELECT C.custid, COUNT(O.orderid) AS numorders

FROM Sales.Customers AS C

LEFT OUTER JOIN Sales.Orders AS O

ON C.custid = O.custid

GROUP BY C.custid;

     + The top is going to count all the rows while the bottom will only coun the ones with a order id.

8.What might be one reason the following query does not return the column custID in this query?

SELECT C.custid, C.companyname, O.orderid, O.orderdate

FROM Sales.Customers AS C

LEFT OUTER JOIN Sales.Orders AS O

ON C.custid = O.custid

WHERE O.orderdate >= '20160101';

<<<<<<< HEAD
+ There were no customer orders after the day. 
=======
+ There were no customer orders after the day.
>>>>>>> ab6d5f04a13fcad8a0743c9891bf1d892aea85be
