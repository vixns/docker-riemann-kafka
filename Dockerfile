FROM vixns/riemann
MAINTAINER Stéphane Cottin <stephane.cottin@vixns.com>
COPY riemann-kafka.jar /usr/share/riemann/riemann-kafka.jar
COPY riemann.sh /usr/local/bin/riemann.sh