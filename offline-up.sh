#!/bin/sh
docker compose -f docker-compose-offline.yml -p demo up -d
docker pull openiap/noderedagent:latest
docker pull openiap/nodeagent:latest
echo "If this is the first time you run this, please run the command again, to finish setting up mongodb replica set."