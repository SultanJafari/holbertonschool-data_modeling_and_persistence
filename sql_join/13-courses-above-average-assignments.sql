SELECT c.title AS course_title
FROM courses c
JOIN assignments a ON c.id = a.course_id
GROUP BY c.id, c.title
HAVING COUNT(a.id) > (
    SELECT AVG(cnt)
    FROM (
        SELECT COUNT(id) AS cnt
        FROM assignments
        GROUP BY course_id
    )
)
ORDER BY course_title ASC;
