A docker container for building cross platform executables that depend on git2go.

Usage - Linux
====

    docker pull karalabe/xgo-latest
    git clone https://github.com/jallwine/xgo-git2go-docker-image.git
    cd xgo-git2go-docker-image
    docker build . --tag xgo-git2go
    xgo --targets=linux/amd64 --image=xgo-git2go github.com/odewahn/git2go-test
    ls git2go-test-linux-amd64


Usage - Windows
====

    docker pull karalabe/xgo-latest
    git clone https://github.com/jallwine/xgo-git2go-docker-image.git --branch windows
    cd xgo-git2go-docker-image
    docker build . --tag xgo-windows
    xgo --targets=windows/amd64 --image=xgo-windows github.com/odewahn/git2go-test
    ls git2go-test-windows-4.0-amd64.exe
