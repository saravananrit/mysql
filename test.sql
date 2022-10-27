drop database if exists testDB;

create database testDB;

use testDB;

create table Customers (
customer_id int primary key, first_name varchar(100),
last_name varchar(100), age int,
country varchar(100)
);

create table Orders (
order_id int primary key, item varchar(100),
amount int, customer_id int,
foreign key(customer_id) references
customers(customer_id) 
);


create table Shippings(
shipping_id int primary key, status varchar(100),
customer int, foreign key(customer) references
customers(customer_id)
);



insert into customers values(
1,'John', 'Doe', 31, 'USA'),
(2,'Robert', 'Luna', 22, 'USA'),
(3,'David', 'Robinson',22,'UK'),
(4,'John', 'Reinhart',25,'UK'),
(5,'Betty','Doe',28,'UAE');


insert into orders values(
1,'Keyboard',400,4),
(2,'Mouse',300,4),
(3,'Monitor',12000,3),
(4,'Keyboard',400,1),
(5,'Mousepad',250,2);


insert into shippings values(
1,'Pending',2),
(2,'Pending',4),
(3,'Delivered',3),
(4,'Pending',5),
(5,'Delivered',1);

 