# Pgsync Template

A working template example to sync data from PostgreSQL to ElasticSearch

## FROM SCRATCH 

- Prepare a system postgresql user 
- Execute initial script in [initial-sql](/init.d/initial.sql) then restart database.

#### COMPOSE FILES

- Use [sample-compose](/compose.yaml) to boostrap
- Modify [sample-config](/pgsync.json)

## RE-RUN
1. Stop all pgsync instance
2. Delete **MATERIAL VIEW** `_view` in database.
3. Re-run docker-compose FILES

## READ ABOUT PSYNC CONFIG 
[Tutorial documents ](https://pgsync.com/tutorial/table-with-single-child-node/)
