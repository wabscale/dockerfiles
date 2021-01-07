FROM debian:stretch

WORKDIR /tmp/build
RUN apt update \
  && apt install -y libgconf-2-4 libappindicator1 wget libasound2 libatomic1 \
  libnotify4 libnspr4 libnss3 libxss1 libxtst6 libc++1 \
  && wget -O 'discord-0.0.1.deb' 'https://discordapp.com/api/download?platform=linux&format=deb' \
  && dpkg -i 'discord-0.0.1.deb' \
  && rm 'discord-0.0.1.deb' \
  && rm /etc/localtime \
  && ln -s /usr/share/zoneinfo/America/New_York /etc/localtime


CMD discord
