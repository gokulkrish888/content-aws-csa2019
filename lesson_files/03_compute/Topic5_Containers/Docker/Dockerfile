FROM centos:latest
MAINTAINER Gokul Inc
RUN yum -y install httpd
COPY index.html LeBron-James-could-choose-to-join-the-Lakers-in-free-agency-1384778.jpg /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

