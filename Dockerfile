FROM richarvey/nginx-php-fpm

# install curl for communication
RUN apt-get update
RUN apt-get install -y curl libcurl3 libcurl3-dev php5-curl

# overwrite nginx conf to set the webroot according to the cake php project
ADD ./docker_nginx.conf /etc/nginx/sites-available/default.conf

ADD docker_entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]s
