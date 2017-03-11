FROM armhf/alpine

RUN apk --no-cache add --update \
    mosquitto \
  && rm -rf /var/cache/apk/*

RUN mkdir -p /mqtt/config /mqtt/data /mqtt/log
COPY config /mqtt/config
RUN chown -R mosquitto:mosquitto /mqtt
VOLUME ["/mqtt/config", "/mqtt/data", "/mqtt/log"]

EXPOSE 1883 9001

CMD ["/usr/sbin/mosquitto", "-c", "/mqtt/config/mosquitto.conf"]
