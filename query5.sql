select * from manager;
-- FINDING THE LARGEST SALARY FORM MANAGER1 TABLE
SELECT name, salary FROM manager ORDER BY salary DESC LIMIT 1;

-- FINDING THE 2ND LARGEST SALARY FORM MANAGER1 TABLE
SELECT name, salary FROM manager ORDER BY salary DESC LIMIT 1, 1;

-- FINDING THE 3RD LARGEST SALARY FORM MANAGER1 TABLE
SELECT name, salary FROM manager ORDER BY salary DESC LIMIT 2, 1;

-- FINDING THE 4TH LARGEST SALARY FORM MANAGER1 TABLE
SELECT name, salary FROM manager ORDER BY salary DESC LIMIT 3, 1;


-- PERFORMING JOIN OPERATIONS
create table orders1(
order_id int,
order_date date,
customer_id int
);

create table customer1(
cus_id int,
cus_name varchar(30),
contact_name varchar(30),
country varchar(30)
);

insert into orders1 values(110,"2023-5-1",200),(102,"2023-5-5",204),(103,"2023-5-4",207),(108,"2023-5-3",205),(109,"2023-5-2",208);

insert into customer1 values(200,"Rahul","Subbu","India"),(204,"Samrin","Salim","US"),(207,"Surya","Vikram","UK"),(205,"Yamuna","Ganga","Russia"),(208,"Sumanth","Vani","India"); 

select * from orders1;

select * from customer1;

select orders1.order_id, customer1.cus_name,orders1.order_date from orders1 inner join customer1 on orders1.customer_id = customer1.cus_id;

CREATE TABLE staff (
	id INT,
    name VARCHAR(30),
    age INT,
	package INT
);

CREATE TABLE payment (
	id INT,
    payment_date DATE,
    staff_id INT,
    amount INT
);

INSERT INTO staff VALUES(201, 'SWAPNA', 20, 20000), (202, 'SWATHI', 20, 30000), (203, 'SUMANTH', 21, 50000), (204, 'RAHUL',  22, 70000);

INSERT INTO payment VALUES(300, '2023-05-2', 201, 10000), (302, '2023-05-1', 202, 15000), (304, '2023-05-2', 203, 10000), (303, '2023-05-7', 200, 40000);

SELECT S.id, name, age, amount FROM staff S, payment P WHERE S.id = P.staff_id;

alter table orders1 add shipping_id int;
alter table orders1 drop column shipping_id;
select * from orders1;
update orders1 set shipping_id=1234 where order_id = 110;
update orders1 set shipping_id=8888 where order_id = 102;
update orders1 set shipping_id=9999 where order_id = 103;
update orders1 set shipping_id=1777 where order_id = 108;
update orders1 set shipping_id=4322 where order_id = 109;

create table shipping1(
shipping_id int,name varchar(20));
insert into shipping1 values(1234,'xxx'),(8888,'express'),
(9999,'yyy'),(6666,'zzz'),(8598,'sss');
select * from orders1;
select * from customer1;
select * from shipping;


-- joining of 3 tables order1,customer1,shippping

select orders1.order_id,customer1.cus_name,shipping1.name from
((orders1 inner join customer1 on orders1.customer_id=customer1.cus_id)
inner join shipping1 on orders1.shipping_id = shipping1.shipping_id);

-- left join of order1 and customer1 tables
select customer1.cus_name,orders1.order_id from customer1
left join orders1 on customer1.cus_id=orders1.customer_id;

select cus_name,country,order_date from customer1 right join orders1 on customer1.cus_id = orders1.customer_id;  

select cus_name,country,order_date from customer1 right join orders1 on customer1.cus_id = orders1.customer_id order by customer1.cus_name;  

select cus_name,country,order_date from customer1 left join orders1 on customer1.cus_id = orders1.customer_id where customer1.cus_name like "S%" order by customer1.cus_name;

SELECT * FROM CUSTOMER1;
SELECT * FROM ORDERS1;


-- RIGHT JOIN OF ORDERS1 AND CUSTOMER1 TABLES
SELECT CUS_NAME,COUNTRY,ORDER_DATE FROM CUSTOMER1 RIGHT JOIN ORDERS1 ON CUSTOMER1.CUS_ID=ORDERS1.CUSTOMER_ID;
-- FULL JOIN
SELECT CUS_NAME,ORDERS1.ORDER_ID FROM CUSTOMER1 FULL JOIN ORDERS1 ON CUS_ID=ORDERS1.CUSTOMER_ID;

CREATE TABLE TEST(
ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
C2 VARCHAR(40) NOT NULL,
C3 VARCHAR(40) DEFAULT 'SOFTWARE ENGINEER');
