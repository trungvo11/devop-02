FROM centos:latest

RUN yum install httpd zip unzip -y
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/character.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip character.zip
RUN cp -rvf 2110_character/* .
# RUN rm -rf __MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
# docker run --privileged -d -p 80:80 trung-centos:v1 /sbin/init    -> moi dung duoc command : systemctl status httpd
