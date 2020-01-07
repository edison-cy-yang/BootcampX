SELECT DISTINCT teachers.name as teachers, cohorts.name as cohort, count(assistance_requests) as total_assistances
FROM assistance_requests
JOIN students ON assistance_requests.student_id = students.id
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers;