#!/bin/bash

CONTAINER_ID=`docker ps --filter publish=3306 -q`

if [ -f dump.sql.tar.gz ]; then
    echo "waiting for database to start"
    while ! docker exec -it ${CONTAINER_ID} mysqladmin ping --password=password --silent; do
        echo -n '.';
        sleep 1;
    done
    sleep 3
    echo "loading persistent data"
    echo "Plz wait..."
    make unpack
    docker exec -i ${CONTAINER_ID} mysql --password=password < dump.sql
    make pack
fi

