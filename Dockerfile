FROM vixns/riemann
MAINTAINER Stéphane Cottin <stephane.cottin@vixns.com>

COPY riemann-kafka.jar /usr/share/riemann/riemann-kafka.jar
COPY riemann-elasticsearch-output-0.1.1-SNAPSHOT-standalone.jar /usr/share/riemann/riemann-elasticsearch-output-0.1.1-SNAPSHOT-standalone.jar

COPY riemann.sh /usr/local/bin/riemann.sh

ENV KAFKA_TOPIC logs
ENV KAFKA_GROUP riemann.group