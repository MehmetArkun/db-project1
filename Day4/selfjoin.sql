--get me first name last name and deparment name for all emp[loyees
select * from EMPLOYEES;
select * from DEPARTMENTS;
select * from LOCATIONS;
select * from COUNTRIES;


select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID=d.DEPARTMENT_ID;

-----------

--show employees that does not have department id
select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME
from EMPLOYEES e left outer join DEPARTMENTS d
on e.DEPARTMENT_ID=d.DEPARTMENT_ID
where d.DEPARTMENT_ID is null;

-------------------------------------------

--get me first_name, last_name and department_name, city for all employess

select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, CITY
from EMPLOYEES e join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
join LOCATIONS l
on d.LOCATION_ID = l.LOCATION_ID;

-----------------------------------

--get me firstname, lastname and department name, city, country_name for all employees;
select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, CITY, COUNTRY_NAME
from EMPLOYEES e join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
join LOCATIONS l
on d.LOCATION_ID = l.LOCATION_ID
join COUNTRIES c
on c.COUNTRY_ID = l.COUNTRY_ID

-------------------------------------

--get me all employees and theor managers first name and last name
--selfjoin
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, MANAGER_ID from EMPLOYEES;
--emplyees are here their managers of each other

select e1.EMPLOYEE_ID, e1.FIRST_NAME, e1.LAST_NAME, e1.MANAGER_ID, e2.EMPLOYEE_ID, e2.FIRST_NAME, e2.LAST_NAME
from EMPLOYEES e1 join EMPLOYEES e2
on e1.MANAGER_ID = e2.EMPLOYEE_ID
order by e1.EMPLOYEE_ID;
