FROM php:7.4-cli
RUN docker-php-source extract \
	&& docker-php-source delete
WORKDIR /var/www/html
RUN apt-get update -y && apt-get install -y libmariadb-dev
RUN docker-php-ext-install mysqli
