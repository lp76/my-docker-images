FROM debian:8
MAINTAINER Luca Peduto <l.peduto@gmail.com>

ADD locale.gen /etc/locale.gen

RUN apt-get update -qq && \
    apt-get -y dist-upgrade --no-install-recommends --force-yes && \
    apt-get -y --no-install-recommends --force-yes install \
    locales \
    curl \
    htop \
    git-core \
    nano \
    ncdu \
    lsb-release \
    ca-certificates \
    apt-transport-https && \
    apt-get clean -y && \
    rm -rf /var/cache/apt/* && \
    locale-gen

ENV LANG en_US.UTF-8
