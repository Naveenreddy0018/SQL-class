create database car_prblm;

CREATE TABLE car (
	car_no INT,
    car_name VARCHAR(40),
	car_price INT,
    car_quantitiy INT 
);

INSERT INTO car VALUES(112, 'TESLA', 120000, 2), (113, 'BMW', 230000, 3), (114, 'AUDI', 250000, 4);
INSERT INTO car VALUES(116, 'TATA', 120000, 5), (119, 'KIA', 230000, 4);

select * from car;

select count(car_name), car_price FROM car GROUP BY car_price;

select count(car_name) as count_number, car_price FROM car GROUP BY car_price;

select count(car_name) from car group by car_price having car_price > 120000;

select count(*) from car group by car_price > 120000;

CREATE TABLE visit (
	entry_date date,
    price int,
    duration int
);

INSERT INTO visit VALUES('2023-5-1', 1000, 20), ('2023-5-1', 2000, 30), ('2023-6-20', 3000, 45), ('2023-6-20', 4000, 60);

--EXTRACT IS MOSTLY USED WHILE DEALING WITH DATE
SELECT EXTRACT(YEAR FROM ENTRY_DATE) AS YAER,EXTRACT(MONTH FROM ENTRY_DATE)
AS MONTH,EXTRACT(DAY FROM ENTRY_DATE) AS DAY1,ROUND(AVG(PRICE),2) FROM VISIT GROUP BY
EXTRACT(YEAR FROM ENTRY_DATE),EXTRACT(MONTH FROM ENTRY_DATE),EXTRACT(DAY FROM ENTRY_DATE) ORDER BY EXTRACT(YEAR FROM ENTRY_DATE),
EXTRACT(MONTH FROM ENTRY_DATE);

select entry_date, ROUND(AVG(PRICE), 2) AS AVG_PRICE FROM visit GROUP BY entry_date HAVING count(*) > 1 ORDER BY entry_date; 

CREATE TABLE employee1 (
	emp_id INT,
	name VARCHAR(20),
    age INT,
    country VARCHAR(40)
);


INSERT INTO employee1 VALUES(100, "Naveen", 25, "India"), (101, "Sahil", 23, "Australia"), (102, "Prasanth", 67, "Pakistan"), (103, "Sami", 12, "England"), (104, "Shair", 89, "Pakistan"), (105, "Fouzan", 45, "India");

select count(country) as country_no, country from employee1 GROUP BY country HAVING count(country) >= 2;

select country, count(country) from employee1 GROUP BY country HAVING max(age) > 30;
