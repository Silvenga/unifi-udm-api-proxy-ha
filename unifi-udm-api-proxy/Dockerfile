ARG BUILD_FROM=silvenga/unifi-udm-api-proxy:latest
FROM ${BUILD_FROM}

ARG BUILD_VERSION=latest
ARG BUILD_ARCH=amd64

COPY rootfs/ /

LABEL \
    io.hass.name="Unifi UDM API Proxy" \
    io.hass.description="A compatibility shim to support accessing the new UnifiOs API." \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version="${BUILD_VERSION}" \
    maintainer="Mark Lopez (Silvenga) <m+homeassistant@silvenga.com>"

ENV ASPNETCORE_ENVIRONMENT=HASSIO
ENV DATABASE=/data/data.db

ENTRYPOINT [ "bash", "/entrypoint.sh" ]
