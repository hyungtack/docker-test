FROM ubuntu:14.04
MAINTAINER "htKim <wooluk0987@gmail.com>"
LABEL "purpose" = "DOCKER TEST"
RUN apt-get update
RUN apt-get -y install apache2
ADD ./test.html /var/www/html
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo hello >> test.html"]
EXPOSE 80
CMD apachectl -D FOREGROUND
