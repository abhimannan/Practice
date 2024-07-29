-- basic quaries
show databases;
drop database family;
drop database if exists notpresent;
create database revisiondatabase;
use revisiondatabase;
show databases;
show tables;
desc family;
-- creating a tables;
create table family(
id int primary key,
name varchar(100),
age int,
job varchar(100),
salary int
);
drop table family;
desc family;
alter table family add x int;
alter table family drop x;
insert into family values(5,"geetha",35,"full stack web developer",450000),
(4,"kumar",40,"java developer",550000),
(1,"vijay",19,"data analyst",780000),
(6,"abhi",20,"front-end developer",550000),
(3,"giri",55,"Sales man",550000),
(2,"jaanu",21,"backend developer",650000),
(7,"xyz",45,"java developer",320000);
select * from family;
select name,job,salary from family;
select job,salary from family;
select name,salary from family;
update family
set job="VIP",salary=0 where id=2;
delete from family 
where id=2;
select * from family 
where id<>3;
select * from family 
where id=1 and id=3;
select * from family 
where id=1 or id=3;
select name from family 
where salary>700000;
select name from family 
where salary<400000;
select name from family 
where salary>500000 and salary<800000;
select name from family 
where salary>500000 or salary<800000;
select * from family 
where job in("java developer");
select * from family 
where job not in("java developer");
select * from family 
where salary between 400000 and 500000;
select * from family
limit 3;
select * from family
where name like 'A%';
select * from family
where name like '%i';
select job from family
where name like '__e%';
select distinct(job) from family;
select name from family
order by name desc;
select * from family
order by age;
select * from family
order by age desc;
-- aggregate functions:
select min(salary)min from family;
select max(salary) from family;
select sum(salary) from family;
select avg(salary) from family;
select count(salary) from family;
select char_length(name)min from family;
select concat('RS.',salary) from family;
select ucase(name) from family;
select format(salary,0) from family;

select * from family;
alter table family add hi 
update family 
set hiredate="2022-4-12"
where id=1;
update family
set hiredate="2005-8-10"
where id=3;
update family
set hiredate="2008-11-15"
where id=4;
update family
set hiredate="2024-4-30"
where id=5;
update family
set hiredate="2023-10-28"
where id=6;
update family
set hiredate="2010-12-5"
where id=7;

select now();
select date(now());
select day(now());
select curdate();

select job,avg(salary) from family 
group by job
having count(id)>1;

 -- foreign key 

create table branch(
branch_id int,
location varchar(100),
address varchar(100)
);
drop table branch;
drop table branch;


drop table employee;
alter table employee add branch_id int;
select * from employee;

create view abhi as
select * from family
where age>21;
select * from abhi;
select * from family;
select job,count(salary)
from family
group by job
having count(salary)>1;

select * from family;
select name,job,min(salary) from family where exists (select * from family where job="java developer";

-- Advanced concepts of SQL
/* stored procedure */
delimiter $$
create procedure abhi()
begin
select * from family;

end $$
delimiter ;

call abhi();
drop procedure if exists abhi;

-- variables
delimiter $$
create procedure x(
in jdsc varchar(100),
out total int
)
begin
declare count int default 0;
declare totalmembers int default 0;
select count(id) into total
from family where job=jdsc;

end $$
delimiter ;
drop procedure x;
call x('java developer');
call x('sales man',@total);
select @total;
-- parameters in stored procedure
select * from family;



delimiter $$
create procedure namechange()
begin 
update family
set id=1,job="resigned"
where id=1;

end $$
delimiter ;
call namechange;

-- passing parameters
delimiter $$
create procedure counting(
in jobdesc varchar(100),
out total int
)
begin
declare cnt int default 0;
select count(*) into total from family where job=jobdesc;
end $$
delimiter ;
drop procedure counting;
call counting('java developer',@total);
select cnt;
select * from family;

-- if else:
create table branch(
branch_id int primary key,
br_name varchar(100),
address varchar(200)
);
drop table if exists branch;
insert into branch values(1,"chennai","16ABC road"),(2,"coimbatore","120p block"),
(3,"mumbai","25xyz college"),
(4,"hudrabad","Near to HP petrol bunk"),
(5,"thiruvananthapuram","ABR engineering college");
select * from branch;
delimiter $$
create procedure getbranch(in id int)
begin 
if id=1 then select "chennai" as x;
elseif id=2 then select "coimbatore";
elseif id=3 then select "mumbai";
elseif id=4 then select "hydrabad";
else select "thiruvananthapuram";
end if;
end $$
delimiter ;
call getbranch(1);
drop procedure getbranch;

-- case in SQL
delimiter $$
create procedure branch(in id int)
begin 
case id 
when 1 then select "chennai" as state;
when 2 then select "coimbatore" as state;
when 3 then select "mumbai" as state;
when 4 then select "hydrabad" as state;
when 5 then select "Thiruvananthapuram" as state;
else select "Wrong Id";
end case;
end $$
delimiter ;
call branch(4);
call branch(8);
drop procedure branch;
