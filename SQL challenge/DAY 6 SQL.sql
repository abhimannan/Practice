-- joins 
-- creating Orders table
use abr;
create table orders(
orderid int,
customer_id int primary key,
order_date date
);
insert into orders values
(10308,2,"1996-09-18"),
(10309,37,"1996-09-19"),
(10310,77,"1996-09-20");
select * from orders;
-- creating customers table
create table customers(
customers_id int,
customer_name varchar(100),
contact_name varchar(100),
country varchar(100)
);
insert into customers values
(1,"alfreds futterkiste","maria anders","germany"),
(2,"ana trujillo emparedados y helados","aana trujillo","mexico"),
(3,"antinio moreno taqueria","anqtonio moreno","mexico");
select * from customers;
-- joining (order,customer) tables using inner join
select orders.orderid,orders.customer_id,orders.order_date,customers.customers_id,customers.customer_name,
customers.country from orders inner join customers where orders.customer_id=customers.customers_id;
-- left jon
select orders.customer_id,customers.customer_name
from orders left join customers on orders.customer_id=customers.customers_id;
-- right join
select customers.customer_name,customers.country from orders
 right join customers on orders.customer_id=customers.customers_id;
-- subqueries:exists,all,any
select customer_name from customers
where country=(select customer_name from customers where country="germany");
select * from student;
-- exists
select std_name,marks from student
where exists (select * from student where id=598);
-- any
select std_name from student
where id=any(select id from student where marks<50);
-- all
select id,std_name from student
where id<>all(select std_name from student where std_name in("abhi")); 
