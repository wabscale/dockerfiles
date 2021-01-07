FROM alpine:3.9
MAINTAINER big_J

RUN apk add --update libreoffice fontconfig \
  && rm -rf /var/cache/apk/ \
  && adduser -D user


USER user
CMD libreoffice
