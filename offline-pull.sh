#!/bin/sh
mkdir -p offline
docker compose -f docker-compose-offline-cache.yml -p cache up -d
pause
docker pull mongo
docker image tag mongo:latest localhost:5000/mongo:latest
docker image push localhost:5000/mongo:latest

docker pull traefik
docker image tag traefik:latest localhost:5000/traefik:latest
docker image push localhost:5000/traefik:latest

docker pull rabbitmq:3-management
docker image tag rabbitmq:3-management localhost:5000/rabbitmq:3-management
docker image push localhost:5000/rabbitmq:3-management

docker pull verdaccio/verdaccio
docker image tag verdaccio/verdaccio:latest localhost:5000/verdaccio/verdaccio
docker image push localhost:5000/verdaccio/verdaccio

docker pull iegomez/mosquitto-go-auth
docker image tag iegomez/mosquitto-go-auth:latest localhost:5000/iegomez/mosquitto-go-auth
docker image push localhost:5000/iegomez/mosquitto-go-auth

docker pull otel/opentelemetry-collector
docker image tag otel/opentelemetry-collector:latest localhost:5000/otel/opentelemetry-collector:latest
docker image push localhost:5000/otel/opentelemetry-collector:latest

docker pull victoriametrics/victoria-metrics
docker image tag victoriametrics/victoria-metrics:latest localhost:5000/victoriametrics/victoria-metrics:latest
docker image push localhost:5000/victoriametrics/victoria-metrics:latest

docker pull openiap/grafana
docker image tag openiap/grafana:latest localhost:5000/openiap/grafana:latest
docker image push localhost:5000/openiap/grafana:latest

docker pull openiap/openflow:latest
docker image tag openiap/openflow:latest localhost:5000/openiap/openflow:latest
docker image push localhost:5000/openiap/openflow:latest

docker pull openiap/nodeagent:latest
docker image tag openiap/nodeagent:latest localhost:5000/openiap/nodeagent:latest
docker image push localhost:5000/openiap/nodeagent:latest

docker pull openiap/nodechromiumagent:latest
docker image tag openiap/nodechromiumagent:latest localhost:5000/openiap/nodechromiumagent:latest
docker image push localhost:5000/openiap/nodechromiumagent:latest

docker pull openiap/noderedagent:latest
docker image tag openiap/noderedagent:latest localhost:5000/openiap/noderedagent:latest
docker image push localhost:5000/openiap/noderedagent:latest

docker pull openiap/dotnetagent:latest
docker image tag openiap/dotnetagent:latest localhost:5000/openiap/dotnetagent:latest
docker image push localhost:5000/openiap/dotnetagent:latest
