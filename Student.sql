--Drop DATABASE
drop database if exists student;

--Create DATABASE
create database student;

--switch to the DATABASE
use student;

--create TABLEw
create table student_reg (sid int primary key,
name varchar(45),per decimal(8,2),city varchar(45));

--Insert values into TABLE
insert into student_reg(sid,name,per,city)
 values (1,'Harry',95.26,'Pune'),
 (2,'Mac',98.45,'Nashik'),
 (3,'Rox',75.69,'Nagar'),
 (4,'Shree',85.65,'Thane'),
 (5,'Seema',89.45,'Mumbai');

--Create Table
create table student_course(cid int,sid int,
foreign key(sid) references 
student_reg(sid),cname varchar(45),
branch varchar(45));

--Insert values into TABLE
insert into student_course(cid,sid,cname,branch)
values (1,1,'Web designing','Mumbai'),
(2,2,'Python','Pune'),
(3,4,'PHP','Thane'),
(4,5,'DBMS','Nashik'),
(3,1,'PHP','Thane');


--Find the students who are allocated with 
--the course
select sr.name,sc.cname from student_reg
sr join student_course sc on sr.sid = sc.sid;

--Find the students who are allocated with a course
--and whose branch and city are the same.
select sr.name,sc.cname from student_reg sr
join student_course sc on sr.sid = sc.sid 
where sc.branch=sr.city;

--Find students who are allocated with a course
--and whose percentages are greater than 85.
select sr.name,sc.cname from student_reg sr
join student_course sc on sr.sid = sc.sid 
where sr.per>85;

--From the student_course table find the student
--who is enrolled for at least two
--courses.(Hint:self join)
select s1.sid from student_course s1, student_course s2
where s1.sid=s2.sid group by s1.sid having count(s1.sid)>=2;


