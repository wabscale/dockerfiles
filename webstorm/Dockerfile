FROM node:latest

ENV VERSION="2020.2.2"

WORKDIR /opt
RUN apt update \
  && apt install -y wget libhawtbuf-java libxext-dev libxext6 libxrender1 libxtst6 libasound2 git \
  && wget -q "https://download.jetbrains.com/webstorm/WebStorm-${VERSION}.tar.gz" \
  && tar -xzf "WebStorm-${VERSION}.tar.gz" \
  && rm "WebStorm-${VERSION}.tar.gz" \
  && mv WebStorm-* webstorm \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/webstorm

USER node
CMD ["/opt/webstorm/bin/webstorm.sh"]
