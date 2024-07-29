-- views in SQL
create view abhi as
select * from student;
select * from abhi;
CREATE or REPLACE VIEW adding as
select orders.orderid,customers.customer_name,customers.country
from orders left join customers on orders.customer_id=customers.customers_id;
select * from adding;
drop view adding;
use abhi;
create table my_family(
name varchar(100),
age int,
job_desc varchar(100),
salary int,
dob date
);
alter table my_family drop dob;
insert into my_family values("abhi",12,"java developer",5),("geetha",45,"python developer",10);
-- variables in SQL
delimiter $$
create procedure abhi()
begin
select * from my_family ;
select avg(salary) from my_family;
end $$
delimiter ;
call abhi();
drop procedure if exists geetha;
