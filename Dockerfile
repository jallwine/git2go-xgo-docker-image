FROM karalabe/xgo-latest

RUN apt-get -y install vim cmake libssh2-1-dev libcurl4-openssl-dev
RUN go get -d github.com/libgit2/git2go
RUN git clone https://github.com/libgit2/libgit2.git /tmp/libgit2

COPY build_linux.sh /tmp/
RUN sh /tmp/build_linux.sh

COPY toolchain_windows.cmake /tmp/

ENTRYPOINT ["/build.sh"]
