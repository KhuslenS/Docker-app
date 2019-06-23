FROM centos
LABEL maintainer="khuslentuguldur"
RUN yum install httpd -y
RUN systemctl enable httpd
EXPOSE 80
COPY ./index.html /var/www/html/index.html
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
