#!/bin/sh
docker volume rm demo_grafana_data
docker volume rm demo_mongodb_data
docker volume rm demo_victoriametrics_data
# from offline example
docker volume rm demo_verdaccio_storage
docker volume rm cache_registry_cache
