--1. Create an appropriate table schema.
--2. Insert the CSV data into the table you just created.

DROP DATABASE IF EXISTS ProgramExercise06;

CREATE DATABASE PROGRAMEXERCISE06;

DROP TABLE IF EXISTS PRESIDENTS;

CREATE TABLE PRESIDENTS
(
ID varchar(60),
LastName varchar(25),
FirstName varchar(25),
MiddleName varchar(25),
OrderOfPresidency varchar(60),
DateOfBirth varchar(60),
DateOfDeath varchar(60),
TownOrCountryOfBirth varchar(60),
StateOfBirth varchar(60),
HomeState varchar(60),
PartyAffilitaion nvarchar(max),
DateTookOffice varchar(60),
DateLeftOffice varchar(60),
AssassinationAttempt varchar(60),
Assassinated varchar(60),
ReligiousAffilitaion varchar(60),
Imagepath varchar(max)
);

GO

BULK INSERT PRESIDENTS
FROM 'C:\Users\Malachi-admin\Documents\School\MSSA\Github\ISTA420-master\data\USPresidents.csv'
WITH
(
datafiletype = 'char',
fieldterminator = ',',
rowterminator ='\n'
);

GO

SELECT * FROM PRESIDENTS;

--3. Delete the column that contains the path to the images.

ALTER TABLE PRESIDENTS DROP COLUMN imagepath;
SELECT * FROM PRESIDENTS;


--4. Delete the first record from your table using the output clause. This is the header.
DELETE TOP(1) FROM PRESIDENTS
OUTPUT
deleted.Assassinated,
deleted.Assassinated,
deleted.DateLeftOffice,
deleted.DateOfBirth,
deleted.DateOfDeath,
deleted.DateTookOffice,
deleted.FirstName,
deleted.HomeState,
deleted.ID,
deleted.LastName,
deleted.MiddleName,
deleted.OrderOfPresidency,
deleted.PartyAffilitaion,
deleted.ReligiousAffilitaion,
deleted.StateOfBirth,
deleted.TownOrCountryOfBirth;

SELECT * FROM PRESIDENTS;
 
ALTER TABLE PRESIDENTS ALTER COLUMN ID INT NOT NULL 
ALTER TABLE PRESIDENTS ADD CONSTRAINT ID_pK PRIMARY KEY (ID)

SELECT * FROM PRESIDENTS;

--5. Bring the data up to date by updating the last row. Use the output clause
UPDATE PRESIDENTS
SET DateLeftOffice = '1/20/2017', Assassinated = 'FALSE', AssassinationAttempt = 'FALSE'
OUTPUT
deleted.DateLeftOffice,
deleted.Assassinated,
deleted.AssassinationAttempt
WHERE LastName LIKE 'Obama';

SELECT * FROM PRESIDENTS;

--6.Bring the data up to date by adding a new row. Use the output clause.
INSERT INTO PRESIDENTS(
   ID,
   LastName,
   FirstName,
   MiddleName,
   OrderOfPresidency,
   DateOfBirth,
   DateOfDeath,
   TownOrCountryOfBirth,
   StateOfBirth,
   HomeState,
   PartyAffilitaion,
   DateTookOffice,
   DateLeftOffice,
   AssassinationAttempt,
   Assassinated,
   ReligiousAffilitaion  
) OUTPUT 
inserted.ID,
inserted.LastName,
inserted.FirstName,
inserted.MiddleName,
inserted.OrderOfPresidency,
inserted.DateOfBirth,
inserted.DateOfDeath,
inserted.TownOrCountryOfBirth,
inserted.StateOfBirth,
inserted.HomeState,
inserted.PartyAffilitaion,
inserted.DateTookOffice,
inserted.DateLeftOffice,
inserted.AssassinationAttempt,
inserted.Assassinated,
inserted.ReligiousAffilitaion
VALUES
    (
        45,
'Trump',
'Donald',
'John',
'45',
'06/14/1946',
'null',
'New York Cty',
'New York',
'New York',
'Republican',
'01/20/2017',
'null',
'false',
'false',
'presbyterian'
    );

	SELECT * FROM PRESIDENTS;

--7.How many presidents from each state belonged to the various political parties? 
--Aggregate by party and state. Note that this will in effect be a pivot table.

Select NumPres as PartyNum
From
(SELECT Count(FirstName) as NumPres, PartyAffilitaion, StateOfBirth from PRESIDENTS group by StateOfBirth, PartyAffilitaion)
as table1
Pivot
(Count (PartyAffilitaion) for StateOfBirth In (table1))
as pivottable;

--8.Create a report showing the number of days each president was in office.
