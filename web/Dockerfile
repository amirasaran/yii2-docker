FROM alpine:latest
MAINTAINER Amir Mohsen Asaran <admin@mihanmail.com>

COPY /rootfs/etc/apk /etc/apk

# Add PHP 7
RUN apk --update add \
    bash \
    supervisor \
    php7 \
    php7-xml \
    php7-xsl \
    php7-pdo_mysql \
    php7-mcrypt \
    php7-curl \
    php7-json \
    php7-fpm \
    php7-phar \
    php7-openssl \
    php7-mysqli \
    php7-ctype \
    php7-opcache \
    php7-mbstring
RUN apk add nginx
ENV DEBIAN_FRONTEND=noninteractive

COPY /rootfs /

# remove caches
RUN rm -fr /var/cache/apk/* && \
    chmod +x /start.sh /install.sh && \
    ln -s /usr/bin/php7 /usr/local/bin/php

# Install composer global bin
RUN curl -sS https://getcomposer.org/installer | php7 \
    && mv composer.phar /usr/local/bin/composer

# ADD SOURCE
ONBUILD RUN chown -Rf nginx:nginx /var/www/

# expose ports
EXPOSE 80

# change default command
CMD /start.sh
