select m.name from Employee e, Employee m
where m.id = e.managerId
group by m.name, m.id
having count(e.managerId) >= 5;