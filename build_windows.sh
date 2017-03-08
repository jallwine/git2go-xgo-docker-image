#!/bin/sh

cd /tmp
tar xzf libgit2.tar.gz
mkdir -p libgit2-0.25.1/build_windows
cd libgit2-0.25.1/build_windows &&

cmake -DTHREADSAFE=ON \
      -DUSE_SSH=OFF \
      -DBUILD_CLAR=OFF \
      -DCMAKE_SYSTEM_NAME=Windows \
      -DCMAKE_INSTALL_PREFIX=/usr/x86_64-w64-mingw32 \
      -DCMAKE_C_COMPILER=/usr/bin/x86_64-w64-mingw32-gcc \
      -DCMAKE_CXX_COMPILER=/usr/bin/x86_64-w64-mingw32-g++ \
      -DDLLTOOL=/usr/bin/x86_64-w64-mingw32-dlltool \
      .. &&

make
make install
