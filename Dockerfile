FROM arm64v8/debian:stretch

MAINTAINER Andrew Csoka <andy@andrewcsoka.com>

RUN set -x \
    && apt-get update && apt-get install -y --no-install-recommends \
        apt-transport-https \
#        apt-utils \
#        bash-completion \
#        conntrack \
#        curl \
        dirmngr \
#        dnsutils \
#        ethtool \
#        git \
        gnupg2 \
#        gzip \
#        htop \
#        htpdate \
#        iftop \
#        iotop \
#        iproute \
#        iptables \
#        less \
#        lsof \
#        make \
#        nano \
#        net-tools \
#        netcat \
#        ngrep \
#        nmap \
#        ntpdate \
#        openssh-client \
#        openssl \
#        rsync \
#        sendemail \
#        strace \
#        sysstat \
#        tar \
#        tcpdump \
#        telnet \
#        time \
#        tmux \
#        traceroute \
#        tree \
#        vim \
        wget

# docker cli
RUN set -x \
    && apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "9DC858229FC7DD38854AE2D88D81803C0EBFCD88" \
    && echo "deb [arch=armhf] https://download.docker.com/linux/debian      stretch stable" > /etc/apt/sources.list.d/docker.list \
    && apt-get update && apt-get install -y --no-install-recommends \
        docker-ce \
#    && usermod -a -G docker root \
    && rm -rf /usr/bin/docker-* /usr/bin/dockerd \
    && rm -rf /var/lib/apt/lists/*

WORKDIR "/storage"

CMD ["/bin/bash"]
