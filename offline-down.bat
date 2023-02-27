@echo off
docker compose -f docker-compose-offline.yml -p demo down --remove-orphans
rem echo "press enter to also delete cache"
rem echo "If you do this, you will need to run offline-pull.bat to reseed the image cache"
rem docker compose -f docker-compose-offline-cache.yml -p cache down --remove-orphans
rem pause