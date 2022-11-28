SELECT * FROM COUNTRIES;

SELECT * FROM EMPLOYEES ;
-- reads all column from employees table

select * from DEPARTMENTS;
--reads all column from departments table

select FIRST_NAME from EMPLOYEES;
--reads the first name column only from emplyes table

select CITY from LOCATIONS;

select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES;

select STREET_ADDRESS, POSTAL_CODE from LOCATIONS;

select distinct FIRST_NAME from EMPLOYEES;
-- removes the duplicates
