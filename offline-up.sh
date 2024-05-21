#!/bin/sh
docker compose -f docker-compose-offline.yml -p demo up -d
docker pull openiap/noderedagent:latest
docker pull openiap/nodeagent:latest