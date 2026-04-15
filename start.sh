#!/bin/bash
exec /opt/keycloak/bin/kc.sh start-dev \
  --http-port=$PORT \
  --hostname-strict=false \
  --proxy-headers=xforwarded \
  --http-enabled=true