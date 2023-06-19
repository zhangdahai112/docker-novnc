FROM domistyle/idrac6

MAINTAINER zhangdahai

RUN apt-get update && \
apt-get install -y vim net-tools && \
apt-get remove -y *jdk* && \
apt install -y openjdk-8-jre && \
apt install -y openjdk-8-jre-headless && \
apt install -y icedtea-plugin && \
apt-get install -y ipmitool && \
apt-get install -y curl nodejs

RUN sed -i '701,705d' /usr/lib/jvm/java-11-openjdk-amd64/jre/lib/security/java.security