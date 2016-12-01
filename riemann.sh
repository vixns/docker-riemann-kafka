#!/bin/sh
export EXTRA_CLASSPATH=/usr/share/riemann/riemann-kafka.jar:/usr/share/riemann/riemann-elasticsearch-output.jar
exec ${JAVA_HOME}/bin/java -server -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:+CMSParallelRemarkEnabled \
-XX:+AggressiveOpts -XX:+UseFastAccessorMethods -XX:+UseCompressedOops -XX:+CMSClassUnloadingEnabled \
-cp "/usr/share/riemann/riemann.jar" \
riemann.bin start /etc/riemann/riemann.config
