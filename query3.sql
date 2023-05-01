show databases; --It will show all the databases that are available to work with


create table student (
	student_id int primary key,
    student_name varchar(30) not null,
    student_contact int not null,
    student_dept varchar(25) not null
);

select * from student;

INSERT INTO student VALUES(101, "Naveen", 824770, "CSE&BS");
INSERT INTO student VALUES(102, "Sahil", 123456789, "CSE");
INSERT INTO student VALUES(103, "Prashant", 987654321, "CSE");
INSERT INTO student VALUES(104, "Hari", 543216789, "CSE-DS");
INSERT INTO student VALUES(105, "Tarak", 897654321, "CSE-DS");

Inserting multiple values into table in a single line
INSERT INTO student VALUES(106, "Sameer", 897654324, "CSE&BS"), (107, "Jaswanth", 76859421, "CSE&BS"); 


select * from student;


--Using Update command
UPDATE (TABLE NAME) SET (NEW DATA) WHERE (OLD DATA);  
UPDATE student SET student_name="Jamaal" WHERE student_contact=76859421;

--Copying the entire data from a table to another table(It must have same datatype of columns while we are copying data from one table to another table)
--It also must be in the same database.
CREATE TABLE copy (
	st_id INT PRIMARY KEY,
    st_name VARCHAR(20) NOT NULL,
    st_contact INT NOT NULL,
    st_dept VARCHAR(10) NOT NULL
);

INSERT INTO copy SELECT * FROM student;

select * from copy;

UPDATE copy SET st_name="Tej" WHERE st_contact=897654324;

SELECT * FROM copy;

-- TRUNCATE WILL DELETE ALL THE VALUES FROM THE TABLE WITHOUT DELETING THE SCHEMA
TRUNCATE TABLE copy;

--DROP TABLE WILL DELETE THE ENTIRE TABLE 
 DROP TABLE copy;

--DELETING THE ENTIRE ROW USING DELETE COMMAND
DELETE FROM student WHERE student_name="Sameer";

--RENAMING THE COLUMN NAME OF THE TABLE USING ALTER COMMAND
ALTER TABLE student RENAME COLUMN student_id TO name;

--ALTERING THE TABLE NAME USING ALTER COMMAND
ALTER TABLE student RENAME TO rgm_student;

--ADDING NEW COLUMN USING ALTER COMMAND
ALTER TABLE rgm_student ADD student_address VARCHAR(20);

--UPDATING THE VALUES IN THE TABLE USING UPDATE COMMAND
UPDATE rgm_student SET student_address="Kadapa" WHERE name=101;

--MODIFYING THE DATATYPE OF THE TABLE USING ALTER COMMAND
ALTER TABLE rgm_student MODIFY COLUMN student_address VARCHAR(50);

--DROPPING THE COLUMN OF THE TABLE USING ALTER COMMAND
ALTER TABLE rgm_student DROP COLUMN student_address;

--DROPPING MULTIPLE COLUMNS OF THE TABLE USING ALTER COMMAND
ALTER TABLE rgm_student DROP COLUMN student_dept, DROP COLUMN student_contact


--USING AGGREGATE FUNCTIONS
CREATE TABLE mat(
	id INT PRIMARY KEY,
    name VARCHAR(10) NOT NULL,
    marks INT
);

INSERT INTO mat VALUES(101, "NAVEEN", 78), (102, "SAHIL", 80), (103, "PRASANTH", 67), (104, "HARI", 97), (105, "TARAK", 56);

SELECT MIN(marks) FROM mat;

SELECT MAX(marks) FROM mat;

SELECT AVG(marks) FROM mat;

SELECT SUM(marks) FROM mat;

SELECT COUNT(marks) FROM mat;




CREATE DATABASE EXERCISE;
SELECT * FROM CUSTOMER;
CREATE TABLE CUSTOMER (ID INT PRIMARY KEY,NAME VARCHAR(20),CITY VARCHAR(30),GRADE INT,SALESMAN_ID INT);

INSERT INTO CUSTOMER VALUES (101,'SUNEEL','DELHI',98,201),
(102,'VAMSI','HYDERABAD',198,202),
(103,'VISHNU','MUMBAI',79,203),
(104,'DON','KERALA',178,204),
(105,'TIRU','KADAPA',200,205),
(106,'CHARAN','BANGALOOR',100,206),
(107,'CHINTU','CHENNAI',296,207),
(108,'RAJESH','KOLKATA',67,208),
(109,'VINAY','GUJARAT',94,209),
(110,'SATYABANGARAM','RAJASTAN',168,210);

--WRITE A QUERY TO RETRIEVE ALL THE DATA WHOSE GRADE IS GREATER THAN 100
SELECT * FROM cuStomer WHERE GRADE > 100;

--WRITE A QUERY TO RETRIEVE THE DATA IN ASCENDING ORDER WHOSE GRADE IS GREATER THAN OR EQUAL TO 100
SELECT * FROM cuStomer WHERE GRADE >= 100 ORDER BY GRADE ASC;

--WRITE A QUERY TO RETRIEVE THE DATA WHO ARE LIVING IN HYDERABAD AND GRADE IS GREATER THAN OR EQUAL TO 100
SELECT * FROM customer WHERE CITY="HYDERABAD" AND GRADE <= 100;

--WRITE A QUERY TO RETRIEVE THE DATA OF A PERSON WHO IS LIVING IN KERAL AND GRADE IS NOT MORE THAN 100
SELECT * FROM customer WHERE CITY="KERALA" OR NOT GRADE > 100;			-- (NOT EQUAL TO <>)

--WRITE A QUERY TO RETRIEVE THE DATA OF A PERSON WHO IS NOT LIVING IN MUMBAI AND HAVE A GRADE EXCEEDS 200 
SELECT * FROM customer WHERE CITY != "MUMBAI" OR GRADE > 200;
SELECT * FROM customer WHERE CITY <> "MUMBAI" OR GRADE > 200;
SELECT * FROM customer WHERE NOT CITY ="MUMBAI" OR GRADE > 200;


create table orders(
order_num int,purchase_amount int,order_date date,customer_id int,salesman_id int
);
insert into orders values(2002,1000,'2023-04-23',100,200),(2003,1100,'2023-04-25',101,201),(2003,1200,'2023-04-30',102,202),(2004,1300,'2023-04-28',103,203),
(2005,1000,'2023-05-21',104,204);
select * from orders;
-- find the order details excluding the date 30-04-2023 and salesman id more than 202 or purchase amount greater than 1000
select * from orders where not order_date='2023-04-30' and salesman_id>202 or purchase_amount>1000;

create table salesman(
salesman_id int primary key, name varchar(30),city varchar(30), commission float);
select * from salesman;
insert into salesman values(200,'prasanna','kurnool',0.45),(201,'keerthi','nandyal',0.230),(202,'kavya','hyd',0.32),(203,'keerthana','BGLR',0.43);
-- To find the salesman details whose commissioms are within the range from 0.23 to 0.43
select * from salesman where commission between 0.23 and 0.43;
-- find the salesman details whose name startswith k letter
select * from salesman where name like 'k%';
-- create a new column address, insert some data in that address column and display all those address as "salesman address" in descending order
alter table salesman add address varchar(30);
update salesman set address='HYD' where name='prasanna';
update salesman set address='kurnool' where name='keerthi';
update salesman set address='kadapa' where name='kavya';
update salesman set address='BGLR' where name='keerthana';
select * from salesman order by address desc;
-- create a new column address, insert some data in that address column and display all those address as "salesman address" in descending order
select address as salesman_address from salesman order by address desc;

