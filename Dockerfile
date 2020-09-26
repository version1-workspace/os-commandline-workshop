FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    sudo iproute2 iputils-ping vim locales && \
    locale-gen ja_JP.UTF-8 && \
    echo "export LANG=ja_JP.UTF-8" >> /etc/profile && \
    echo 'root:root' | chpasswd && \
    useradd -m -p $(perl -e 'print crypt($ARGV[0], "password")' 'ubuntu') ubuntu && \
    useradd -m -p $(perl -e 'print crypt($ARGV[0], "password")' 'guest') guest && \
    gpasswd -a ubuntu sudo && \
    cat /etc/passwd | sed -e 's/\/bin\/sh/\/usr\/bin\/bash/g' > /etc/passwd.tmp && \
    cp /etc/passwd /etc/passwd.org && \
    cp /etc/passwd.tmp /etc/passwd
