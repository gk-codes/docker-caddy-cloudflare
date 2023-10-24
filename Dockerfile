# https://hub.docker.com/_/caddy
FROM caddy:2.7.5-builder-alpine AS builder

RUN caddy-builder \
    github.com/caddy-dns/cloudflare
    
FROM caddy:2.7.5

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
