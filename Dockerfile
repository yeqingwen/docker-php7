FROM eboraas/apache-php
MAINTAINER qingwen.ye@1024hw.org

#RUN \
#  apt-get clean && \
#  rm -fR /var/lib/apt/lists/*
#
#RUN \
#
#  echo "deb http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse" > /etc/apt/#sources.list && \
#  echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse" >> /etc/#apt/sources.list && \
#  echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse" >> /etc/apt#/sources.list && \
#  echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-proposed main restricted universe multiverse" >> /etc/#apt/sources.list && \
#  echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse" >> /etc/#apt/sources.list && \
#  echo "deb-src http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse" >> /etc/apt/#sources.list && \
#  echo "deb-src http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse" >> /#etc/apt/sources.list && \
#  echo "deb-src http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse" >> /etc#/apt/sources.list && \
#  echo "deb-src http://mirrors.aliyun.com/ubuntu/ xenial-proposed main restricted universe multiverse" >> /#etc/apt/sources.list && \
#  echo "deb-src http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse" >> /#etc/apt/sources.list && \
#  apt-get update && \
#  apt-get install -y expect imagemagick ffmpeg libssl-dev libpcre3-dev && \
#  apt-get install -y php apache2 libapache2-mod-php
#
#RUN \
#  apt-get update && \
#  apt-get install -y php-memcache php-mysql php-gd php-curl php-mbstring php-bcmath php-xml && \
#  apt-get install -y php-mcrypt php-zip php-json php-imagick php-imap php-recode php-mongodb
#
#RUN \
#  echo "ServerName 127.0.0.1" >> /etc/apache2/sites-available/000-default.conf && \
#  apt-get update && \
#  a2enmod rewrite && \
#  update-rc.d apache2 defaults && \
#  service apache2 restart
#
#RUN \
#  apt-get --purge remove build-essential apache2-dev git -y && \
#  apt-get --purge remove python* -y && \
#  apt-get --purge remove libpython* -y && \
#  apt autoremove -y && \
#  apt-get clean && \
#  rm /tmp/* -rf && \
#  rm -rf /var/lib/apt/lists/*
