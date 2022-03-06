FROM ubuntu:18.04

MAINTAINER waiphyo

RUN apt-get -yqq update; apt-get -yqq install nginx

ADD index.html /var/www/html/index.html

ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]

EXPOSE 80
