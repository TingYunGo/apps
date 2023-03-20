FROM alpine:3.15
RUN apk --no-cache add ca-certificates tzdata
RUN mkdir -p /etc/tingyun
COPY tingyun.conf /etc/tingyun/go_app_config.conf
COPY traefik/dist/traefik /usr/local/bin/traefik
COPY entrypoint.sh /
EXPOSE 80
ENTRYPOINT ["/entrypoint.sh"]
CMD ["traefik"]

# Metadata
LABEL org.opencontainers.image.vendor="Traefik Labs" \
    org.opencontainers.image.url="https://traefik.io" \
    org.opencontainers.image.source="https://github.com/traefik/traefik" \
    org.opencontainers.image.title="Traefik" \
    org.opencontainers.image.description="A modern reverse-proxy" \
    org.opencontainers.image.version="v2.9.8" \
    org.opencontainers.image.documentation="https://docs.traefik.io"
