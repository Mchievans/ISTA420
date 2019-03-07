.echo on
.headers on

--Name: Malachi Evans
--File: falconsroster.db
--Date: January 7, 2019

drop table if exists roster;

create table roster(
 id int,
 playername text,
 jersey int,
 postion int,
 depth int
);

insert into roster values(1,"vick",7,"quaterback",1);
insert into roster values(2,"dunn",28,"runningback",1);
insert into roster values(3,"hall",21,"cornerback",1);
insert into roster values(4,"crumpler",83,"tightend",1);
insert into roster values(5,"brooking",56,"linebacker",1);

select * from roster;
select playername, jersey from roster where jersey = 7;
select playername, postion from roster where postion = "cornerback";