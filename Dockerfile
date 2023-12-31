# https://hub.docker.com/_/caddy
ARG CADDY_VERSION

FROM caddy:$CADDY_VERSION-builder-alpine AS builder

RUN caddy-builder \
    github.com/caddy-dns/cloudflare
    
FROM caddy:$CADDY_VERSION

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
