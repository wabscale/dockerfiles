FROM debian:stretch

WORKDIR /opt/

RUN apt update \
  && apt install -y wget xz-utils libx11-6 libxext6 libxrender1 libxtst6 fontconfig \
  && wget -q 'https://downloads.arduino.cc/arduino-1.8.10-linux64.tar.xz' \
  && tar --xz -xf 'arduino-1.8.10-linux64.tar.xz' \
  && rm 'arduino-1.8.10-linux64.tar.xz' \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/arduino-1.8.10

CMD ./arduino
