FROM openjdk:8-jre

# 1.8.0
RUN apt update && apt install -y wget unzip
RUN wget -nc -cq --show-progress \
  'https://github.com/sleuthkit/sleuthkit/releases/download/sleuthkit-4.9.0/sleuthkit-java_4.9.0-1_amd64.deb' \
  && wget -nc -cq --show-progress \
  'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.15.0/autopsy-4.15.0.zip'
RUN apt install -y libafflib-dev libbfio-dev libc3p0-java libewf-dev libpostgresql-jdbc-java testdisk
RUN dpkg -x sleuthkit-java_4.9.0-1_amd64.deb sleuthkit \
  &&  cp -r sleuthkit/usr/* /usr/ \
  && unzip autopsy-4.15.0.zip
RUN cd autopsy-4.15.0/ \
  && chmod +x unix_setup.sh \
  && ./unix_setup.sh


ENTRYPOINT bash
