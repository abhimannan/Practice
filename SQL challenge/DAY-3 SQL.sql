-- update,delect commands
select * from employee;
update employee
set job="full stack web developer",emp_name="abhi"
where emp_id=548;
select * from employee;
update employee
set salary=2400000,job="full stack developer"
where emp_id=548;
select * from employee;
delete from employee
where emp_id=159;
select * from employee;
-- destinct,order by command
select distinct(job) from employee;
select * from employee 
order by emp_name;
select * from employee 
order by emp_id;
select * from employee 
order by salary desc;
select job from employee
order by job;
