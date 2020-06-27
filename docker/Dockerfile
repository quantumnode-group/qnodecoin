FROM debian:stretch
LABEL maintainer="QnodeCoin Developers <dev@qnodecoin.org>"
LABEL description="Dockerised QnodeCoinCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
