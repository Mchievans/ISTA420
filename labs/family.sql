.echo on
.headers on

--Name: Malachi Evans
--File: famliy.sql
--Date: January 7, 2019

drop table if exist family;

create table family (
 id int,
 name text,
 role text,
 sex int
 age int
);

insert into family values (1,"charles","parent",1,68);
insert into family values (2,"bonnie","parent",1,null);
insert into family values (3,"casie","child",0,31);
insert into family values (1,"jackson","child",1,31);

select * from family;
select name, sex from family where sex = 0;
select name, role from family where role = "child";