# T-SQL Homework 07

## Chapter 7 Beyond the fundamentals of querying

### Name: Malachi Evans

#### Date: February 03, 2019

-------------
1. What is a window function?
    + A function that for each row computes a scalar value based on a calculation against a subset of the rows from the underlying query. 
2. What does PARTITION do?
    + restricts the window to the subset of rows that have the same values in the partitioning columns as the current row.
3. What does ORDER BY do?
<<<<<<< HEAD
    + defines ordering window ordering gives meanng to rank.
4. What does ROWS BETWEEN do?
    + filters a frame or a subset of rows from the window partition between the two specfied delimeters. 
5. What is a ranking window function? Why would you use it? Give an example.
    + ROW_NUMBER, RANK, DENSE_RANK,NTILE. You use it rank eaach row with respect to others in the window. If you need to give weighted values to a entries in a table.
=======
    + defines ordering window ordering gives meaning to rank.
4. What does ROWS BETWEEN do?
    + filters a frame or a subset of rows from the window partition between the two specified delimiters. 
5. What is a ranking window function? Why would you use it? Give an example.
    + ROW_NUMBER, RANK, DENSE_RANK,NTILE. You use it rank each row with respect to others in the window. If you need to give weighted values to an entries in a table.
>>>>>>> ab6d5f04a13fcad8a0743c9891bf1d892aea85be
6. What is an oﬀset window function? Why would you use it? Give an example.
    + LEAD,LAG, FIRST_VALUE, LAST_VALUE. You use an offset window function to return an element from a row that is at a certain offset from the current row or at the beginning or end of a window frame. if you want to see fluctuations in a series of values the correlate to a unique id. (customer orders). 
7. What do LEAD and LAG DO
    + LEAD - obtains an element from a row that is a certain offset ahead
    + LAG - obtains an element from a row that is a certain offset before the current row.
8. What do FIRST VALUE and LAST VALUE do?
    + RETURN THE FIRST A LAST ROWS IN A FRAME.
<<<<<<< HEAD
9. What is an aggragate window function? Why would you use it? Give an example.
=======
9. What is an aggregate window function? Why would you use it? Give an example.
>>>>>>> ab6d5f04a13fcad8a0743c9891bf1d892aea85be
    + SUM, OVER. aggregates the rows in the defined window. if you need to find the total value of rows.
10. What is a pivot table and what does it do?
    + rotates data from rows to columns, output data into a relational table. 

