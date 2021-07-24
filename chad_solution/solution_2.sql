WITH max_id AS (
    SELECT max(id) AS max_id
    FROM students
)

SELECT
    CASE
        WHEN id = max_id.max_id THEN id
        WHEN mod(id, 2) = 0 THEN id - 1
        WHEN mod(id, 2) = 1 THEN id + 1
    END AS id
    , students.student
FROM students, max_id
ORDER BY id;
