#!/bin/sh
docker compose -f docker-compose-multiple.yml -p demo up -d
docker pull openiap/noderedagent:latest
docker pull openiap/nodeagent:latest