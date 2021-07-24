WITH even_students AS (
    SELECT
        *
    FROM
        students
    WHERE
        mod(id, 2) = 0
)

, odd_students AS (
    SELECT
        *
    FROM
        students
    WHERE
        mod(id, 2) = 1
)

, swapp_odd_students AS (
    SELECT
        coalesce(even_students.id, odd_students.id) AS id
        , odd_students.student AS student
    FROM
        odd_students
    LEFT JOIN even_students ON odd_students.id = even_students.id - 1
)

, swapp_even_students AS (
    SELECT
        odd_students.id AS id
        , even_students.student AS student
    FROM
        odd_students
    LEFT JOIN even_students ON odd_students.id = even_students.id - 1
    WHERE even_students.id IS NOT NULL
)

SELECT
    *
FROM
    swapp_odd_students
UNION ALL
SELECT
    *
FROM
    swapp_even_students
ORDER BY id;

