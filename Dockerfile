FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get install apache2 -y
ADD .  /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
