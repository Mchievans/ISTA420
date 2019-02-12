# T-SQL Homework 04

## Chapter 4, Subqueries

### Name: Malachi Evans

#### Date: January 22, 2019

-------------

1. In your own words, what is a subquery?
    + a tool for running a query in multiple steps, you can return a value or condition for the next part of the query, Query inside a query.

2. In your own words, what is a self-contained subquery
   + query’s that are independent of the outer query, so the data returned from the subquery expression can be correct before running the out query. Runs only once.

3. In your own words, what is a correlated subquery?
   + The expression in the subquery is dependent on the other table. (the where clause will specify the tables equal) run every time the outer query is done.

4. Give an example of a subquery that returns a single value. When would you use this kind of subquery?
     + returning Janet’s employee id.

5. Give an example of a subquery that returns multiple values. When would you use this kind of subquery?
   +  query with the IN predicate to return multiple values, All customer ids of customers in America.   

6. Give an example of a subquery that returns table values. When would you use this kind of subquery?
     + Use in from clause.  

7. What does the exists predicate do? Give an example."
     + It evaluates a substring as whether to be true or false and will return a value based on such does data base contain customers from Spain yes or no.
     
8.  What happens if we use the not operator before a predicate? Give an example.
     + It negates the operator such as NOT IN, or NOT EXIST. 

 9. When you use exists or not exists with respect to a row in a database, does it return two or three values? Explain your answer 
     + Two valued logic, it either returns there is a first value there or if nothing returns it will stop.
 10. How would you a subquery to calculate aggregates? For example, you want to calculate yearly sales of a product, and you also want to keep a running sum of total sales. Explain how you would use a subquery to do this.
     +    your inner query would be dependent on the day today selecting all queries before the day. The outer will sum the quantity of all of them. 
     
     SELECT  [, column_name ] 
FROM   table1 [, table2 ] 
WHERE  column_name OPERATOR 
   (SELECT column_name [, column_name ] 
   FROM table1 [, table2 ] 
   [WHERE]) 


