CREATE TABLE address(
                        address_id Integer PRIMARY KEY,
                        address VARCHAR(50) NOT NULL,
                        phone Integer NOT NULL
);
INSERT INTO address (address_id, address, phone) VALUES (5,  '1913 Hanoi Way'  ,
                                                         28303384);
INSERT INTO address (address_id, address, phone) VALUES (7,  '692 Joliet Street'  ,
                                                         44847719);
INSERT INTO address (address_id, address, phone) VALUES (8,  '1566 Inegl Manor'  ,
                                                         70581400);
INSERT INTO address (address_id, address, phone) VALUES (10,  '1795 Santiago '  ,
                                                         86045262);
INSERT INTO address (address_id, address, phone) VALUES (11,  '900 Santiago '  ,
                                                         16571220);
CREATE TABLE customer(
                         customer_id Integer PRIMARY KEY,
                         first_name VARCHAR(50) NOT NULL,
                         last_name VARCHAR(50)NOT NULL,
                         address_id Integer REFERENCES address(address_id)
);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (1,
                                                                              'Mary' ,  'Smith',  5);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (2,
                                                                              'Patricia' ,  'Johnson' ,  NULl);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (3,
                                                                              'Linda' ,  'Williams' ,  7);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (4,
                                                                              'Barbara' ,  'Jones' , 8);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (5,
                                                                              'Elizabeth' ,  'Brown' ,  NULL);
commit work;

select * from address;

select * from customer;

--query for matching values
select first_name,last_name,address,phone
from customer join address on customer.address_id = address.address_id;
--shortcuts
select first_name,last_name,c.address_id,address,phone
from customer c join address a
    on c.address_id = a.address_id;
----------------------------------------------------------------------------------

--left join - right join
--left join
--ilk once koydugumuz(from'dan hemen sonra) left, sonraki right table (kume ornegi)
--left join null olsalar da hepsini gosterecek
select first_name,last_name,address,phone
from customer left join address on customer.address_id = address.address_id;

--right join

select first_name,last_name,address,phone, address.address_id
from customer right join address on customer.address_id = address.address_id;
------------------

---full outer join
--produces the set of all records

select first_name, last_name, address, phone, customer.address_id
from customer full join address on customer.address_id = address.address_id;

---------------------------------------------

select first_name, last_name, department_name
from EMPLOYEES e join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--one person missing so I am gonna implement left join
select first_name, last_name, department_name
from EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

---------------------------
-- showing only the unique ones for customer table

select first_name, last_name, customer_id, customer.address_id, address.address_id, address, phone
from customer left outer join address on customer.address_id = address.address_id where address.address_id is null;

--------------------
--full outer join
--excluding the intersection

select * from customer full outer join address
on customer.address_id = address.address_id
where customer.address_id is null or
address.address_id is null;


