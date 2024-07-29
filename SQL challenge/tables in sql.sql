show databases;
use abhi;
create table company(
emp_id int,
emp_name varchar(100),
job_desc varchar(100),
salary int
);
insert into company values(123,"abhi","full stack web developer",700000),
(187,"sathish","java developer",1000000),
(154,"arunkumar","java developer",400000),
(145,"giri","python developer",500000),
(122,"ashok","Hr",600000),
(154,"geetha","analyst",800000),
(149,"vijay","Hr",400000),
(143,"abhi","java developer",700000),
(182,"kumar","python developer",300000),
(147,"no name","java developer",500000),
(542,"bhuvanesh","python developer",900000),
(320,"saveena","java developer",400000),
(369,"sruthi","python developer",300000)
;
select * from company;

select job_desc,sum(salary) from company
group by job_desc
order by job_desc;
select job_desc,count(salary) from company
group by job_desc;
select job_desc,max(salary) from company
group by job_desc;
select job_desc,min(salary) from company
group by job_desc;
select job_desc,count(salary) from company
group by job_desc;
select job_desc,count(salary) from company
group by job_desc
having count(salary)>2;
select job_desc,avg(salary) from company
group by job_desc
having avg(salary)<600000;
;
select * from company;


