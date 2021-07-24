FROM postgres:13.3

COPY ./sql/init.sql /docker-entrypoint-initdb.d/
