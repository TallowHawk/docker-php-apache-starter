FROM php:7.2.10-apache

RUN apt-get update && apt-get -y upgrade

RUN docker-php-ext-configure pdo_mysql --with-pdo-mysql=mysqlnd \
    && docker-php-ext-configure mysqli --with-mysqli=mysqlnd

RUN docker-php-ext-install \
    pdo \
    pdo_mysql

RUN a2enmod rewrite && a2enmod headers

WORKDIR /var/www/site/

ADD apache-config.conf /etc/apache2/sites-enabled/000-default.conf
