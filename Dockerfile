FROM archlinux/base
MAINTAINER Florian Bruhin

RUN pacman -Suyy --noconfirm shadow
RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen && \
    echo "LANG=en_US.UTF-8" > /etc/locale.conf
ENV LANG=en_US.UTF-8
RUN echo 'ALL ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers && \
    useradd user -u 1001 && \
    mkdir /home/user && \
    chown user:users /home/user
