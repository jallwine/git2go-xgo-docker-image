#!/bin/sh

cd $GOPATH/src/github.com/libgit2/git2go/
git remote add jallwine https://github.com/jallwine/git2go.git
git pull jallwine master
git submodule update --init
make install
