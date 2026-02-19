FROM alpine:3.23.3

RUN apk add --no-cache \
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