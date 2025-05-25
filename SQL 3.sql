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
 
 select o.oid, o.city , o.pid, p.pid, p.pname from orders1 as o
 inner join product as p where o.pid=p.pid;
 
 select o.oid, o.city , o.pid, p.pid, p.pname from orders1 as o
 LEFT join product as  p ON o.pid=p.pid;
 
 
 