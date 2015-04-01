#!/bin/sh
exec ${JAVA_HOME}/bin/java -server -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:+CMSParallelRemarkEnabled \
-XX:+AggressiveOpts -XX:+UseFastAccessorMethods -XX:+UseCompressedOops -XX:+CMSClassUnloadingEnabled \
-cp "/usr/share/riemann/riemann-kafka.jar:/usr/share/riemann/riemann.jar:/usr/share/riemann/riemann-elasticsearch-output-0.1.1-SNAPSHOT-standalone.jar" \
riemann.bin start /etc/riemann/riemann.config
