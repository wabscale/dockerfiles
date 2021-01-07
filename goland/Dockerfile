FROM golang:latest

ENV VERSION="2019.3.1"

WORKDIR /opt
RUN apt update \
  && apt install -y wget libhawtbuf-java libxext-dev libxext6 libxrender1 libxtst6 libfreetype6 git libfonts-java libfontconfig1 \
  && wget "https://download.jetbrains.com/go/goland-${VERSION}.tar.gz" \
  && tar xzvf "goland-${VERSION}.tar.gz" \
  && rm "goland-${VERSION}.tar.gz" \
  && mv GoLand-* goland \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/goland

CMD ["/opt/goland/bin/goland.sh"]
