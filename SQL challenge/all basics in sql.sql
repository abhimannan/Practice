-- single line comment
/* multiple 
line comment*/
create database family;
drop database family;
show databases;
use family;
show tables;
create table my_family(
name varchar(100),
age int,
job_desc varchar(100),
salary int,
dob date
);
alter table my_family drop dob;
select * from my_family;
insert into my_family values("abhi",19,"full stack web developer",800000),("geetha",35,"java developer",1000000),
("vijay",18,"data scientist",1200000),("kumar",40,"analyst",500000),("sathish",20,"analyst",4500000),
("saveena",52,"java developer",5400000),
("sruthi",32,"data scientist",300000),
("sanjay",54,"full stack web developer",1400000),
("sathya",56,"data scientist",250000),
("uday",49,"java developer",6000000),
("saveena",35,"full stack web developer",12000000),
("aravan",65,"analyst",8500000);
select distinct * from my_family;
select distinct * from my_family 
where job_desc="full stack web developer";
select distinct * from my_family
where salary<500000;
select distinct * from my_family
where age<25;
select distinct * from my_family
where job_desc="full stack web developer" and age<25;
select distinct * from my_family;
where job_desc="full stack web developer" or age<25;
select distinct * from my_family
where name in("geetha");
select distinct * from my_family
where name not in("geetha");
select distinct * from my_family
where salary between 500000 and 1000000;
select distinct * from my_family
where age between 30 and 40
limit 5;
show databases;
use family;

select distinct * from my_family
where name like "a%";
select distinct * from my_family
where name like '%a';
select distinct * from my_family
where name like '__a%';
update my_family
set job_desc='MERN stack developer',
where name='abhi';
delete from my_family
where age=18;
select distinct * from my_family
order by name desc;
select distinct * from my_family
order by salary desc;
select distinct * from my_family 
order by age;
select distinct * from my_family
order by(case job_desc
when "full stack web developer" then 1,
when "data scientist" then 2,
else 100
end
);

-- functions:avg(),sum(),max(),min(),count();
select distinct count(*)TOTAL from my_family;
select distinct sum(salary)TOTAL_SALARY from my_family;
select distinct max(salary)MAX_SALARY from my_family;
select distinct MIN(SALARY)MIN_SALARY from my_family;
select distinct AVG(SALARY)AVERAGE_SALARY from my_family;

SELECT ucase(name) from my_family;
select * from my_family; 
SELECT char_length(name)LENGTH from my_family;
select concat("RS ",salary) from my_family;
select format(salary,2) from my_family;
select * from my_family;
alter table my_family add join_date date;
alter table my_family drop join_date;
update my_family
set join_date="2025-05-05"
where job_desc="java developer";
delete from my_family
where age=35;
select now()TODAY;
select date(now());
select time(now());
select curdate();
select current_timestamp();
select date_format(curdate(),"%d-%m-%y");
select datediff(curdate(),"2024/03/14") days;
select date_add(curdate(),interval 1 day);
select * from my_family;
select name,avg(salary),ucase(name) from my_family
group by name
having avg(salary)>250000;

create table branch(
branch_id int,
location varchar(200),
address varchar(100)
);

insert into branch values(1,"chennai","abr vinayaka temple"),(2,"mumbai","kuppam");
create view geetha as
select * from branch;
select * from geetha;
create table student(
name varchar(100),
age int,
marks int,
branch_id int,
constraint geetha foreign key(branch_id) references branch(branch_id) on delete cascade
);
drop table student;
insert into student values("abhi",20,65,1),("vijay",19,"98",2);
select * from student;
select * from branch;
delete from student 
where age=20;
/*alter table student
drop foreign key geetha;*/
show databases;
use family;

