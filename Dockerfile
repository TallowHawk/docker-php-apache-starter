FROM php:7.2.10-apache

RUN apt-get update && apt-get -y upgrade

RUN docker-php-ext-install \
    mysqli

RUN a2enmod rewrite

WORKDIR /var/www/site/

ADD apache-config.conf /etc/apache2/sites-enabled/000-default.conf
