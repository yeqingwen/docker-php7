FROM nimmis/apache-php7
MAINTAINER qingwen.ye@1024hw.org

RUN apt-get update && \
    apt-get install -y php-memcache php-mysql php-gd php-curl php-mbstring php-bcmath php-xml \
    php-mcrypt php-zip php-json php-imagick && \
    rm -rf /var/lib/apt/lists/*
