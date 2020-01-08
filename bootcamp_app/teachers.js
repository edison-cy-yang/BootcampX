const { Pool } = require('pg');
const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const input = [process.argv[2]];

pool.query(`
SELECT DISTINCT(teachers.name) as teachers, cohorts.name as cohort
FROM assistance_requests
JOIN students ON assistance_requests.student_id = students.id
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN cohorts ON students.id = cohorts.id
WHERE cohorts.name = $1
ORDER BY teachers;
`, input)
.then(res => {
  res.rows.forEach(teacher => {
    console.log(`${teacher.cohort}: ${teacher.teachers}`);
  });
})
.catch(err => {
  console.log('query error', err.stack);
});