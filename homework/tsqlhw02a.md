# T-SQL Homework 02 A

## Single Table Queries

### Name: Malachi Evans

#### Date: January 12, 2019

-------------

1. The order of execution in a SQL query follows:
     1. FROM
     1. WHERE
     1. GROUP BY
     1. HAVING
     1. SELECT
     1. ORDER BY

2. The FROM clause **specifies the names of the tables** you want query and **the table operators** that operate on those tables.

3. The Where clause you **specify a predicate or logical expression to filter the rows returned by the FROM** phase. **Filters rows**

4. The GROUP BY clause **arranges the rows** returned by the previous logical query processing phase in groups, **determined by the elements you specify**.  

5. The HAVING clause is a __group filter__ it only __returns groups for which the specified element evaluates to be TRUE__. **filters groups**

6. The SELECT clause is where you **specify attributes (columns) you want to return in the result table of the query.**

7. The DISTINCT keyword **removes duplicates** in table results.

8. The ORDER BY clause **sorts rows** in the output table. It is the very **last clause used** in the logical query processing.

9. The LIMIT clause **restricts the number of rows** returned in a table.

10. The TOP clause is proprietary to T-SQL but **works the same as a LIMIT clause**.

11. The OFFSET-FETCH clause is considered an extension of the ORDER BY clause, the **OFFSET indicates how many rows to skip** and the **FETCH indicates how many rows to filter after the skipped rows**.
