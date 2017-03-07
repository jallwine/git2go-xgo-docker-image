FROM karalabe/xgo-latest

RUN apt-get -y install vim cmake libssh2-1-dev libcurl4-openssl-dev

ENTRYPOINT ["/build.sh"]
