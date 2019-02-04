.echo ON
.headers ON

--Name: Malachi Evans
--File: tsqlexercise02.sql
--Date: January 17, 2019

--1.Mailing Labels
    --From the Northwind database we used in class and SQLite, create mailing labels for customer represen-
    --tatives. Each label should consist of six, and exactly six, lines. The mailing labels should be suitable
    --for printing on sticky label paper, specically Avery 8160 labels. The format should be as follows:
    --TITLE FIRSTNAME LASTNAME
    --COMPANYNAME
    --STREET ADDRESS
    --CITY STATE ZIP COUNTRY
    --[blank line]
    --[blank line]

select contacttitle, + contactname, + "
    ", + companyname, + "
    ", + address, + "
    ", + city, + region, + postalcode, + country, + "
    ", + "
    " from customers;

--2.Telephone Book
    --From the Northwind database we used in class and SQLite, create a telephone book for customer repre-
    --sentatives. Each line in the telehone book should consist of the representative last name, representative
    --first name, company name, and telephone number. Each row should look like this.
    --Lastname, Firstname Middlename [tab] Company name [tab] phone number

select substr(contactname, instr(" ",contactname), length(contactname)), 
+ substr(contactname, 1, instr(" ",contactname)), 
+ " ", + companyname, + " ", + phone from customers;

--3. Shipping Lag
    --From the Northwind database, create a report from Orders showing the shipping lag between order
    --date and shipped date. The report should contain four columns: the order umber, the order date, the
    --shipped date, and the di
erence in days between the order date and the shipped date.

select orderid as ordernumber, orderdate, shippeddate, 
JulianDay(shippeddate) - JulianDay(orderdate) as 
differnceindays from orders;  

--4. Your Age
    --How old are you, in days, today? Use Sqlite to calculate this
    
select JulianDay("now") - JulianDay("1993-02-03") as MyAgeInDays;
