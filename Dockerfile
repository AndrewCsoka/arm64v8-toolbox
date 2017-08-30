FROM arm64v8/alpine:3.5

MAINTAINER Andrew Csoka <andy@andrewcsoka.com>

RUN apk update

RUN apk upgrade

RUN apk add \
    bash \
    bash-completion \
    curl \
    diffutils \
    git \
    gzip \
    htop \
    heimdal-telnet \
    iftop \
    iotop \
    iptables \
    jq \
    less \
    logrotate \
    lsof \
    nano \
    net-tools \
    ngrep \
    nmap \
    openssl \
    strace \
    supervisor \
    sysstat \
    tar \
    tcpdump \
    tmux \
    vim \
    wget \
