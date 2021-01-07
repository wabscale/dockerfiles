#!/bin/sh

for i in `find -name docker-compose.yml`; do
    if grep 'd.bigj.dev' ${i}; then
        docker-compose -f ${i} pull
    fi
done
