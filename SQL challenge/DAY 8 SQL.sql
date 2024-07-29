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
-- IF ELSE
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

-- loops in SQL:
delimiter $$
create procedure loopex()
begin
declare i int;
declare str varchar(100);
set str='';
set i=1;
looplabel:loop
if i>10 then
leave looplabel;
end if;
set str=concat(str,i,'');
set i=i+1;
end loop;
select i;
end $$
delimiter $$
call loopex;
drop procedure loopex;

delimiter $$
create procedure loopexample()
begin
declare i int;
declare x varchar(100);
set i=1;
set x='';
looplabel:loop
if i>10 then 
leave looplabel;
end if;
set x=concat(x,i,' ');
set i=i+1;
end loop;
select x;
end $$
delimiter ;
call loopexample;
drop procedure loopexample; 
-- WHILE
delimiter $$
create procedure loopexample()
begin
declare i int;
declare x varchar(100);
set i=1;
set x=''; 
while i<=10 do
set x=concat(x,i,' ');
set i=i+1;
end while;
select x;
end $$
delimiter ;
call loopexample;