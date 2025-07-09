select @@autocommit;
set @@autocommit=0;

drop table test;
drop database tushar;
create database tushar;
use tushar;
create table test(id int);
insert into test values(1);
commit;
insert into test values(500);
commit;
update  test set id = 99;
rollback;
select * from test; 

-- TRASNSACTION 
-- transaction start : DML, start transaction
--  end => commmit, rollback, DDL, DCL
insert into test values(600);
create table y1(a int);
rollback;
select * from test;
commit;

insert into test values(90),(91);
  delete from test where id = 1;
savepoint test_chpoint; 
update test set id = 10000;
rollback to test_chpoint;
select * from test;
commit;

SET autocommit = 1;
select  * from test;
delete from test;
select @@autocommit;
rollback;
start  transaction;
update test set id = 9999999;
rollback;
select * from test;

-- view -- a virtual table to make query simple--
-- complex query easy-- 
-- doesnot store data in dataset-- 
-- virtual data => query of the base table
-- define data accesibility

use tushar;
create table t_actor as 
select * from sakila.actor limit 20;
select * from t_actor;

create view actor_view as
select actor_id, first_name from t_actor;
select * from actor_view;


create view actor_view2 as
select actor_id, first_name ,last_name,last_update from t_actor;
select * from actor_view2;

create view maxactor_id as
select actor_id, first_name ,last_name,last_update from t_actor;
select * from maxactor_id;

