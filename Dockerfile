FROM ubuntu
RUN aptll-get update -y
run apt-get install apache2 -y
COPY . /var/www/html
EXPOSE 3000
CMD ["/usr/sbin/apachectl","-D","FOREGROUND"]
