create table testtable1 (
id integer primary key
, name   text      not null unique
, age    integer
);

insert into testtable1(id, name, age)
values (101, 'Alpha', 20)
     , (102, 'Blavo', 25)
     , (103, 'Charlie', 23);
