#!/bin/bash

filename="/data/app/crawling-server-docker-compose/docker-compose.yml";
/usr/bin/docker-compose -f ${filename} pull;
/usr/bin/docker-compose -f ${filename} up -d;
sleep 5s;
/usr/bin/curl localhost:8080/operation/refresh/notice \
 -X POST \
 -H 'Content-Type:application/json' \
 -d '{"all":true, "page":1}';
echo "";