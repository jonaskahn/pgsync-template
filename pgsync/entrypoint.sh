#! /bin/bash
echo -e "\nSleep 10 seconds before [Re]Bootstrap . . .\n"
sleep 10
bootstrap --config /etc/schema.json
echo -e "\n[Re]Bootstrap is done\n"

echo -e "\nSynchonize will be start after 5 seconds . . .\n"
sleep 5
pgsync --config /etc/schema.json --daemon