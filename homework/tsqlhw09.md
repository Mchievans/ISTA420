# T-SQL Homework 09

## Chapter 09 Temporal Tables

### Name: Malachi Evans

#### Date: February 11, 2019

-------------

1. What is a temporal table?
    + a log of previous table states.
2. Under what circumstances would you use a temporal table? Temporal tables are in widespread use in certain kinds of businesses.
    + to find the previous versions of data, accounting. 
3. What are the semantics of a temporal table? There are seven of them.
    + primary key
    + two columns DATETIME2 start and end rows
    + start column GENERATED ALWAYS AS ROW START
    + end column GENERATED ALWAYS AS ROW END
    + period columns PERIOD FOR SYSTEM_TIME(STARTCOL,ENDCOL)
    + table option SYSTEM_VERSIONING should be on.
    + a linked history table.
4. How do you search a history table?
    + specify history at the end of the table name.
5. How do you modify a history table?
    + same as regular table, INSERT, DELETE, UPDATE, MERGE.
6. How do you delete date from a history table? Why would you want to delete data from a history table?
    + You don't need too. 
7. How do you search a history table?
    + use FOR SYSTEM_TIME and a sub query 
8. How do you query all data from both a history ﬁle and the current data?
    + use ALL after FOR SYSTEM_TIME
9. How do you drop a temporal table?
    + turn off system version and then use the DROP syntax like a table.
