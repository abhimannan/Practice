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
select * from my_family;
select avg(salary) from my_family;
end $$
delimiter ;
call abhi();
drop procedure if exists geetha;
-- passing parameters
-- in,out,inout parameters
delimiter $$
create procedure customercount(in nameemp varchar(10),out total int)
begin
declare total int default 0;
select * from my_family
where name=nameemp;
select count(name) into total from my_family;
end $$
delimiter ;
call customercount("abhi",@total);
select @total;
select * from my_family;
drop procedure customercount;
use abhi;

-- for loop using leave :

delimiter $$
create procedure forloop()
begin
declare i int;         -- declaring variables
declare str varchar(100);
set i=1;               -- set values
set str='';    
looplabel:loop          -- giving label for the loop 
if i>10 then            -- starting of the if statement
	leave looplabel;
end if;                 -- ending of th eif statement
set i=i+1;              -- incrementing i value
    set str=concat(str,i,'');    -- concatinating the i value
    select i;   
end loop;
                        -- end of the loop
end $$
delimiter ;
call forloop;                    -- call the procedure
drop procedure  forloop;         -- to delete the procedure 

-- while loop 

delimiter $$
create procedure whileloop()
begin 
declare i int;
declare str varchar(200);
set i=1;
set str=1; 


 end $$
delimiter $$



