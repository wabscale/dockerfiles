FROM debian:stretch

ENV VERSION="2019.3.2"

WORKDIR /opt
RUN apt update \
  && apt install -y wget libhawtbuf-java libxext-dev libxext6 libxrender1 \
  libxtst6 libfreetype6 git libfonts-java libfontconfig1 bc build-essential \
  python3 python3-pip curl libcurl4-openssl-dev linux-tools \
  && wget -q "https://download.jetbrains.com/cpp/CLion-${VERSION}.tar.gz" \
  && tar xzvf "CLion-${VERSION}.tar.gz" \
  && rm "CLion-${VERSION}.tar.gz" \
  && mv clion-* clion \
  && rm -rf /var/lib/apt/lists/* \
  && pip3 install compiledb

WORKDIR /opt/clion

CMD ["/opt/clion/bin/clion.sh"]
