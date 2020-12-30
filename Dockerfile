FROM php:7.2-apache

ARG xdebug_remote_host=127.0.0.1

## xdebug 3
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug \
    && echo "xdebug.client_host=${xdebug_remote_host}" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    && echo "xdebug.mode=debug" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \

## xdebug 2
#RUN pecl install xdebug-2.9.2 \
#    && docker-php-ext-enable xdebug \
#    && echo "zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20170718/xdebug.so" >> /usr/local/etc/php/conf.d/php.ini \
#    && echo 'xdebug.remote_port=9000' >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
#    && echo "xdebug.remote_host=${xdebug_remote_host}" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
#    && echo 'xdebug.remote_enable=1' >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
#    && echo 'xdebug.remote_connect_back=0' >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini