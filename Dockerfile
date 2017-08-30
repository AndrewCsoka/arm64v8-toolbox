FROM arm64v8/alpine:3.6

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
    perl-net-telnet \
    strace \
    supervisor \
    sysstat \
    tar \
    tcpdump \
    tmux \
    vim \
    wget \
