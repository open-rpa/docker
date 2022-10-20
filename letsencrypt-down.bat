@echo off
docker-compose -f docker-compose-traefik-letsencrypt.yml -p demo down --remove-orphans