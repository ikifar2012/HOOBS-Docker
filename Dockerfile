FROM ubuntu:20.04
RUN \
apt-get update && \
apt-get install  sudo wget curl avahi-daemon -y && \
wget -q -O - http://bit.ly/get-hoobs | bash -
EXPOSE 51826/tcp
EXPOSE 51826/udp
VOLUME [ "/root/.hoobs/" ]
VOLUME [ "/usr/local/lib/node_modules/" ]
ENTRYPOINT [ "/usr/local/bin/hoobs" ]