docker-mosquitto for arhmf-alpine
================

Docker image for mosquitto based on armhf-alpine

Based on [docker-mosquitto](https://github.com/toke/docker-mosquitto)

## Run

    docker-compose up

Exposes Port 1883 (MQTT) and 9001 (Websocket MQTT)

## Running with persistence

Docker-compose is already configured for automatic restart.
    
    docker-compose up -d

