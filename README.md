# Description

Postgres set up for running this leetcode challenge [link to challenge](https://leetcode.com/problems/exchange-seats/)

## Usage

- start postgres instance
  - `make start_psql`
- in another terminal attach to that postgres instance
  - `make psql_repl`
  - you can now run all the queries you want.  you will be in psql
  - `\q` will exit the psql
- shut down the running postgres
- go back to the terminal with the running postgres instance
  - `crtl-c`
  - `make down_psql`

