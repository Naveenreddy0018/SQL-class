creating database and its name
create database RGM;

create table student(
student_id int primary key,
student_name varchar(30) not null,
student_contact int not null,
student_dept varchar(20) not null
);
select * from student;
