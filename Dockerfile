FROM ubuntu:latest

RUN apt-get -y update && apt-get -y upgrade && apt-get -y install apache
WORKDIR /var/www

COPY . /var/www/html

#RUN git clone --depth=1 https://<name>:<password>@bitbucket.org/clearreturns/docker-demo.git /var/www/html/

EXPOSE 80 443

CMD /usr/sbin/httpd -D FOREGROUND
