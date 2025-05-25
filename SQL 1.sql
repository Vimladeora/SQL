select database();

use sakila;

select database();

show databases;

show tables;

select * from actor;
select actor_id ,first_name,last_name from actor;

describe actor; 
select * from actor where actor_id = 2;
select * from actor where first_name = 'ED';
select  * from actor where first_name = 'ED' or actor_id > 100;

select * from actor where actor_id >10 and actor_id <25;

select * from actor where acot_id between 2 and 5 ;

select * from actor where actor_id in (2,5,700000);

select * from actor where first_name like "N";

select * from actor where first_name like "%T";

select * from actor where first_name like "S%";

select * from actor where first_name like "E_";

select * from actor where first_name like "__";

select * from actor where first_name like "_A%";

select  * from actor where actor_id = 3 or actor_id = 5 or actor_id= 7;

select * from actor where actor_id  between 7 and 3;

select * from actor where actor_id not between 3 and 100;
							
select * from actor where first_name like "_E%R";

select * from actor where first_name like "%NN%";

select * from actor where first_name like '__' and  last_name like '%S__';

select * from actor where first_name like '_A%T%H__';

select * from actor where first_name like '____';

Select distinct (first_value) from actor;

select count(first_name) from actor;

select first_name ,lower(first_name) from actor;

select first_name ,lower(first_name),upper(first_name) from actor;


select first_name ,lower(first_name),upper(lower(first_name)), length(first_name) from actor;

select first_name , substr(first_name,2) from actor ;

select first_name, substr(first_name,3 ),substr(first_name,2,3)
 from actor;
 
 select first_name ,instr(first_name, 'E') from actor;
 
 select first_name, last_name, concat (first_name,' - ', last_name,'$') from actor;
 
  select first_name, last_name, concat_ws (' - ',first_name, last_name,'$') from actor;
  
  select first_name, trim('           hey      ') from actor;
  
  select first_name ,rpad(first_name,6,'$') from actor; 

  select first_name ,lpad(first_name,6,'$') from actor;
  
  select sysdate(),curdate(), current_timestamp(),now() from  dual;

 select now(), adddate(now(), 2) from dual;
 
 select now(), adddate(now(),interval 2 month) ;
 
  select now(), adddate(now(),interval 2 week) ;
  
  select datediff( '2025-05-16 17:19:29' , '2025-05-30 17:16:58') from dual;
  
  select month (now() ), year(now() )from dual;
  
  select  extract(year from now()) from dual;

  select  extract(month from now()) from dual;

select now(), date_format (now(),'this year is %Y') from dual;

select 24.325,round(24.625), round(24.685,1) from dual;

select round(364.32 ,- 2) from dual;

select round(364.32 ,- 2) from dual;

select round( 364.37 ,1) ,truncate (364.37,-1) from dual;

select mod(11,2),pow(2,3), floor(10.99999),ceil(19.0001) from dual;

use sakila;
select * from actor ;
select first_name  , actor_id *10 from actor where first_name  = "NICK";

select actor_id, first_name, last_name , when mod( actor_id ,2) = 0 then concat (first_name,last_name) else concat (first_name ,'$') from actor;

select * from actor;

select  * from actor  order by first_name;

select * from actor order by first_name ,actor_id desc;

select actor_id , actor_id+10 as "newactor" from actor;

select * from payment;

select distinct(customer_id) from payment;



select count(customer_id), count(distinct(customer_id)) from payment; 

select count(customer_id), count(distinct(customer_id)), count(customer_id) 
-count(distinct(customer_id)) as repetativeCustomer from payment; 

select count(amount), sum(amount), avg(amount), max(amount), min(amount) from payment;

-- gruop by 
-- similar values ka gruop

select * from payment where customer_id = 1;

select sum(amount)  from payment where customer_id = 1;

select customer_id from payment group by customer_id;

select customer_id ,count(amount) ,sum(amount) from payment group by customer_id;

select * from payment;                            
select amount ,count(amount) from payment group by amount order by amount; 

select staff_id, count(rental_id), sum(amount) from payment group by staff_id;    

select payment_date,month (payment_date) from payment;

select count(customer_id) from payment;

select count(customer_id) , max(rental_id), min(rental_id), avg(amount), month(payment_date) from payment group by(month(payment_date));
select * from payment;
select month(payment_date) from payment;
select count(customer_id),max(rental_id), min(rental_id), avg(amount),month(payment_date) from payment group by month(payment_date);


CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

INSERT INTO orders (order_id, customer_name, email, order_date, total_amount) VALUES
(101, 'John Doe', 'john.doe@gmail.com', '2024-12-10', 250.00),
(102, 'Alice Smith', 'alice@yahoo.com', '2024-12-15', 300.00),
(103, 'John Doe', 'john.doe@gmail.com', '2025-01-20', 450.00),
(104, 'Bob Lee', 'bob.lee@hotmail.com', '2025-02-01', 150.00),
(105, 'Alice Smith', 'alice@yahoo.com', '2025-02-10', 200.00),
(106, 'Jane Miller', 'jane.miller@gmail.com', '2025-03-05', 400.00),
(107, 'Sam Wilson', 'sam.wilson@gmail.com', '2025-01-15', 180.00),
(108, 'Emily Davis', 'emily_davis@yahoo.com', '2025-02-18', 220.00),
(109, 'Michael Chen', 'michael.chen@outlook.com', '2025-03-22', 340.00),
(110, 'Rachel Green', 'rachel.green@gmail.com', '2025-03-28', 190.00),
(111, 'John Doe', 'john.doe@gmail.com', '2025-04-05', 310.00),
(112, 'Alice Smith', 'alice@yahoo.com', '2025-04-12', 270.00),
(113, 'Jane Miller', 'jane.miller@gmail.com', '2025-05-03', 380.00),
(114, 'Sam Wilson', 'sam.wilson@gmail.com', '2025-06-14', 500.00),
(115, 'Bob Lee', 'bob.lee@hotmail.com', '2025-07-01', 420.00),
(116, 'Michael Chen', 'michael.chen@outlook.com', '2025-08-19', 610.00),
(117, 'Emily Davis', 'emily_davis@yahoo.com', '2025-09-10', 275.00),
(118, 'Rachel Green', 'rachel.green@gmail.com', '2025-10-05', 195.00),
(119, 'John Doe', 'john.doe@gmail.com', '2025-11-21', 330.00),
(120, 'Jane Miller', 'jane.miller@gmail.com', '2025-12-25', 490.00);

select * from orders;
select count(order_id) from orders where customer_name ='john doe';

select customer_name,count(order_id)  from orders group by customer_name ;
SELECT customer_name,substr(email, '@', 1) as username from orders;

select month(order_date), count(order_id)  from orders group by month(order_date);

select month(order_date) as month, count(order_id) as total_orders from orders where year(order_date) = 2025 group by month(order_date) order by month;

select customer_name , year(order_date), count(order_id) ,sum(total_amount)  from orders group by customer_name ,year(order_date);

select substr(email, '@', -1) AS domain, count(order_id) 
as total_orders from orders group by domain;

select order_id, customer_name, order_date, 
case when month(order_date) between 3 and 5 then 'spring'
 when month(order_date) between 6 and 8 then 'summer' 
 when month(order_date) between 9 and 11 then 'autumn'
 else 'winter' end as season from others;

  
select  customer_name, MAX(order_date) from orders group by customer_name;


use sakila;

select  * from actor; 

select * from film_actor;

select f.film_id, f.actor_id from film_actor;
join actor as a;

create database regex;
use regex;
create table product( pid int, pname varchar(20), price int);
insert into product values(10,"Iphone",20000), (11,"TV",10000),
(12,"LED",3000), (13,"Jeans",800);

select * from product;

create table orders1( oid int, city varchar(20), pid int);
insert into orders1 values(124111,"Jaipur",10), (124112,"GOA",11),
(145631,"Manali",12), (59869011,"Raipur",16);
select * from orders1;

select o.oid, o.city , o.pid, p.pid, p.pname from orders1 as o
join product as p where o.pid=p.pid;

select o.oid, o.pid, o.city ,p.pid, p.pname from orders as  o inner join product as p where  o.oid  = p.pid;

-- self join 
use sakila;

create table employee1 ( eid int, ename varchar(20), manager_id int );
insert into employee1  values (10,"tushar", null),(11,"aman",12),(12,"adi",10),(13,"sakshi",11);

select * from employee1;
select  emp.eid ,emp.ename, emp.manager_id, manager.eid , manager.ename from employee1 as emp
join employee1  as manager where emp.manager_id = manager.eid; 

use sakila;

select * from payment;
select customer_id from payment group by customer_id;


select customer_id from payment where customer_id> 3 group by customer_id;

select customer_id,count(payment_id) from payment group by customer_id having count(payment_id)> 30;

select customer_id,count(payment_id) from payment where customer_id not in (2,3) group by customer_id  having count(payment_id)> 35;

-- get the  no. of payments for each amount 
-- count the total no. of cutomer u have done the payment for each amount accept amount 2.99 and 0.99
-- get the sum of rental id and the total amt of payment only for amt 2.99, 0.99 and 5.99 and the sum of rental id should be greater than 1000

select count(payment_id), amount from payment group by amount;

select count(customer_id),amount from payment where amount not in(2.99,0.99) and group by amount;


select sum(rental_id) , sum(amount), amount from payment where amount in (2.99, 0.99 , 5.99) group by amount having sum(rental_id)>1000;

select * from actor;
select * from film_actor;


use sakila;
-- create statement
create table test (id int);
insert into test values(10);
select * from test;


-- 1byte ==> 8 bit 2^8 ==> 256
create table test2(id tinyint);
insert into test values(127);
select * from test2;


create table test3(id tinyint unsigned);
insert into test values(255);
select * from test3;

create table test4 (id decimal(5,2));
insert into test4 values(845);
insert into test4 values(845.74125);
insert into test4 values(8454.7);
select * from test4;

create table test5( fname char(5) );
insert into test5 values ('hi');
insert into test5 values ('higello');
select * from test5 ;

create table test5( fname varchar(5) );
insert into test5 values ('hi');
insert into test5 values ('hihello');
select * from test5 ;

create table test7( dob date );
insert into test7  values('2023-12-01');
insert into test7 values ('01-01-2025')
select * from test7;



use sakila;
select * from payment ; 
select payment_id,  amount ,staff_id
from payment
where staff_id =(select staff_id from payment where rental_id = 1422);
















   