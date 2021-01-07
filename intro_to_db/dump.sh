#!/bin/bash

CONTAINER_ID=`docker ps --filter publish=3306 -q`
declare -a DEFAULT_DBS=(
    "Database"
    "information_schema"
    "performance_schema"
    "mysql"
)


if [ -z ${CONTAINER_ID} ]; then
    echo "no container running!"
    exit 1
fi

check() {
    for def_db in ${DEFAULT_DBS[@]}; do
        if [[ "$def_db" = "$1" ]]; then
            return 1
        fi
    done
    return 0
}

list() {
    echo `docker exec ${CONTAINER_ID} mysql --password=password -e "SHOW DATABASES;" | tr -d "| -+" | nice grep -v Database`
}

dump() {
    echo "Dumping persistent data..."
    echo "Plz wait..."
    ALL_DATABASES=`list`
    USER_DATABASES=""
    IFS=" "
    for db in $ALL_DATABASES; do
        if check $db; then
            USER_DATABASES=$db ${USER_DATABASES}
        fi
    done
    if [[ -n ${USER_DATABASES} ]]; then
        make backup
        docker exec -it ${CONTAINER_ID} mysqldump --password=password --databases ${USER_DATABASES} > dump.sql
        make pack
    fi
}

dump
