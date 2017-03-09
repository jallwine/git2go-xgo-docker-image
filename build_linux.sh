#!/bin/sh

cd /tmp
tar xzf openssl.tar.gz 
cd openssl-1.1.0e/
./config no-shared
make
make install

cd /tmp
tar xzf curl.tar.gz
cd curl-7.53.1
LIBS="-ldl -lpthread" ./configure --enable-shared=no --enable-static=yes --with-ssl 
make
make install

cd /tmp
tar xzf libssh2.tar.gz
cd libssh2-1.8.0
LIBS="-ldl -lpthread" ./configure --enable-shared=no --enable-static=yes
make
make install

cd $GOPATH/src/github.com/libgit2/git2go/
git submodule update --init
make install
