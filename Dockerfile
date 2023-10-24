# https://hub.docker.com/_/caddy
FROM caddy:$INPUT_CADDY_VERSION-builder-alpine AS builder

RUN caddy-builder \
    github.com/caddy-dns/cloudflare
    
FROM caddy:$INPUT_CADDY_VERSION

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
