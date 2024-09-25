#! /bin/bash
echo -e "\nProcess is pending util database, redis, opensearch is up."
wait-for-it $PG_HOST:$PG_PORT -t 60
wait-for-it $REDIS_HOST:$REDIS_PORT -t 60
wait-for-it $ELASTICSEARCH_HOST:$ELASTICSEARCH_PORT -t 60

echo -e "\n [Re]Bootstrap . . .\n"
bootstrap --config /etc/schema.json
echo -e "\n[Re]Bootstrap is done\n"

echo -e "\nSynchonize will be start after 5 seconds . . .\n"
sleep 5

pgsync --config /etc/schema.json --daemon