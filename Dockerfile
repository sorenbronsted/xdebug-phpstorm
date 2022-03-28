FROM ubuntu:22.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt update && apt -y upgrade && apt -y install php php-xdebug php-pgsql composer
COPY xdebug.ini /etc/php/8.1/mods-available
RUN phpenmod xdebug
VOLUME /opt/project
WORKDIR /opt/project
EXPOSE 8000
CMD php -S 0.0.0.0:8000