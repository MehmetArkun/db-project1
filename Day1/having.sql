select avg(SALARY) from EMPLOYEES where JOB_ID='IT_PROG';

--get me unique job ids
select distinct JOB_ID from EMPLOYEES;

--get me average salary for every job id
select JOB_ID, avg(SALARY) from EMPLOYEES group by JOB_ID;
-- sql is allwoing us to run the functions against each other


select JOB_ID, avg(SALARY), count(*), sum(SALARY) from EMPLOYEES group by JOB_ID;
--group by is putting them inside the boxes
--******************************************************
--GET ME job ids where their avg salary is more than 5k
select JOB_ID, avg(SALARY), count(*) from EMPLOYEES where SALARY>5000 group by JOB_ID;
--if you use where clause with group id, you eliminate people before grouping or putting them inside the box
-- i wanna put everyone inside the group
--having clause -> we put them inside the groups then apply filter
--salary'si 5000'den yukari olanlari kutuya koyuyor burada

select JOB_ID, avg(SALARY)
from EMPLOYEES
group by JOB_ID having avg(SALARY) > 5000;
--***************************************************************
