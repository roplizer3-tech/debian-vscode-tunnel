FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

RUN apt-get update && apt-get install -y --no-install-recommends \
    bash \
    ca-certificates \
    curl \
    wget \
    git \
    python3 \
    python3-pip \
    python3-venv \
    procps \
    net-tools \
    iproute2 \
    iptables \
    dnsutils \
    iputils-ping \
    htop \
    tree \
    nano \
    vim \
    less \
    tar \
    gzip \
    bzip2 \
    xz-utils \
    unzip \
    sudo \
    locales \
    libatomic1 \
    libsecret-1-0 \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# Install ttyd (v1.7.7 x86_64 standalone binary)
RUN curl -fsSL -o /usr/local/bin/ttyd https://github.com/tsl0922/ttyd/releases/download/1.7.7/ttyd.x86_64 && \
    chmod 755 /usr/local/bin/ttyd

# Install docker-systemctl-replacement to provide complete systemctl support in unprivileged containers
RUN curl -fsSL -o /usr/local/bin/systemctl https://raw.githubusercontent.com/gdraheim/docker-systemctl-replacement/master/files/docker/systemctl3.py && \
    chmod 755 /usr/local/bin/systemctl && \
    ln -sf /usr/local/bin/systemctl /bin/systemctl

# Install official Microsoft VS Code CLI (code)
RUN curl -fsSL 'https://code.visualstudio.com/sha/download?build=stable&os=cli-linux-x64' | tar -xz -C /usr/local/bin && \
    chmod 755 /usr/local/bin/code

# Create workspace and data persistence directories
RUN mkdir -p /workspace /data /etc/systemd/system

COPY entrypoint.sh /entrypoint.sh
COPY code-tunnel-start.sh /usr/local/bin/code-tunnel-start
COPY welcome.sh /etc/profile.d/welcome.sh
COPY code-tunnel.service /etc/systemd/system/code-tunnel.service

RUN chmod +x /entrypoint.sh /usr/local/bin/code-tunnel-start /etc/profile.d/welcome.sh

RUN echo 'source /etc/profile' >> /root/.bashrc

WORKDIR /workspace
EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
