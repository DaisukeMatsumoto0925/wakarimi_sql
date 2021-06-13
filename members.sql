create table members (
  id      integer primary key
, name    text not null
, height  integer not null
, gender  char(1) not null
);


insert into members(id, name, height, gender) 
  values (101, 'エレン', 170, 'M')
, (102, 'ミカサ', 170, 'F')
, (103, 'アルミン', 163, 'M')
, (104, 'ジャン', 175, 'M')
, (105, 'サシャ', 168, 'F')
, (106, 'コニー', 158, 'M')
;

select id, name, height
from members
where gender = 'M'
order by height
limit 2 offset 1;

select height, name from members where gender = 'M' order by height desc limit 3;
select height, name from members order by height limit 1 offset 1;
select * from members order by gender desc, id;

select *
from members
order by height desc
limit 10;

select *
from members
order by height desc, id
limit 10 offset 10;

-- group by
select gender, avg(height)
from members
group by gender;

select gender, to_char(avg(height), '999.99')
from members
group by gender;

select gender, max(height), min(height), sum(height)
, count(*), to_char(avg(height), '999.99')
from members
group by gender
order by gender desc;

-- having
select gender, avg(height)
from members
group by gender
having avg(height) >= 168;

select max(height), min(height)
from members;

select gender, count(*), avg(height)
from members
group by gender;

select gender, max(height), min(height)
     , max(height) - min(height)
from members
group by gender
order by gender desc;

select gender, count(*)
from members
group by gender
having gender = 'M';

select count(*)
from members
where gender = 'M';

select
('2019-03-11'::date, 9) > ('2019-03-10'::date, 9)
, ('2019-03-10'::date, 9) > ('2019-03-11'::date, 9)
, ('2019-03-10'::date, 8) > ('2019-03-10'::date, 9)
, ('2019-03-10'::date, 9) > ('2019-03-10'::date, 8)
