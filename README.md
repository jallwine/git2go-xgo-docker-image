This repository is used to build docker images suitable for xgo to build cross platform executables that rely on git2go. 
A separate image is built for each platform. The required Dockerfile and supporting files exist in separate branches for each platform. 
Use the commands below to build each docker image.

Usage - Linux
====

    docker pull karalabe/xgo-latest
    git clone https://github.com/jallwine/xgo-git2go-docker-image.git --branch linux xgo-git2go-linux
    cd xgo-git2go-linux
    docker build . --tag xgo-git2go-linux

    # This builds a simple project that depends on git2go, substitute your project here
    xgo --targets=linux/amd64 --image=xgo-git2go-linux github.com/odewahn/git2go-test
    ls git2go-test-linux-amd64


Usage - Windows
====

    docker pull karalabe/xgo-latest
    git clone https://github.com/jallwine/xgo-git2go-docker-image.git --branch windows xgo-git2go-windows
    cd xgo-git2go-windows
    docker build . --tag xgo-git2go-windows

    # This builds a simple project that depends on git2go, substitute your project here
    xgo --targets=windows/amd64 --image=xgo-git2go-windows github.com/odewahn/git2go-test
    ls git2go-test-windows-4.0-amd64.exe
