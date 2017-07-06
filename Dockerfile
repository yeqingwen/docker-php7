FROM ubuntu:16.04
MAINTAINER qingwen.ye@1024hw.org

RUN \
    apt-get clean && \
    rm -fR /var/lib/apt/lists/*

RUN \
  echo "deb http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse" > /etc/apt/sources.list && \
  echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse" >> /etc/apt/sources.list && \
  echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse" >> /etc/apt/sources.list && \
  echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse" >> /etc/apt/sources.list && \
  apt-get update --fix-missing && \
  apt-get install -y nfs-common expect imagemagick ffmpeg pkg-config libssl-dev libpcre3-dev && \
  apt-get install -y php apache2 libapache2-mod-php 

RUN \
  apt-get update && \
  apt-get install -y php-memcache php-mysql php-gd php-curl php-mbstring php-bcmath php-xml && \
  apt-get install -y php-mcrypt php-zip php-json php-imagick php-imap php-recode php-mongodb

RUN \
  apt-get update && \
  a2enmod rewrite && \
  service apache2 restart

RUN \
  apt-get --purge remove build-essential -y && \
  apt autoremove -y && \
  apt-get clean && rm -rf /var/lib/apt/lists/*