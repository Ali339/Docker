# Base layer
FROM centos 
# installing the rquired packages
RUN \
    yum install -y \
      httpd \
      createrepo 

# Setting up my working dir in the container
WORKDIR /var/www/html 

# Making a dir under DocumentRoot of the container
RUN mkdir ./packages

#Copying packages from the docker host to container 
ADD packs ./packages

# Creating metadata 
RUN createrepo packages 

#Starting apache process in the container
CMD apachectl -DFOREGROUND
