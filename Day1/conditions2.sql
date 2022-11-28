--get me ingo who is wokrin as it prog ror sa rep

select * from EMPLOYEES where JOB_ID in ('IT_PROG', 'SA_REP');

--how many employee wrking as it prog or sa_rep
select count(*) from EMPLOYEES where JOB_ID in ('IT_PROG', 'SA_REP');

--how many employeess making more than 8000
select count(*) from EMPLOYEES where SALARY>8000;

--how many unique first names we have?
select count(DISTINCT FIRST_NAME) FROM EMPLOYEES;

--GET ME ALL EMLOYES INFO BASED ON WHO IS MAKING MORE SALARY TO LOW SALARY
select * from EMPLOYEES
order by SALARY desc;

--get me all emp info order aplhabetical based on first name
select * from EMPLOYEES
order by FIRST_NAME asc ;

--default order type is asc if you dont specfiy after column name

--get me all employess whose first name starts with C
select * from EMPLOYEES where FIRST_NAME like 'C%';

--get me all employess whose first name starts with C and only 5 characters
select * from EMPLOYEES where FIRST_NAME like 'C____';

--get me 5 letter first names where the middle char z;
select * from EMPLOYEES where FIRST_NAME like '__z__';

--get me first name where second char is u;
select * from EMPLOYEES where FIRST_NAME like '_u%';

--find me minimum salary
select min(SALARY) from EMPLOYEES;

--find me max salary
select max(SALARY) from EMPLOYEES;

--find me average salary
select avg(SALARY) from EMPLOYEES;
select round(avg(SALARY)) from EMPLOYEES;
select round(avg(SALARY),2) from EMPLOYEES;





