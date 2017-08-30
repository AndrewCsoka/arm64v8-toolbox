FROM arm64v8/alpine

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
