SELECT day, count(*) AS total_assignments
from assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;