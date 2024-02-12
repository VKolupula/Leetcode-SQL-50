select t.id from Weather as t
join weather as y on datediff(y,y.recordDate,t.recordDate) = 1 and t.temperature > y.temperature;
