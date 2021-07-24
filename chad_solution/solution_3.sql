WITH base AS (
    SELECT
        firster.id AS first_id
        , firster.student AS first_student
        , seconder.id AS second_id
        , seconder.student AS second_student
    FROM students AS firster
    LEFT JOIN students AS seconder
              ON firster.id = (seconder.id - 1)

)

, odd_student AS (
    SELECT
        coalesce(second_id, first_id) AS id
        , first_student AS student
    FROM base
    WHERE mod(first_id, 2) = 1
)

, even_student AS (
    SELECT
        first_id AS id
        , second_student AS student
    FROM base
    WHERE mod(second_id, 2) = 0
)

SELECT *
FROM odd_student
UNION ALL
SELECT *
FROM even_student
ORDER BY id

