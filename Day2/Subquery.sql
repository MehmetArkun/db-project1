--how to find employees info of who has highest salary in the comapny
select * from EMPLOYEES order by SALARY desc;

--get me highest salary
select max(SALARY) from EMPLOYEES;

--highest salary employee information
select * from EMPLOYEES where SALARY =24000;

--subquery solution in one shot
select * from EMPLOYEES where SALARY =(select max(SALARY) from EMPLOYEES);

--finding the second highest salary
    --get highest salary first
select max(SALARY) from EMPLOYEES;
select max(SALARY) from EMPLOYEES where SALARY<24000;

--one shot combining two queries
select max(SALARY) from EMPLOYEES where SALARY < (select max(SALARY) from EMPLOYEES);

--emoloyee info who has second highest salary
select * from EMPLOYEES where SALARY = (select max(SALARY) from EMPLOYEES where SALARY < (select max(SALARY) from EMPLOYEES));

---------
--show me top ten highest paid employees
    select * from EMPLOYEES where rownum <11;

    select * from EMPLOYEES order by SALARY desc;

    --this means: get first 10 people then order them high to low based on salary
    select * from EMPLOYEES where rownum <11 order by SALARY desc;

--solution
    --first we gotta order all employees based on salary high to low then display first 10 result
    --then we gotta use that query inside the query where we limit the row number (instead of employees)
select * from EMPLOYEES order by SALARY desc;
select * from (select * from EMPLOYEES order by SALARY desc) where rownum <11;









