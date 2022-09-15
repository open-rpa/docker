#!/bin/sh
docker-compose exec mongodb rm /tmp/openflow.bak
docker-compose exec mongodb /usr/bin/mongodump --db openflow --gzip --archive=/tmp/openflow.bak
docker-compose cp mongodb:/tmp/openflow.bak .
current_time=$(date "+%Y.%m.%d-%H.%M.%S")
echo "Current Time : $current_time"
cp openflow.bak openflow.$current_time.bak
