select *
from members
where height > ( select avg(height) from members )
order by id;

select t.student_id, t.score from test_scores t
where t.subject = '国語'
and t.score = ( select max(score) from test_scores
where subject = '国語' ) order by t.student_id;
