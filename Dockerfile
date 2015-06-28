FROM debian:8
MAINTAINER Luca Peduto <l.peduto@gmail.com>

ADD locale.gen /etc/locale.gen
RUN apt-get update -qq && \
    apt-get -y install locales --no-install-recommends && \
    apt-get clean -y && \
    rm -rf /var/cache/apt/* && \
    locale-gen
ENV LANG en_US.UTF-8

RUN apt-get update -q && \
    apt-get -y dist-upgrade --no-install-recommends && \
    apt-get -y install curl htop git-core --no-install-recommends && \
    apt-get clean -y && \
    rm -rf /var/cache/apt/*
