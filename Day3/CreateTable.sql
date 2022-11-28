/*
 create table syntax:
    create table TableName(
 colName1 DataType Constraints
 colName2 DataType Constraints(optional)
 colName3 DataType Constraints,
 ...
 );
 */

 CREATE TABLE ScrumTeam(
     Emp_ID Integer PRIMARY KEY,
     FirstName varchar(30) not null,
     LastName varchar(30),
     JobTitle varchar(20)
 );

select * from SCRUMTEAM;
-------------------------

/*
 INSERT INTO tableName (column1, column2,...)
 VALUES (value1, value2...);
 */

INSERT INTO ScrumTeam (emp_id, firstname, lastname, jobtitle)
VALUES (1,'Carl', 'Sagan', 'Tester');

INSERT INTO ScrumTeam (emp_id, firstname, lastname, jobtitle)
VALUES (2,'Carl', 'Sagan', 'Developer');

INSERT INTO ScrumTeam (emp_id, firstname, lastname, jobtitle)
VALUES (3,'Richard', 'Feynman', 'Tester');

INSERT INTO ScrumTeam VALUES (4,'Bob', 'Dylan', 'Tester');

INSERT INTO ScrumTeam VALUES (5,'Wim', 'Wenders', 'ScrumMaster');

INSERT INTO ScrumTeam VALUES (6,'Aki', 'Kaurismaki', 'PO');

commit;

------

/*
 UPDATE tableName
 SET column1 = value1,
 column2 = value2,
 WHERE condition;
 */

 UPDATE SCRUMTEAM
SET JOBTITLE='Developer'
WHERE EMP_ID= 4;

COMMIT ;

DELETE FROM SCRUMTEAM
WHERE EMP_ID='1';

commit;

select * from SCRUMTEAM;
