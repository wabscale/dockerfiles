FROM openjdk:8u191-jdk-alpine

RUN apk --update --upgrade add openssl ca-certificates ttf-dejavu wget && rm -rf /var/cache/apk/
RUN mkdir -p /opt/burp
RUN wget -v -O /opt/burp/burp.jar "https://portswigger.net/burp/releases/download?product=community&version=1.7.36&type=jar"

EXPOSE 8080

ENTRYPOINT ["java", "-XX:+UnlockExperimentalVMOptions", "-Xmx1024m", "-jar", "/opt/burp/burp.jar"]
