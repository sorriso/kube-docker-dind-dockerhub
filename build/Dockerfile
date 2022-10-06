FROM docker:dind

USER 0

COPY /daemon.json /etc/docker/daemon.json

RUN set -eux \
\
    && update-ca-certificates --fresh \
    && openssl s_client -showcerts -verify 5 -connect registry-1.docker.io:443 < /dev/null 2>/dev/null | openssl x509 -outform PEM | tee /usr/local/share/ca-certificates/docker.pem \
    && openssl s_client -showcerts -verify 5 -connect production.cloudflare.docker.com:443 < /dev/null 2>/dev/null | openssl x509 -outform PEM | tee /usr/local/share/ca-certificates/docker-com.pem \
    && chmod 644 /usr/local/share/ca-certificates/*.pem \
    && update-ca-certificates
