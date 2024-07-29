show databases;
create database abhi;
use abhi;
create table employee_details(
name varchar(100),
id int primary key,
salary int
);
insert into employee_details values("abhi",548,50000);
select * from employee_details;
insert into employee_details values("sathish",543,56000),("geetha",658,70000),("vijay",358,89546),("kumar",985,145852);
describe employee_details;
alter table employee_details add location varchar(451);
alter table employee_details drop location;
select * from employee_details;
select id from employee_details;
select salary from employee_details;
select * from employee_details 
where salary>60000;
select * from employee_details
where salary<50000;
select * from employee_details;
select * from employee_details 
where id=548;
select * from employee_details 
where salary>50000 and salary<60000;
select distinct * from employee_details
where name="abhi" or name="sathish";
select * from employee_details
where id not in(548,658);
select distinct * from employee_details
limit 3;
select * from employee_details
where name like 's%';
select * from employee_details
where name like '%m%';
select * from employee_details
where name like '%h';
select distinct * from employee_details
where name like '__t%';

update employee_details
set salary=70000
where salary=50000;

delete from employee_details
where name="abhi";
describe employee_details;
show databases;


select distinct * from employee_details
order by name;
select distinct * from employee_details
order by salary;
select distinct * from employee_details
order by salary desc;
select distinct * from employee_details
order by id desc;

select count(*)no_of_emps from employee_details;
select sum(salary)total_salary from employee_details;
select avg(salary) from employee_details;
select max(salary) from employee_details;
select min(salary) from employee_details;
select ucase(name) from employee_details;
SELECT CHAR_LENGTH(NAME) FROM employee_details;
SELECT CONCAT("Rs ",SALARY) FROM employee_details;
select now();
select date(now());
select curdate();
select date_format(curdate(),"%d:%m:%y");
use abhi;
select * from employee_details;
















