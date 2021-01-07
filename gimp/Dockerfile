FROM alpine:3.9
MAINTAINER juanpunchman

RUN apk add gimp fontconfig \
  && rm -rf /var/cache/apk/ \
  && adduser -D user

WORKDIR /home/user
ADD start.sh /start.sh

USER user
CMD sh /start.sh
