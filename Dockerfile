FROM vixns/riemann
MAINTAINER Stéphane Cottin <stephane.cottin@vixns.com>

ADD riemann-kafka.jar /usr/share/riemann/riemann-kafka.jar
ADD riemann-elasticsearch-output-0.1.1-SNAPSHOT-standalone.jar /usr/share/riemann/riemann-elasticsearch-output-0.1.1-SNAPSHOT-standalone.jar

ADD riemann.sh /usr/local/bin/riemann.sh

ENV KAFKA_TOPIC logs
ENV KAFKA_GROUP riemann.group