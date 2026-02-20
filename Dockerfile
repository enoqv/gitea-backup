FROM alpine:3.23.3

RUN apk add --no-cache \
    bash \
    curl \
    jq \
    openssh \
    tar \
    gzip \
    bzip2 \
    xz \
    zip \
    unzip \
    tar \
    gzip \
    bzip2 \
    xz \
    restic \
    postgresql18-client

ENV DOCKERIZE_VERSION=0.10.1
RUN wget -nv -O - "https://github.com/jwilder/dockerize/releases/download/v${DOCKERIZE_VERSION}/dockerize-linux-amd64-v${DOCKERIZE_VERSION}.tar.gz" | tar -xz -C /usr/local/bin/ -f -
    