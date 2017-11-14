FROM php:7.1-fpm

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install git -y
RUN apt-get install vim -y
RUN apt-get install zip -y

RUN docker-php-ext-install pdo_mysql
RUN pecl install xdebug
RUN docker-php-ext-enable xdebug

COPY conf/php.ini /etc/php/7.1/fpm/conf.d/40-custom.ini

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer