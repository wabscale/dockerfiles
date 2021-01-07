FROM frolvlad/alpine-glibc
MAINTAINER big_J

WORKDIR /opt/
RUN apk add --update --no-cache wget tar libstdc++ pango gtk+3.0 dbus-glib xcb-util libxt libevent libice libsm libvpx sqlite-libs alsa-lib fontconfig
RUN wget -q -O tbird.tar.bz2 "https://download.mozilla.org/?product=thunderbird-60.5.2-SSL&os=linux64&lang=en-US" && tar xvf tbird.tar.bz2 && rm -rf /opt/tbird.tar.bz

WORKDIR /opt/thunderbird
RUN mkdir -p /root/tmp1 /root/tmp2 /root/tmp3

ENTRYPOINT fc-cache && ./thunderbird
