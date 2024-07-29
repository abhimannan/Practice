select * from employee;
use abr;
-- functions:avg(),sum(),max(),min(),count();
select distinct count(*)TOTAL from my_family;
select distinct sum(salary)TOTAL_SALARY from my_family;
select distinct max(salary)MAX_SALARY from my_family;
select distinct MIN(SALARY)MIN_SALARY from my_family;
select distinct AVG(SALARY)AVERAGE_SALARY from my_family;
-- string functions:-
select ucase(emp_name) from employee;
select char_length(job) from employee;
select concat("RS ",salary) from employee;
select format(salary,0) from employee;
-- date
select curdate();
select now();
select date(now());
select date_format(curdate(),"%d-%m-%y");
-- constraints : rules
create table constraintexp(
emp_id int primary key auto_increment unique,
emp_name varchar(100) not null,
age int default 0,
salary int default 0
);
select * from constraintexp;
alter table constraintexp add pf_amount varchar(100);
alter table constraintexp drop age;


