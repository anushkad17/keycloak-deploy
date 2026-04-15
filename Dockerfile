FROM quay.io/keycloak/keycloak:26.6.0

RUN /opt/keycloak/bin/kc.sh build --db=dev-file

ENV JAVA_OPTS_APPEND="-Xms64m -Xmx256m"

ENTRYPOINT ["/bin/sh", "-c", "/opt/keycloak/bin/kc.sh start --optimized --http-port=$PORT --proxy-headers=xforwarded"]