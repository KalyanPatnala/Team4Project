FROM ubuntu

RUN apt update -y && apt install apache2 -y

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true
RUN apt install sudo php php-mysql libapache2-mod-php -y 

CMD ["apache2ctl","-D","FOREGROUND"]
