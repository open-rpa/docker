@echo off
docker compose -f docker-compose-letsencrypt.yml -p demo up -d
docker pull openiap/noderedagent:latest
docker pull openiap/nodeagent:latest