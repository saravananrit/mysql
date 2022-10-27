--Drop DATABASE
drop DATABASE if EXISTS game;

--Create DATABASE
create database game;

--CREATE TABLE
create table Players(Id int not null auto_increment
primary key, PlayerName varchar(45) not null,
Matches int not null,
Runs int not null);

--Insert values into Table Players
insert into Players(PlayerName,Matches,Runs)
values 
('Allen',10,401),
('Peter',50,1802),
('Denis',45,1308),
('Tom',36,896),
('Michael',45,2856);

