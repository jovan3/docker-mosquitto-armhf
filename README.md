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

## Systemd service configuration

Write the following configuration to /etc/systemd/system/docker-mosquitto.service:

```
[Unit]
Description=Mosquitto (MQTT) container
Requires=docker.service
After=docker.service

[Service]
Restart=always
ExecStart=/usr/bin/docker start -a mosquitto
ExecStop=/usr/bin/docker stop -t 2 mosquitto

[Install]
WantedBy=default.target

```

To start the container on boot run:

```
systemctl enable docker-mosquitto
```