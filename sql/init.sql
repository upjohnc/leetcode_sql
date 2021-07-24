/* CREATE USER if not exists leet_user with password 'thing'; */

/* DROP ROLE IF EXISTS leet_role; */
/* CREATE ROLE leet_role LOGIN PASSWORD 'thing'; */

/* CREATE ROLE leet_role; */


/* GRANT ALL PRIVILEGES ON DATABASE leet TO leet_role; */


CREATE TABLE IF NOT EXISTS students
(
    id int
    , student text
);

INSERT INTO students (id, student)
VALUES
(1, 'Abbot'), (2, 'Doris'), (3, 'Emerson'), (4, 'Green'), (5, 'Jeames');


