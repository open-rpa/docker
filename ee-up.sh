#!/bin/sh
docker compose -f docker-compose-ee.yml -p demo up -d
echo "If this is the first time you run this, please run the command again, to finish setting up mongodb replica set."