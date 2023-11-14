#!/bin/sh
docker compose -f docker-compose-offline.yml -p demo down --remove-orphans
# echo "press enter to also delete cache"
# echo "If you do this, you will need to run offline-pull.bat to reseed the image cache"
# docker compose -f docker-compose-offline-cache.yml -p cache down --remove-orphans
