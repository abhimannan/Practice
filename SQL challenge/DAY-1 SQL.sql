-- Basic queries in SQL
create database ABR;
show databases;
use ABR;
drop database ABR;
drop table sample;
show tables;
alter table sample add salary int;
alter table sample drop salary;
create table sample(x varchar(100));
select * from sample;
-- creattion of table
-- creating a table for student details
use ABR;
create table student(
id int primary key,
std_name varchar(200),
age int,
address varchar(100),
marks int
);
insert into student values
(548,"abhi",19,"vinayakapuram,kpm(m),chittor(D)",65),
(549,"geetha",20,"adavibudugur,kpm(m),vijayavada(D)",85),
(550,"sathish",21,"mangaloor,shanthipuram(m),telangana(D)",52),
(578,"vijay",18,"adavibudugur,gudipalli(m),telangana(D)",36),
(598,"kumar",22,"vinayakapuram,veliyue(m),chittor(D)",48);
select distinct * from student;



