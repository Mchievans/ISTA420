.echo on
.headers on

--Name: Malachi Evans
--File: tsqlexercise01.sql
--Date: January 7, 2019

drop table if exists roster;

create table roster(
 id int,
 playername text,
 jersey int,
 position int,
 yards int,
 college text
);

insert into roster values(1,"vick",7,"quaterback",1345,"virginia tech");
insert into roster values(2,"dunn",28,"runningback",1021,"flordia state");
insert into roster values(3,"hall",21,"cornerback",235,"miami");
insert into roster values(4,"crumpler",83,"tightend",938,"North Carolina");
insert into roster values(5,"brooking",56,"linebacker",51,"Georgia tech");

.schema roster

select * from roster;
select playername, jersey, college from roster where jersey = 28;
select playername, position from roster where position = "cornerback";
select college from roster;
select playername, jersey from roster;
select yards, position from roster;