create table characters (
  id          integer primary key
, movie_id    integer references movies(movie_id)
, name        text not null
, gender      char(1) not null
);



insert into characters (id, movie_id, name, gender)
values (401, 93, 'ナウシカ', 'F') 
     , (402, 94, 'パズー' , 'M')
     , (403, 94, 'シータ' , 'F') 
     , (404, 94, 'ムスカ' , 'M') 
     , (405, 95, 'さつき' , 'F')
     , (406, 95, 'メイ' , 'F')
     , (407, null, 'クラリス', 'F')
;
