-- 1 a
select * from client full join dealer on client.dealer_id = dealer.id;
-- 1 b
select dealer.id, dealer.name, c.name, c.city, c.priority, s.id, s.date, s.amount
from dealer left join client c on dealer.id = c.dealer_id
    left join sell s on c.id = s.client_id where c.priority is not null;
-- 1 c
select d.id, d.name, c.id, c.name from dealer d inner join client c on d.location = c.city;
-- 1 d
select s.id, s.amount, c.name, c.city from sell s inner join client c on c.id = s.client_id
where s.amount between 100 and 500;
-- 1 e
select * from dealer full join client c on dealer.id = c.dealer_id;
-- 1 f
select c.name, c.city, d.name, d.charge from client c
join dealer d on d.id = c.dealer_id;
-- 1 g
select c.name, c.city, dealer from client c
join dealer on dealer.id = c.dealer_id where dealer.charge>0.12;
-- 1 h
select c.name, c.city, s.id, s.date, s.amount, d.name, d.charge
from client c left outer join sell s on c.id = s.client_id
left join dealer d on d.id = s.dealer_id;
--1 i
select c.name, c.priority, d.name, s.id, s.amount
from client c left outer join sell s on c.id = s.client_id
left join dealer d on d.id = s.dealer_id where s.amount>2000 and c.priority is not null;


-- 2 a
create view A2 as
    select date, count(distinct client_id), avg(amount), sum(amount)
from sell group by date;
drop view A2;
select * from A2;
-- 2 b
create view B2 as
    select date, sum(amount) as maxsum from sell group by date order by maxsum desc limit 5;
drop view B2;
select * from B2;
-- 2 c
create view C2 as
    select d, count(s.amount), avg(s.amount), sum(s.amount)
from dealer d join sell s on d.id = s.dealer_id group by d;
drop view C2;
select * from C2;
-- 2 d
create view D2 as
    select d.location as dealears_location, sum(amount*d.charge) as earn
from sell s left join dealer d on s.dealer_id = d.id group by d.location;
drop view D2;
select * from D2;
-- 2 e
create view E2 as
    select location as dealears_location, count(amount), avg(amount), sum(amount) as tot_sales
from sell s left join dealer d on s.dealer_id = d.id group by d.location;
drop view E2;
select * from E2;
-- 2 f
create view F2 as
    select city, count(s.amount), avg(s.amount), sum(s.amount) as tot_exp
    from client join sell s on client.id=s.client_id group by city;
drop view F2;
select * from F2;
-- 2 g
create view G2 as
    select city, dealears_location, tot_exp, tot_sales
from F2 full join E2 on city = dealears_location
where tot_exp>E2.tot_sales or tot_sales is null;
drop view G2;
select * from G2;