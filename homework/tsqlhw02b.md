# T-SQL Homework 02 B

## Single Table Queries

### Name: Malachi Evans

#### Date: January 12, 2019

-------------

1. A data type is a reffernce to the charcter type and how much space is used by the charcter. Data types display the are the variables stored on the sever and displayed in tables. Data type interpets the varibles to the computer.

2. Collation is a property of character data that encapsulates several aspects: language support, sort order, case sensitivity, accent sensitivity, and more.The four elments of collation that it can be defined on are
  
     + Latin1_General
     + Dictionary Sorting
     + CI case insensitive
     + AS accent sensitive

3. To strip whitespaces from a string you would use SELECT RTRIM(LTRIM('    DAVE    ')). Use the RTRIM and LTRIM functions.

4. Use the LIKE predicate. WHERE  Collegename LIKE "%institute%";

5. SELECT CHARINDEX(' ','Barack Hussein Obama'); SELECT SUBSTRING('Barack Hussein Obama',1,CHARINDEX(" "));

6. SELECT SUBSTRING('Barack Hussein Obama',1,CHARINDEX(" "));

7. Order of precedence for logical operators:
   + NOT
   + AND
   + BETWEEN, IN, LIKE, OR
   + +(ASSIGNMENT)

8. Order of precedence for math operators:
    + ()Parentheses
    + *Multiplication, /Division, %Modulo
    + +Positive, -Negative, +Addition, +Concatenation, -Subtraction

9. The difference between a simple and a searched CASE expresssion is the simple form of a CASE expression compares one value or scalar expression with a list of possible values and returns a value for the first match. While a searched CASE expression doesnt stick to having a single test value or expression after the WHEN clause instead you can specfiy predicates after the WHEN clause.

10. SELECT substring("lastname, firstname",charindex' ',"lastname, firstname"),len("lastname, firstname")) + " " + substring("lastname, firstname",1,charindex(","lastname, firstname"));

11. SELECT substring("firstname, lastname",charindex' ',"firstname, lastname"),len("firstname, lastname")) + " " + substring("firstname, lastname",1,charindex(","firstname, lastname"));