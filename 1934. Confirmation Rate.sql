select s.user_id, round(avg(cast(case when c.action = 'confirmed' then 1 else 0 end as decimal (10, 2))),2) as confirmation_rate
from signups s
left join confirmations c
on s.user_id = c.user_id
group by s.user_id;