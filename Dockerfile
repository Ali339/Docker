FROM centos
RUN yum -y install httpd
RUN useradd ali
RUN yum -y install passwd
RUN echo "abc123" | passwd --stdin ali
RUN mkdir /var/www/html/packages
COPY packages /var/www/html/packages
CMD apachectl -DFOREGROUND

