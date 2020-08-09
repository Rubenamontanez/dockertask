# TODO-1: Build from scratch : a centos7 container that runs an httpd server and serves it to local host port 80.
# TODO-2: Build from scratch : a centos7 container that runs an httpd server and displays a custom index.html
# FROM centos:7
# RUN  update -y
# RUN install httpd -y

# COPY index.html /var/www/html/index.html

# ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
# Create a Volume mount associated to your httpd server so that you can change the index.html file in real time. 
# command using a volume mount
# docker run -d -p 80:80 -v C:\Users\rmantanez\rmvscode\dockertask:/var/www/html locstore

 
# TODO-3: Build from scratch : a ubuntu container that runs an nginx server and serves it to port 80
# FROM ubuntu:latest

# ENV DEBIAN_FRONTEND=noninteractive 

# RUN apt-get update 
# RUN apt-get install apache2  apache2-utils -y

# COPY index.html /var/www/html/index.html

# EXPOSE 80
# CMD ["apachectl", "-D", "FOREGROUND"]

# TODO-4: Build from scratch : a centos7 container that runs an httpd server and displays a custom index.html that is pulled from github
# FROM centos:7

# RUN yum install httpd -y
# RUN yum -y install git 

# RUN git clone https://github.com/Rubenamontanez/dockertask.git

# COPY index.html /var/www/html/index.html

# ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]

# TODO-5: Build from scratch : a centos7 container that runs an httpd server and displays a custom index.html that is stored in a local storage

FROM centos:7

RUN yum install httpd -y


COPY index.html /var/www/html/index.html

ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
# docker run -d -p 80:80 -v myhtml:/var/www/html locstore

# Build from scratch : a centos7 container that runs an httpd server and displays a custom index.html that is stored in virtual storage (within the container )
