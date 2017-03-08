FROM karalabe/xgo-latest

RUN apt-get -y install vim cmake
#RUN go get -d github.com/libgit2/git2go
#COPY build_linux.sh /tmp/
#RUN sh /tmp/build_linux.sh

RUN wget https://github.com/libgit2/libgit2/archive/v0.25.1.tar.gz -O /tmp/libgit2.tar.gz
COPY build_windows.sh /tmp/
RUN sh /tmp/build_windows.sh

#RUN GOOS=windows GOARCH=amd64 go get -v github.com/libgit2/git2go

ENTRYPOINT ["/build.sh"]
