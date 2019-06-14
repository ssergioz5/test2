FROM debian
MAINTAINER Sergio Romero
RUN apt-get update
RUN apt-get install vim -y
RUN apt-get install apache2 -y
RUN echo "<h1>Apache with Docker</h1>" > /var/www/html/index.html
EXPOSE 8082
ENTRYPOINT apache2ctl -D FOREGROUND