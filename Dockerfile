# Download base image
FROM devopsedu/webapp

# Maintainer
MAINTAINER Puneet Soni puneet.soni111@gmail.com

# Update
RUN apt -y update

# Install apache
RUN apt install -y apache2

# Install PHP modules
RUN apt install -y php libapache2-mod-php

# Copy PHP application files
RUN rm -rf /var/www/html/*
ADD website /var/www/html

# Configure Apache
#RUN chown -R www-data:www-data /var/www
#ENV APACHE_RUN_USER www-data
#ENV APACHE_RUN_GROUP www-data
#ENV APACHE_LOG_DIR /var/log/apache2

# Expose port 8085
EXPOSE 8085

# Start Apache service
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
