FROM openjdk:11-stretch

RUN apt update \
  && apt install -y fonts-noto-mono libxext6 libxrender1 libxtst6 \
  && rm -rf /var/lib/apt/lists/ \
  && useradd -d /home/user -m -u 1000 user

WORKDIR /home/user
USER user

RUN wget -q -O ghidra.zip "https://ghidra-sre.org/ghidra_9.1.2_PUBLIC_20200212.zip" \
  && unzip ghidra.zip \
  && rm ghidra.zip

COPY entrypoint.sh /home/user/entrypoint.sh


CMD [ "sh", "entrypoint.sh" ]
