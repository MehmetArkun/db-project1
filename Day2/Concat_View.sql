--how can we rename the column that we displayed
select FIRST_NAME as "given_name" from EMPLOYEES;

--text functions, string manipulation
--in java first_name + " " + last_name
--in sql we use ||

select FIRST_NAME || ' ' || LAST_NAME as "full_name" from EMPLOYEES;

--Task;
--add @gmail.com and name new column to full_email
select EMAIL from EMPLOYEES;
select EMAIL || '' || '@gmail.com' as "full_email" from EMPLOYEES;

select upper( EMAIL || '' || '@gmail.com') as "full_email" from EMPLOYEES;

select lower( EMAIL || '' || '@gmail.com') as "full_email" from EMPLOYEES;

-------

--length(value)
select FIRST_NAME, length(FIRST_NAME) as "length_name" from EMPLOYEES order by "length_name" desc ;

-----

--substr(colName, begIndex, NumberOfChar)
select substr(FIRST_NAME,0,1) || '.' || substr(LAST_NAME,0,1) as "initials" from EMPLOYEES;

select substr (FIRST_NAME,0,1) || '.' || substr(LAST_NAME,0,1) as "initials",
       FIRST_NAME || ' ' || LAST_NAME as "fullname",
       lower(EMAIL||'@gmail.com') as "full_email"
from EMPLOYEES;

----------
CREATE VIEW Emaillist as select substr (FIRST_NAME,0,1) || '.' || substr(LAST_NAME,0,1) as "initials",
       FIRST_NAME || ' ' || LAST_NAME as "fullname",
       lower(EMAIL||'@gmail.com') as "full_email"
from EMPLOYEES;

-----
select "fullname" from EMAILLIST;

-------
-- to remove view
--drop view Emaillist

--find the highest 14th salary / find employee info with duplicates
select * from EMPLOYEES order by SALARY desc;
select * from (select * from EMPLOYEES order by SALARY desc) where rownum < 15;
select min(SALARY) from (select * from (select * from EMPLOYEES order by SALARY desc) where rownum < 15);
select * from EMPLOYEES where SALARY =(select min(SALARY) from
(select * from (select * from EMPLOYEES order by SALARY desc) where rownum < 15));
--
--without duplicates
select * from EMPLOYEES order by SALARY;
select * from (select distinct salary from EMPLOYEES order by SALARY desc ) where ROWNUM < 15;
select min(SALARY) from (select * from (select distinct salary from EMPLOYEES order by SALARY desc) where ROWNUM < 15);
select * from EMPLOYEES where SALARY = (select min(SALARY)
from (select * from (select distinct salary from EMPLOYEES order by SALARY desc) where ROWNUM < 15));


