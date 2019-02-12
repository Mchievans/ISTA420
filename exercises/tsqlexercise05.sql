DROP DATABASE IF EXISTS ProgramExercise05;

CREATE DATABASE PROGRAMEXERCISE05;

DROP TABLE IF EXISTS CUSTOMERS;

CREATE TABLE CUSTOMERS
(
CustomerNumber int primary key,
CustomerName nvarchar(60),
ContactLastName varchar(20),
ContactFirstName varchar(20),
Phone varchar(20),
AddressLine1 varchar(50),
AddressLine2 varchar(50),
City varchar(45),
_state varchar(40),
PostalCode varchar(35),
Country varchar(30),
SalesRepEmployeeNumber varchar(MAX),
CreditLimit VARCHAR(MAX)
);

GO

BULK INSERT CUSTOMERS 
FROM 'C:\Users\Malachi-admin\Documents\School\MSSA\Github\ISTA420-master\data\programingexercise05\customer.csv'
WITH
(
datafiletype = 'char',
fieldterminator = ',',
rowterminator = '\n'
);

GO

select * from CUSTOMERS;



DROP TABLE IF EXISTS EMPLOYEES;

CREATE TABLE EMPLOYEES
(
employeeNumber varchar(10) primary key,
lastName varchar(35),
firstName varChar(35),
extension Varchar(10),
email Varchar(60),
officeCode varchar(10),
reportsTo varchar (10),
jobTittle varchar (30)
);

BULK INSERT EMPLOYEES FROM 'C:\Users\Malachi-admin\Documents\School\MSSA\Github\ISTA420-master\data\programingexercise05\EMPLOYEES.CSV'
WITH
(
datafiletype = 'char',
fieldterminator = ',',
rowterminator = '\n'
);

select * from EMPLOYEES;


DROP TABLE IF EXISTS OFFICES;

CREATE TABLE OFFICES
(
officeCode varchar(10) primary key,
city varchar(35),
phone varChar(35),
addressLine1 Varchar(45),
addressLine2 Varchar(45),
_state varchar(15),
country varchar (20),
postalCode varchar (10),
territory varchar (20)
);

BULK INSERT OFFICES FROM 'C:\Users\Malachi-admin\Documents\School\MSSA\Github\ISTA420-master\data\programingexercise05\OFFICES.CSV'
WITH
(
datafiletype = 'char',
fieldterminator = ',',
rowterminator = '\n'
);

select * from OFFICES;

DROP TABLE IF EXISTS ORDERDETAILS;

CREATE TABLE ORDERDETAILS
(
orderNumber varchar(10),
productCode varchar(35),
quantityOrdered int,
priceEach float,
orderLineNumber varchar(20)
);

BULK INSERT ORDERDETAILS FROM 'C:\Users\Malachi-admin\Documents\School\MSSA\Github\ISTA420-master\data\programingexercise05\ORDERDETAILS.CSV'
WITH
(
datafiletype = 'char',
fieldterminator = ',',
rowterminator = '\n'
);

select * from ORDERDETAILS;


DROP TABLE IF EXISTS ORDERS;

CREATE TABLE ORDERS
(
orderNumber varchar(10) PRIMARY KEY,
orderDate varchar(max),
requiredDate varChar(max),
shippedDate varChar(max),
_status varchar (60),
comments nvarchar(max),
customerNumber varchar(3)
);

BULK INSERT ORDERS FROM 'C:\Users\Malachi-admin\Documents\School\MSSA\Github\ISTA420-master\data\programingexercise05\ORDERS.CSV'
WITH
(
datafiletype = 'char',
fieldterminator = ',',
rowterminator = '\n'
);

select * from ORDERS;


DROP TABLE IF EXISTS PAYMENTS;

CREATE TABLE PAYMENTS
(
customerNumber varchar(10),
checkNumber varchar(20),
paymentDate varChar(max),
amount float
);

BULK INSERT PAYMENTS FROM 'C:\Users\Malachi-admin\Documents\School\MSSA\Github\ISTA420-master\data\programingexercise05\PAYMENTS.CSV'
WITH
(
datafiletype = 'char',
fieldterminator = ',',
rowterminator = '\n'
);

select * from PAYMENTS;


DROP TABLE IF EXISTS PRODUCTS;

CREATE TABLE PRODUCTS
(
productCode varchar(25),
productName varchar(45),
productLine varchar(30),
productScale varchar(45),
productVendor varchar(60),
productDescription varChar(max),
quantityInStock float,
buyPrice float,
MSRP float
);

BULK INSERT PRODUCTS FROM 'C:\Users\Malachi-admin\Documents\School\MSSA\Github\ISTA420-master\data\programingexercise05\Products.CSV'
WITH
(
datafiletype = 'char',
fieldterminator = ',',
rowterminator = '\n'
);

select * from PRODUCTS;