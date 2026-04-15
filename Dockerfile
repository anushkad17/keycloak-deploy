FROM quay.io/keycloak/keycloak:26.6.0

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

COPY --chmod=755 start.sh /start.sh

ENTRYPOINT ["/start.sh"]