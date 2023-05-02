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
