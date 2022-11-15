FROM ubuntu

 ENV TZ=Europe/Kiev
 
 COPY src/index.php /var/www/html

 RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
 RUN    apt update
 RUN    apt install -y apache2 php
 RUN    rm -rf /var/www/html/index.html
     
 EXPOSE 80

 CMD ["apachectl", "-D", "FOREGROUND"]
