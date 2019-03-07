# T-SQL Homework 08

## Chapter 8a Data Modiﬁcation

### Name: Malachi Evans

#### Date: February 04, 2019

-------------
1. When using INSERT, is the list of columns necessary? Why or why not?
<<<<<<< HEAD
    + It is optional but if not it relies on the order of columns to appply the values and may insert null if not there.
=======
    + It is optional but if not it relies on the order of columns to apply the values and may insert null if not there.
>>>>>>> ab6d5f04a13fcad8a0743c9891bf1d892aea85be
2. When using INSERT SELECT, do you use a subquery (derived table)? Under what circumstances do you not use a subquery?
    + yes and 
3. What is the operand for the INSERT EXEC statement?
    + EXEC
4. How would you use the INSERT INTO statement?
<<<<<<< HEAD
    + BY using a select clasue and then spefciying the INTO table before the from clause.
=======
    + BY using a select clause and then specifying the INTO table before the from clause.
>>>>>>> ab6d5f04a13fcad8a0743c9891bf1d892aea85be
5. What are the parameters to the BULK INSERT statement?
    + target table, source file, options 
6. Does IDENTITY guarantee uniqueness? If not, how do you guarantee uniqueness?
    + no, you do it by define a primary key or unique constraint 
7. How do you create a SEQUENCE object? 
<<<<<<< HEAD
    + NEXT VALUE FOR sequence name, data type, minnimun and maximum values 
=======
    + NEXT VALUE FOR sequence name, data type, minimum and maximum values 
>>>>>>> ab6d5f04a13fcad8a0743c9891bf1d892aea85be
8. How do you use a SEQUENCE object?
    + 
9. How do you alter a SEQUENCE object?
    + The alter sequence command (MINVAL, MAXVAL RESTART WITH, INCREMENT BY, CYCLE NO CYCLE OR CACHE NO CACHE)
10. What is the diﬀerence between DELETE and TRUNCATE?
    + DELETE has a filter you can specify a predicate, truncate does not.
11. What is the diﬀerence between DELETE and DROP TABLE?
    + delete removes rows and data, drop removes tables.

