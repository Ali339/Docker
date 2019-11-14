FROM centos 
RUN \
  yum -y install \
    httpd \
    php \
    mod_ssl \ 
    openssl
COPY http-ssl /var/www/html
COPY docker.crt /docker.crt
COPY docker.key /docker.key
COPY ssl.conf /etc/httpd/conf.d/default.conf
CMD apachectl -DFOREGROUND
