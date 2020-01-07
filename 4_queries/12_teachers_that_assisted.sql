SELECT DISTINCT(teachers.name) as teachers, cohorts.name as cohort
FROM assistance_requests
JOIN students ON assistance_requests.student_id = students.id
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN cohorts ON students.id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teachers;