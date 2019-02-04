# T-SQL Homework 06

## Chapter 6 Set operators

### Name: Malachi Evans

#### Date: January 28, 2019

-------------

1. What does a set operator do?
    + an operator that combine rows from two query result sets or multisets.
    + mathematical speaking a set is a collection of two or more diverse collections. 
2. What are the general requirements of a set operator
    + There must be exactly the same number of rows in a table and the column types must be exactly the same. An input query, a set operator, an input query 
3. What is a Venn Diagram? This is not in the book.
    + A chart displaying two circles that overlap. It displays items A and items B and what overlaps in the middle.  
4. Draw a Venn Diagram of the UNION operator. What does it do?
    + it unifies two queries and returns a row if it is in any of the input sets. implicit distinct 
5. Draw a Venn Diagram of the UNION ALL operator. What does it do?
    + the union all functions the same way but does not remove duplicates 
6. Draw a Venn Diagram of the INTERSECT operator. What does it do?
    + it returns rows only common to the results of the two input queries.
7. If SQL Server supported the INTERSECT ALL operator, what would it do?
    + it returns two lowest number of count duplicate rows in both input queries 
8. Draw a Venn Diagram of the EXCEPT operator. What does it do?
    + the except operator returns the results of rows in the first input query but not the second.
9. If SQL Server supported the EXCEPT ALL operator, what would it do?
    + it returns the count of occurrences for an except operator.
10. What is the precedence of the set operators?
    + INTERSECT
    + UNION, EXCEPT
 


