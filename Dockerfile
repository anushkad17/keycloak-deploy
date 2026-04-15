FROM quay.io/keycloak/keycloak:26.6.0

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

ENTRYPOINT ["/bin/sh", "-c", "/opt/keycloak/bin/kc.sh start \
  --http-port=$PORT \
  --hostname-strict=false \
  --proxy-headers=xforwarded \
  --http-enabled=true"]