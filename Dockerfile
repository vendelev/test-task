FROM php:7.4.3-cli-alpine

ENV COMPOSER_ALLOW_SUPERUSER 1

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php --install-dir=/bin --filename=composer \
    && rm -fv composer-setup.php

WORKDIR /var/www
COPY . /var/www
RUN composer install

EXPOSE 8989

CMD php -S 0.0.0.0:8989 -t /var/www/src/public
