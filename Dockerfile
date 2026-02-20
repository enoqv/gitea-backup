FROM alpine:3.23.3

# Install the tzdata package
RUN apk add --no-cache tzdata

# Set the Timezone environment variable to your desired location (e.g., America/New_York)
ENV TZ=UTC

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
RUN wget -nv -O - "https://github.com/jwilder/dockerize/releases/download/v${DOCKERIZE_VERSION}/dockerize-alpine-linux-amd64-v${DOCKERIZE_VERSION}.tar.gz" | tar -xz -C /usr/local/bin/ -f -
    