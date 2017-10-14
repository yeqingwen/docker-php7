FROM nimmis/apache-php7
MAINTAINER qingwen.ye@1024hw.org

ENV TIMEZONE Asia/Shanghai

RUN apt-get update && \
    apt-get install -y php-memcache php-mysql php-gd php-curl php-mbstring php-bcmath php-xml \
    php-mcrypt php-zip php-json php-imagick && \
    cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime && \
    rm -rf /var/lib/apt/lists/* && \
    a2enmod rewrite && \
    a2enmod proxy && \
    a2enmod proxy_http