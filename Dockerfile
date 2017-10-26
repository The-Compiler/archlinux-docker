FROM archlinux/base
MAINTAINER Florian Bruhin

RUN pacman -Suyy --noconfirm shadow
RUN echo 'ALL ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers && \
    useradd user -u 1001 && \
    mkdir /home/user && \
    chown user:users /home/user
