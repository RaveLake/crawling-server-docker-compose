#!/bin/bash

echo `docker-compose pull && docker-compose up -d`;
echo `curl localhost:8080/operation/refresh/notice \
        -X POST \
        -H 'Content-Type:application/json' \
        -d '{"all":true, "page":1}'`;
