FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    openssh-server \
    sudo \
    iproute2 \
    iputils-ping \
    curl \
    vim \
    net-tools \
    fail2ban \
    auditd \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash secuser \
    && echo "secuser:password" | chpasswd \
    && usermod -aG sudo secuser

RUN mkdir /var/run/sshd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
