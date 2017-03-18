FROM thecompiler/archlinux-bare
MAINTAINER Florian Bruhin

RUN echo 'ALL ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers && \
    useradd user -u 1001 && \
    mkdir /home/user && \
    chown user:users /home/user
