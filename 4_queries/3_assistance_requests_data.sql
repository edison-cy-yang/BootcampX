SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at - started_at) as duration
FROM teachers
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
JOIN assignments ON assistance_requests.assignment_id = assignments.id
JOIN students ON students.id = assistance_requests.student_id
ORDER BY duration;