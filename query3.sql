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


--Using Updata command
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
