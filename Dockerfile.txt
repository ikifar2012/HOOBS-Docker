FROM ubuntu:20.04
RUN \
apt-get update && \
apt-get install -y sudo avahi-daemon && \
wget -q -O - http://bit.ly/get-hoobs | bash -
ENTRYPOINT [ "/usr/local/bin/hoobs" ]