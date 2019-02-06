--Name: Malachi Evans
--File: Lab8aTSQL
--Date:February 05,2018

USE	tsqlv4;

drop table if exists dbo.presidents;

create table dbo.presidents
(
id varchar(2),
lastname varchar(20),
firstname varchar(20),
middlename varchar(20),
orderofPres varchar(20),
dateofbirth varchar(20),
dateofdeath varchar(20),
POB varchar(50),
sob varchar(30),
hs varchar(30),
party varchar(50),
dateofoffice varchar(20),
endofoffice varchar(20),
assattempt varchar(21),
ass varchar(21),
religion varchar(60),
img varchar(60)
);

BULK INSERT dbo.presidents FROM 'C:\ISTA420\exercises\presidents.csv'
WITH 
(
datafiletype = 'char',
fieldterminator = ',',
rowterminator = '\n'
);

select * from dbo.presidents;