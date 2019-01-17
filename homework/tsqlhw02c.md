# T-SQL Homework 02 C

## Single Table Queries

### Name: Malachi Evans

#### Date: January 14, 2019

-------------

1. A data type is a reffernce to the charcter type and how much space is used by the charcter. Data types display the are the variables stored on the sever and displayed in tables.

2. Collation is a property of character data that encapsulates several aspects: language support, sort order, case sensitivity, accent sensitivity, and more.The four elments of collation that it can be defined on are
  
     + instance
     + database
     + column
     + expression

3. To strip whitespaces from a string you would use SELECT RTRIM(LTRIM('    DAVE    ')). Use the RTRIM and LTRIM functions.

4. Use the LIKE predicate. WHERE  Collegename LIKE "institute";  

5. SELECT CHARINDEX(' ','Barack Hussein Obama');

6. SELECT LEFT('Benjamin Franklin',CHARINDEX(' ','Benjamin Franklin'));

7. Select DATEADD(day, 30, 'shippeddate') as duedate;

8. SELECT DATEDIFF(day,GETDATE,Birthday);

9. GETDATE, CURRENT_TIMESTAMP;