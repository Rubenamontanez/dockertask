# TODO-1: Build from scratch : a centos7 container that runs an httpd server and serves it to local host port 80.
# TODO-2: Build from scratch : a centos7 container that runs an httpd server and displays a custom index.html
# FROM centos:7
# RUN  update -y
# RUN install httpd -y

# COPY index.html /var/www/html/index.html

# ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]

 
# TODO-3: Build from scratch : a ubuntu container that runs an nginx server and serves it to port 80
# FROM ubuntu:latest

# ENV DEBIAN_FRONTEND=noninteractive 

# RUN apt-get update 
# RUN apt-get install apache2  apache2-utils -y

# COPY index.html /var/www/html/index.html

# EXPOSE 80
# CMD ["apachectl", "-D", "FOREGROUND"]

# TODO-4: Build from scratch : a centos7 container that runs an httpd server and displays a custom index.html that is pulled from github
FROM centos:7

RUN yum install httpd -y
RUN yum -y install git 

RUN git clone https://github.com/Rubenamontanez/dockertask.git

COPY index.html /var/www/html/index.html

ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]

# TODO-5: Build from scratch : a centos7 container that runs an httpd server and displays a custom index.html that is stored in a local storage