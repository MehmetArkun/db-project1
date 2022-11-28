select FIRST_NAME, LAST_NAME, PHONE_NUMBER
from EMPLOYEES
where FIRST_NAME = 'David' and LAST_NAME='Lee';

--get me all info who is maing mroe than 7000 salary

select * from EMPLOYEES where SALARY > 23000;

select EMAIL, salary from EMPLOYEES where SALARY < 4000;

--GET ME ALL INFO WHO IS WORKING AS IT_PROG OR SA_REP
select * from EMPLOYEES where JOB_ID ='IT_PROG' or JOB_ID ='SA_REP';

--get me first name, last name, salary who is makinh more than 5000 and less than 10000
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES where SALARY>=5000 and SALARY<=10000;

select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES where SALARY between 5000 and 10000;

select * from EMPLOYEES where EMPLOYEE_ID between 130 and 170;


--get me all info where emolyoee id 135 176 154 129
select * from EMPLOYEES where EMPLOYEE_ID='135' or EMPLOYEE_ID='176' or EMPLOYEE_ID='154' or EMPLOYEE_ID='129';

select * from EMPLOYEES where EMPLOYEE_ID in(135, 176, 154, 129);

--get me city of where country_id IT,US,UK
select CITY, COUNTRY_ID from LOCATIONS where COUNTRY_ID in ('IT','US','UK');
