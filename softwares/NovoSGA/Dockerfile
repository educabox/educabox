FROM php:5.6-apache

WORKDIR /var/www/html/

# Preparação da imagem e instação de pacotes
RUN echo "deb http://archive.debian.org/debian/ stretch main contrib non-free" > /etc/apt/sources.list
RUN echo "deb http://archive.debian.org/debian/ stretch-proposed-updates main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb http://archive.debian.org/debian-security stretch/updates main contrib non-free" >> /etc/apt/sources.list

RUN apt-get update
RUN apt-get install git zlib1g-dev libldb-dev nano --yes

# Configurações do Apache

RUN docker-php-ext-install \
  mysqli \
  pdo \
  pdo_mysql \
  gettext \
  zip

RUN echo 'date.timezone = America/Campo_Grande' > /usr/local/etc/php/conf.d/datetimezone.ini

RUN a2enmod rewrite headers

RUN sed -i 's|/var/www/html|/var/www/html/public|g' /etc/apache2/sites-available/000-default.conf
RUN sed -i 's|AllowOverride None|AllowOverride All|g' /etc/apache2/apache2.conf

COPY ./conf/painel.conf /etc/apache2/conf-available/
COPY ./conf/triagem.conf /etc/apache2/conf-available/
COPY ./conf/php.ini /var/www/html/

RUN a2enconf painel
RUN a2enconf triagem

# Arquivos do NovoSGA

RUN rm * -rf

RUN mkdir /var/www/triagem && chown www-data /var/www/triagem

USER www-data
RUN git clone -b v1.5 https://github.com/novosga/novosga.git /var/www/html
RUN git clone --depth 1 --branch v1.4.0 https://github.com/novosga/triage-app /var/www/triagem

USER root

RUN curl -sS https://getcomposer.org/installer | php

RUN php composer.phar install

# Cabeçalho para usar https sem erros de "mixed content"
#RUN sed -i '/DocumentRoot \/var\/www\/html\/public/a Header always set Content-Security-Policy "upgrade-insecure-requests"' /etc/apache2/sites-available/000-default.conf

# Usar variáveis de ambiente
COPY ./conf/database.php /var/www/html/config/

COPY painel/ /var/www/painel

# Variáveis de ambiente da imagem
ENV APP_ENV=prod
ENV LANGUAGE=pt_BR
ENV TZ=America/Campo_Grande
