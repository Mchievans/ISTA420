# T-SQL Homework 08b

## Chapter 08b Data modfication

### Name: Malachi Evans

#### Date: February 11, 2019

-------------

1. The sales tax rate for a state just changed. How would you update the state sales tax table to reﬂect the changes? Assume that this table has an ID column, a RATE column, and a STATE column.
    + UPDATE dbo.salesTax
    + SET rate += 2.0
    + WHERE STATE like "GA";
2. The Revenue Division has requested that you provide a report on what the actual sales taxes would have been for all orders in the past year, assuming the retroactivity of the new sales tax rate. How would you calculate this?
    + UPDATE dbo.salesTax
    + SET rate += 2.0
    + WHERE STATE like "GA";
3. Explain how the proprietary assignment update command works.
    + it updates data in a table and assigns values to a variable at the same time. 
4. What is one very important purpose of the MERGE SQL statement? What is ETL (not in book)?
    + complex modification logic.
    + ETL stands for Extract, Transform and Load, which is a process used to collect data from various sources, transform the data depending on business rules/needs and load the data into a destination database.
5. What are the semantics of MERGE?
    + MERGE INTO 
    + USING on
    + WHEN MATCHED THEN
      +   UPDATE SET
    + WHEN NOT MATCHED THEN

6. Write a typical INSERT OUTPUT statement.
    + INSERT INTO dbo.salesTAx(area)
    + OUTPUT inserted rates
    + SELECT area
    + FROM states
    + where counties like 'Muscogee';

7. Write a typical UPDATE OUTPUT statement.
    + UPDATE dbo.salesTAx(area)
    + SET  discount += 2.0
    + OUTPUT deleted.rates as oldRates, inserted.rates 
    + where counties like 'Muscogee';
8. Write a typical DELETE OUTPUT statement.
    + DELETE FROM
    + OUTPUT
    + WHERE
9. Write a typical MERGE OUTPUT statement.
    + MERGE INTO 
    + USING on
    + WHEN MATCHED THEN
      +   UPDATE SET
    + WHEN NOT MATCHED THEN
    + OUYPUT
10. What is nested DML?
    + returns an output only for a subset of a modified row or table.

