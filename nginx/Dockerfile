FROM centos 

COPY nginx.repo /etc/yum.repos.d
COPY ius.repo   /etc/yum.repos.d
RUN \
    yum clean all && \
    yum install -y nginx && \
    yum install -y  php 
RUN mkdir /nginx_php
COPY nginx.conf /etc/nginx/conf.d/default.conf 
COPY test.php /nginx_php
COPY start.sh /start.sh
COPY http-ssl /nginx_php
RUN chmod +x /start.sh
CMD /start.sh
