select s.student_id, s.student_name, sub.subject_name, count(e.student_id) attended_exams from Students s
cross join Subjects sub
left join Examinations e on (s.student_id = e.student_id and e.subject_name = sub.subject_name) 
group by s.student_id, s.student_name, sub.subject_name
order by student_id, subject_name;