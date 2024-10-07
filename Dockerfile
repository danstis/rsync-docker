FROM alpine:3.20.3

# hadolint ignore=DL3018
RUN apk add --no-cache \
    openssh-client \
    rsync \
    tzdata

COPY rsync.sh .

ENTRYPOINT [ "./rsync.sh" ]
