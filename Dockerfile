FROM arm64v8/debian:stretch

MAINTAINER Andrew Csoka <andy@andrewcsoka.com>

RUN set -x \
    && apt-get update && apt-get install -y --no-install-recommends \
       apt-transport-https \
        bash-completion \
        ca-certificates \
        conntrack \
        curl \
        diffutils \
        dirmngr \
        dmidecode \
        dnsutils \
        e2fsprogs \
        ethtool \
        git \
        gnupg2 \
        grc \
        gzip \
        htop \
        htpdate \
        iftop \
        # iotop \
        iproute \
        iptables \
        jq \
        less \
        lsof \
        # logrotate \
        mtr-tiny \
        nano \
        net-tools \
        netcat \
        ngrep \
        # nmap \
        # ntpdate \
        openssh-client \
        openssl \
        pv \
	procps \
        psmisc \
        redis-tools \
        rsync \
        sendemail \
        strace \
        sysstat \
        tar \
        tcpdump \
        telnet \
        time \
        tmux \
        traceroute \
        vim \
        # vim-tiny \
        wget \
        xfsprogs \
    && mv /usr/sbin/tcpdump /usr/bin/tcpdump \
    && rm -rf /usr/share/vim/vim80/doc/* /usr/share/vim/vim80/lang/* /usr/share/vim/vim80/spell/* /usr/share/vim/vim80/tutor/* \
    && rm -rf /var/lib/apt/lists/*

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
