FROM centos
LABEL date 20191112

#Defining args which will be provided on CLI
ARG user=application
ARG package

RUN yum -y install $package  unzip

WORKDIR /var/www/html

#Defining a variable 
ENV LINK https://github.com/Ali339/static_web_sample/archive/master.zip 

#Downloading the codes i needed to deploy test website and renaming the folder to code.zip
ADD $LINK  ./code.zip

#the folder downloaded from the github will be a zip folder
#unzipping will result in a another folder holding codes
#moving all codes and env vars  under the DocumentRoot of apache
RUN unzip code.zip && mv static_web_sample-master/* .  && echo $LINK >> ./env.html

#adding a user to maintain the web and transfering ownership (optional)
RUN useradd $user  && chown -R $user:$user /var/www/html

#Switching to the user
USER $user

#housekeeping of unwanted files and folders
RUN rm -rf static_web_sample-master  code.zip

#Switching to the root to start the service as a redular user have no previleges to do this
USER root

#Starting the process
CMD apachectl -DFOREGROUND

