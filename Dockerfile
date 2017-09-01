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
    iproute2 \
    iproute2-bash-completion \
    iptables \
    jq \
    less \
    logrotate \
    lsof \
    nano \
    net-tools \
    netcat-openbsd \
    ngrep \
    nmap \
    openssh-client \
    openssl \
    perl-net-telnet \
    strace \
    supervisor \
    sysstat \
    tar \
    tcpdump \
    tcptraceroute \
    tmux \
    tree \
    vim \
    wget \
