#!/bin/sh

cd $GOPATH/src/github.com/libgit2/git2go/
git submodule update --init
make install
