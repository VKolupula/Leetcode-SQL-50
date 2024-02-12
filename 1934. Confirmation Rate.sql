select s.user_id, round(count(case when cc.action = 'confirmed' then 1 end)*1.00 / (case when count(cc.user_id) = 0 then 1 else count(cc.user_id) end),2) as confirmation_rate
from Confirmations cc right join Signups s on s.user_id = cc.user_id
group by s.user_id;
