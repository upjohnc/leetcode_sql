SELECT
    (CASE
        WHEN MOD(id, 2) != 0 AND counts != id THEN id + 1
        WHEN MOD(id, 2) != 0 AND counts = id THEN id
        ELSE id - 1
        END) AS id
    , student
FROM
    students
, (SELECT COUNT(*) AS counts
    FROM
        students)
ORDER BY id ASC;
