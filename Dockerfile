FROM ubuntu:20.04
RUN \
apt-get update && \
apt-get install  sudo wget curl avahi-daemon -y && \
wget -q -O - http://bit.ly/get-hoobs | bash -
ENTRYPOINT [ "/usr/local/bin/hoobs" ]