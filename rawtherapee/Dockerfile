FROM alpine:3.9
MAINTAINER big_j
RUN apk add --update --nocache rawtherapee dbus fontconfig && rm -rf /var/cache/apk/
WORKDIR /root
CMD rawtherapee
