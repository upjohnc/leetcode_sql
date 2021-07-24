psql_repl:
	psql -p 5433 -h localhost -U leet_role -d leet -W

start_psql:
	docker compose up

down_psql:
	docker compose down
