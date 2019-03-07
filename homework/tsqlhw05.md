# T-SQL Homework 05

## Chapter 5 Table expressions

### Name: Malachi Evans

#### Date: January 27, 2019

-------------

1. What is a table expression? Can you give a technical deﬁnition of a table expression?
    + A table expression is a named query expression that represents a valid relational table. 
2. In what SQL clause are derived tables (table valued subqueries) located?
    + the from clause 
3. Why can you refer to column aliases in an outer query that you deﬁned in an inner table valued subquery?
<<<<<<< HEAD
    + The order of precedence assigns the alliases in the inner table valued subquery first
=======
    + The order of precedence assigns the aliases in the inner table valued subquery first
>>>>>>> ab6d5f04a13fcad8a0743c9891bf1d892aea85be
4. What SQL key word deﬁnes a common table expression?
    + WITH
5. When using common table expressions, can a subsequent derived table use a table alias declared in a preceding table expression?
    + yes 
6. Can a main query refer to a previously deﬁned common table expression by multiple aliases?
    + yes 
7. In SQL, is a view a durable object?
    + yes the definitions are stored in the database.
8. In a view, what does WITH CHECK OPTION do? Why is this important?
    + it prevents modifications that conflict with the view filter. 
9. In a view, what does SCHEMABINDING do? Why is this important?
<<<<<<< HEAD
    + it binds the schema of referenced objects a columns to the schema of the referecening object.
10. What is a table valued function?
    + a resuable table expression that supports iput parameters. 
=======
    + it binds the schema of referenced objects a column to the schema of the referencing object.
10. What is a table valued function?
    + a reusable table expression that supports input parameters. 
>>>>>>> ab6d5f04a13fcad8a0743c9891bf1d892aea85be
11. What does the APPLY operator do?
    + used in the from clause it applies a table to each row of another table and produces a table with unified results. 
12. What are the two forms of the APPLY operator? Give an example of each.
    + cross-apply, outer apply. cross apply -


