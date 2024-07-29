-- GROUP BY,HAVING
select * from employee;
select job,avg(salary) from employee
group by job
having count(job)>1;
-- foreign key
-- creating branch table
create table branch_details(
branch_id int primary key,
branch_name varchar(100),
location varchar(100)
);
-- creating employee table
create table employee_details(
emp_id int primary key unique,
emp_name varchar(100),
age int,
salary int,
pf_amount int,
branch_id int,
constraint abhi foreign key(branch_id) references branch_details(branch_id)
);
drop table employee_details;
alter table employee_details drop foreign key abhi;
