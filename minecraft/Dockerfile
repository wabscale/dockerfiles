FROM debian:stretch

WORKDIR /root
RUN apt update \
  && apt install -y curl \
  && curl -O "https://launcher.mojang.com/download/Minecraft.deb" \
  && apt install -y ./Minecraft.deb \
  && rm Minecraft.deb \
  && rm -rf /var/lib/apt/lists/*

CMD ["minecraft-launcher"]
