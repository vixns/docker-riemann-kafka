FROM vixns/riemann
MAINTAINER Stéphane Cottin <stephane.cottin@vixns.com>
COPY riemann-kafka.jar /usr/share/riemann/riemann-kafka.jar
ADD https://github.com/gorillalabs/riemann-elasticsearch-plugin/raw/master/releases/download/0.1.1a/riemann-elasticsearch-output-0.1.1a-standalone.jar /usr/share/riemann/riemann-elasticsearch-output.jar
COPY riemann.sh /riemann.sh
