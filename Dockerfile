
FROM jdecode/php-pgsql-gprc-laravel:0.3

RUN sed -i 's/80/${PORT}/g' /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf

#RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"

COPY . .
#RUN git pull origin master
RUN composer install -n --prefer-dist

