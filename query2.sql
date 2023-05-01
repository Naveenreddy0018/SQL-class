create database HeroVired
create table RGM ( 
Name varchar(30), 
College varchar(20), 
Session varchar(20), 
Contact_no int, 
Address varchar(20)
); 

insert into rgm values("sahil","rgm","sql",687900,"ben");
insert into rgm values("sahvhw","rgm","c",987900,"nan");
insert into rgm values("jbjl","rgm","pyhton",787900,"kur");
insert into rgm values("sahwfyl","rgm","c++",487900,"che");
insert into rgm values("fuewil","rgm","c",187900,"mum");
insert into rgm values("jeil","rgm","django",287900,"kl");
insert into rgm values("fhhil","rgm","java",827900,"nan");
insert into rgm values("hfbue","rgm","pyhton",837900,"kur");
insert into rgm values("euwi","rgm","sql",879300,"ben");

select * from rgm; -- It gives the entire table 

select * from rgm where session = "c"; --selecting the rows where session = c
select Name,College,Session from rgm where session = "c++";  

select * from rgm where session ="sql" and address = "nan"; --selecting session and address in the table
select * from rgm where address = "ben";

select * from rgm where name like "s%"; --selecting a name where the name starts with the letter "s". "%" ddenotes all the letters "_" denotes the first letter or one letter
select * from rgm where name like "sa%"; --like is used to check the names or any attribute or column in the database..
select * from rgm where name like "%l"; 
select * from rgm where name like "_a%";

select * from rgm where name not like "s%"; --not like gives the result which is not present in the databse for example a name which doesnt start with the letter "a".. 
select * from rgm where name not like "%a";
select * from rgm where name not like "_a%";

select * from rgm where session in("pyhton","c"); --in is used to select multiple rows which consists of sessions of pyhton and c in the following example..
select * from rgm where session = "pyhton" Or session = "c"; -- we can use "or" and "in" which can be used in the same way. Both givess the same output...

--Creating a new table named student and adding the columns in it..
create table student(
stu_id int primary key,
stu_name varchar(30) not null,
stu_marks int not null
);

--Inserting the values iin the columns...
insert into student values(100,"naveen",77);
insert into student values(102,"mani",79);
insert into student values(106,"sreenu",85);
insert into student values(108,"suresh",64);
insert into student values(145,"yogi",90);
insert into student values(133,"sahil",69);
insert into student values(128,"tarak",95);
insert into student values(105,"prashanth",86);
insert into student values(103,"hari",89);


select * from student;

--Using relational operators such as >,<,>=,<= in marks column to get the marks of the student usoing these operations...
select * from student where stu_id = 100;
select * from student where stu_marks >70;
select * from student where stu_marks = 89;
select * from student where stu_marks <90;
select * from student where stu_marks >=85;
select * from student where stu_marks <=70;

-- we can use both "!=" or "<>" both are the same...
-- we can use where not keyword in the sql query to specify not equal to method....
select * from student where stu_marks != 69;
select * from student where stu_marks <> 69;
select * from student where not stu_marks = 69;

--Between is used to get the marks from the table between the required values...
select * from student where stu_marks between 80 and 90;

-- To get the values in the ascending order we use a keyword called order by to the query.... By default the values are in ascending order...
select * from student where stu_marks between 80 and 90 order by stu_marks;
--OR
select * from student where stu_marks between 80 and 90 order by stu_marks ASC;

--To get the values in the descending order we have to specify desc in the end of the query... 
select * from student where stu_marks between 80 and 90 order by stu_marks desc;

--Distinct is used to represent the differrent set of values/marks which are present in the column...
select distinct marks from student;

--Count method is used to count the no of values and return the number...
select count(distinct stu_marks) from student;

--Limit method is used to limit the values upto particular extent if there are more values... in the example we have limited the address with 2 so it gives the output as first 2 values containing the address...
select * from rgm where Address = "nan" limit 2;

--Group by is used to group the columns into one and to specify the count the no of oocurence of each particular address.. 
select count(address),address from rgm group by address;
