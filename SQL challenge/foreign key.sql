show databases;
use abhi;
create table branch(
branch_id int primary key auto_increment,
location varchar(200),
address varchar(200)
);
insert into branch values(1,"chennai","12,near to high way"),(2,"coimbator","left to HP");
select * from branch;
create table x(
emp_id int,
emp_name varchar(100),
salary int,
branch_id int,
constraint abhi foreign key(branch_id) references branch(branch_id)
);
alter table emp_info
drop foreign key abhi;
insert into emp_info values(1,"abhi",120000,2),(2,"geetha",45000,1);
select * from emp_info;
select * from branch;
show index from emp_info;
create index anme_index on emp_info(emp_name);
alter table emp_info
drop index anme_index;
select * from branch;
update branch
set location="mumbai"
where location="chennai";
truncate table branch;

















































