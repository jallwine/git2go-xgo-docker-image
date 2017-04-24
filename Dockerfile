FROM karalabe/xgo-latest

RUN apt-get -y upgrade
RUN apt-get -y update
RUN apt-get -y install vim cmake
RUN go get -d github.com/libgit2/git2go

COPY build_windows.sh /tmp/
RUN sh /tmp/build_windows.sh

ENTRYPOINT ["/build.sh"]
