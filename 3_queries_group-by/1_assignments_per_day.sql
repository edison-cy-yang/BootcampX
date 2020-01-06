SELECT day, count(*) AS total_assignments
from assignments
GROUP BY day
ORDER BY day;