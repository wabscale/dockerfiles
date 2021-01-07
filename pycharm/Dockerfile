FROM python:latest

ENV PYCHARM_VERSION="2020.1"

RUN apt update && apt install -y wget
WORKDIR /opt
RUN wget -q "https://download.jetbrains.com/python/pycharm-professional-${PYCHARM_VERSION}.tar.gz" \
  && tar -xzf "pycharm-professional-${PYCHARM_VERSION}.tar.gz" \
  && rm "pycharm-professional-${PYCHARM_VERSION}.tar.gz" \
  && mv "pycharm-${PYCHARM_VERSION}" "pycharm"
WORKDIR /opt/pycharm
RUN apt install -y libhawtbuf-java libxext-dev libxext6 libxrender1 libxtst6 git sudo \
  && rm -rf /var/lib/apt/lists/* \
  && useradd -m user \
  && echo 'user ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

USER 1000
CMD ["/opt/pycharm/bin/pycharm.sh"]
