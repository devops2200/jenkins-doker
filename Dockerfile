FROM ubuntu

 ENV TZ=Europe/Kiev
 
 

 RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && apt update && apt install -y apache2 php    
 RUN rm -rf /var/www/html/index.html

 COPY src/index.php /var/www/html
 
 EXPOSE 80

 CMD ["apachectl", "-D", "FOREGROUND"]
