create table Developers(
                           Id_Number Integer primary key,
                           Names varchar(30),
                           Salary Integer
);
create table Testers(
                        Id_Number Integer primary key,
                        Names varchar(30),
                        Salary Integer
);

insert into developers values (1, 'Mike', 155000);
insert into developers values (2, 'John', 142000);
insert into developers values (3, 'Steven', 850000);
insert into developers values (4, 'Maria', 120000);
insert into testers values (1, 'Steven', 110000);
insert into testers values(2, 'Adam', 105000);
insert into testers values (3, 'Lex', 100000);
commit work;

--------------------

--union & union all
select * from TESTERS
union
select * from DEVELOPERS;

--if we just call names info, then union removes the duplicates (steven)

select names from TESTERS
union
select names from DEVELOPERS;

-------------

--minus returns the only ones unqiue to first query
select NAMES from TESTERS
minus
select NAMES from DEVELOPERS;

-----------------
--intersect retunrs intersection
select NAMES from TESTERS
intersect
select NAMES from DEVELOPERS;

----------INTERVIEW QUESTION BELOW
--how to find duolicate names i employees table
select FIRST_NAME, count(*) from EMPLOYEES group by FIRST_NAME having count(*)>1;
















