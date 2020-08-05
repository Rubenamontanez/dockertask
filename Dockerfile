# Build from scratch : a centos7 container that runs an httpd server and serves it to local host port 80.
# Build from scratch : a centos7 container that runs an httpd server and displays a custom index.html
# FROM centos:7
# RUN  update -y
# RUN install httpd -y

# COPY index.html /var/www/html/index.html

# ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]

 
# Build from scratch : a ubuntu container that runs an nginx server and serves it to port 80
FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive 

RUN apt-get update 
RUN apt-get install apache2  apache2-utils -y

COPY index.html /var/www/html/index.html

EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]

