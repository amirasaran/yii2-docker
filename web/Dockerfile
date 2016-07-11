FROM alpine:latest
MAINTAINER Amir Mohsen Asaran <admin@mihanmail.com>

COPY /rootfs/etc/apk /etc/apk

# Add PHP 7
RUN apk --update add \
    bash \
    curl \
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
    php7-mbstring \
    php7-session \
    php7-gd \
    nginx

# Install composer global bin
RUN ln -s /usr/bin/php7 /usr/bin/php && curl -sS https://getcomposer.org/installer | php7 \
    && mv composer.phar /usr/bin/composer \
    && composer global require "fxp/composer-asset-plugin:^1.2.0"

COPY /rootfs /

# remove caches
RUN rm -fr /var/cache/apk/* && \
    chmod +x /start.sh /install.sh

# expose ports
EXPOSE 80

# change default command
CMD /start.sh
