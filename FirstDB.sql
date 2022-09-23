--clear the screen
\! cls;
--show DATABASE
show databases;

--Drop DATABASE
drop DATABASE if EXISTS game;

--Create DATABASE
create database game;

--Change to DATABASE game;
use game;

--CREATE TABLE
create table Players(Id int not null auto_increment
primary key, PlayerName varchar(45) not null,
Matches int not null,
Runs int not null);

--Describe Table Players
desc Players;

--Show the table creation
show create table Players;

--Insert values into Table Players
insert into Players(PlayerName,Matches,Runs)
values 
('Allen',10,401),
('Peter',50,1802),
('Denis',45,1308),
('Tom',36,896),
('Michael',45,2856);


--show all Players
select * from Players;

select * from Players where id=5;

select * from Players where id=1 or id=3;

select * from Players where runs >=1300;


--Alter TableName(Add ColumnName and Datatype)
Alter table Players
add Email varchar(255);

--Show TABLE
desc Players;

--Drop the column Email
Alter table Players
drop column Email;

--Show Table;
desc Players;
 
--Modify Column datatype
Alter table Players
modify column Id varchar(3);

--Rename Table 
Rename table Players to Demo;

--Show the TABLES
show tables;

--Rename Table
Rename table Demo to Players;

--Remove / Delete all Rows/Records from the TABLE
Truncate table Players;


--Adding the column Age 
Alter table players add age int;

--Adding the check CONSTRAINTS
alter table players add check(age>=18);

--Describe TABLE
desc Players;

--Checking the constraints by inserting the VALUES
insert into players(PlayerName,Matches,Runs,Age)
values
('Rahul',210,2500,17);--You will get error

--Adding default CONSTRAINTS
alter table players alter city set 
default 'Bangalore';

--Dropping the constraints DEFAULT
alter table Players alter city drop default;


--Creating one more TABLE
CREATE TABLE parts (
    part_no VARCHAR(18) PRIMARY KEY,
    description VARCHAR(40),
    cost DECIMAL(10,2 ) NOT NULL CHECK (cost >= 0),
    price DECIMAL(10,2) NOT NULL CHECK (price >= 0)
);

--show tables;
SHOW CREATE TABLE parts;

---create tables with ENUM (Enumeration)
CREATE TABLE tickets (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    priority ENUM('Low', 'Medium', 'High') NOT NULL
);

--Inserting values into the table Tickets
INSERT INTO tickets(title, priority)
VALUES('Scan virus for computer A', 'High');

--Inserting values into the table Tickets
INSERT INTO tickets(title, priority)
VALUES('Upgrade Windows OS for all computers', 1);

--Inserting values into the table Tickets
INSERT INTO tickets(title, priority)
VALUES('Install Google Chrome for Mr. John', 'Medium'),
      ('Create a new user for the new employee David', 'High');       

--Inserting values into the table Tickets
INSERT INTO tickets(title)
VALUES('Refresh the computer of Ms. Lily');

--Show records for Hight Priority
SELECT * FROM tickets WHERE priority = 'High';

--show records
SELECT * FROM tickets WHERE priority = 2;

--Single Update all Runs at a time using Update STATEMENT
update Players set runs = 10000;

--Show records
select * from Players

--Update Runs for Particular RECORD
update Players set runs = 5000 where id=1;

--Show records
select * from Players

--Multiple Update 
update Players set PlayerName='John', Matches=25
where Id=4;

--show records
select * from Players;

--Delete records using Where Clause with condition
delete from Players where Id=1;

--show records
select * from Players;

--create table Players1
CREATE TABLE Players1(
   ID INT,
   First_Name VARCHAR(255),
   Last_Name VARCHAR(255),
   Date_Of_Birth date,
   Place_Of_Birth VARCHAR(255),
   Country VARCHAR(255),
   PRIMARY KEY (ID)
);

--Inserting VALUES
insert into Players1 values(1, 'Shikhar', 'Dhawan', DATE('1981-12-05'), 'Delhi', 'India');
insert into Players1 values(2, 'Jonathan', 'Trott', DATE('1981-04-22'), 'CapeTown', 'SouthAfrica'); 
insert into Players1 values(3, 'Kumara', 'Sangakkara', DATE('1977-10-27'), 'Matale', 'Srilanka');


--commit the changes
commit;
set autocommit=0;


--Delete All Records without where clause and condition
delete from Players1;

--show records 
select * from Players1;

--rollback or undo changes
--rollback Players1;


