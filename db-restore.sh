#!/bin/sh
docker compose cp openflow.bak mongodb:/tmp/
docker compose exec mongodb /usr/bin/mongorestore --gzip --archive=/tmp/openflow.bak
