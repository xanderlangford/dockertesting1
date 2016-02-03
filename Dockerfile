FROM centos:latest

RUN yum -y install httpd curl unzip git
WORKDIR /var/www

COPY . /var/www/html

#RUN git clone --depth=1 https://<name>:<password>@bitbucket.org/clearreturns/docker-demo.git /var/www/html/

EXPOSE 8 443

CMD /usr/sbin/httpd -D FOREGROUND
