FROM alpine:3.20.3

RUN apk add --update-cache \
    openssh-client \
    rsync \
    tzdata \
 && rm -rf /var/cache/apk/*

COPY rsync.sh .

ENTRYPOINT [ "./rsync.sh" ]
