FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y
RUN apt-get install apache2 

COPY index.html /var/www/html

CMD [“apache2ctl”, “-D”, “FOREGROUND”]
EXPOSE 80
