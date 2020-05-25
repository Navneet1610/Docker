FROM ubuntu
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update -y
RUN apt-get install apache2 -y
CMD ["apachectl" , "-D","FOREGROUND"]
EXPOSE 80

