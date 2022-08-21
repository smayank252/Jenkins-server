FROM centos:latest
RUN yum install httpd zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page282/royal-cars.zip /var/www/html
WORKDIR /var/www/html
RUN unzip royal-cars.zip
RUN rm -rf royal-cars.zip &&\
    cp -rf royal-cars/* .
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
