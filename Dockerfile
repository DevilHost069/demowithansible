FROM centos:latest
MAINTAINER bhuwanchy069@gmail.com
RUN yum -y install httpd \
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page266/labspa.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip labspa.zip
RUN cp -rvf labspa/* .
RUN rm -rf labspa labspa.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 
