-- where clause
use ABR;
create table employee(
emp_id int primary key,
emp_name varchar(100),
job varchar(100),
salary varchar(100)
);
drop table employee;
insert into employee values
(548,"abhi","java developer",525000),
(658,"geetha","python developer",585600),
(632,"kumar","android developer",365760),
(985,"vijay","SQL developer",335020),
(452,"sathish","java developer",915000),
(325,"ashok","full stack developer",2250500),
(321,"saranya","java developer",155025),
(159,"hema","python developer",655050);
select * from employee;
select * from employee
where job="java developer";
select * from employee
where emp_id=321;


-- using where clause with <,>,<=,>=,AND,OR,<>,IN,NOT IN,BETWEEN
select * from employee
where salary>=1000000;
select * from employee
where salary<=500000;
select * from employee
where salary>500000 and salary<100000;
select * from employee
where job="python developer" or job="java developer";
select * from employee
where job<>"java developer";
select * from employee
where job in("SQL developer","full stack developer");
select * from employee
where job not in("java developer");
select * from employee
where salary between 500000 and 1000000;
-- limit 
select * from employee
limit 2;
select * from employee
where job="java developer"
limit 3;






-- wild cards :- %,_
select * from employee
where emp_name like 'a%';
select * from employee
where emp_name like '%a';
select * from employee
where emp_name like '__r%';
select * from employee 
where emp_name like '__e%';

















