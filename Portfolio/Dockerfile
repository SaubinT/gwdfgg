FROM debian 
RUN apt update && apt upgrade -y 
RUN apt update && apt install apache2 -y
RUN apt update && apt install php -y
RUN apt update && apt install php-xml -y
RUN apt update && apt install php-mbstring -y
RUN apt update && apt install php-intl -y
RUN apt update && apt install php-mysql -y
RUN apt update && apt install zip -y
RUN php -r "copy('https://getcomposer.org/installer', '/root/composer-setup.php');"
RUN php /root/composer-setup.php --install-dir="/usr/bin"
RUN apt update && apt install git -y
RUN git clone https://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@github.com/SaubinT/Sae104Symfony.git /var/www/html/site
WORKDIR /var/www/html/site
RUN apt update && apt install composer -y
RUN apt update && apt install lynx -y
RUN apt update && apt install nano -y
COPY site.conf /etc/apache2/sites-available/site.conf
RUN a2ensite site.conf
RUN a2dissite 000-default.conf
RUN a2enmod rewrite
RUN service apache2 restart
EXPOSE 80

CMD /usr/sbin/service apache2 start && /bin/bash