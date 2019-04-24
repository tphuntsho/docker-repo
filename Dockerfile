FROM centos:latest
MAINTAINER DevOpsTech
RUN yum -y install httpd git && git clone https://github.com/tphuntsho/docker-repo.git /var/www/html
EXPOSE 80
ENTRYPOINT ["usr/sbin/httpd","-D","FOREGROUND"]
