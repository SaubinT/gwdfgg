docker run -ti --name debian_saubin -p 82:80 debian /bin/bash
apt update
apt upgrade -y
apt install apache2 php php-xml php-mbstring php-intl php-mysql zip -y
php -r "copy('https://getcomposer.org/installer', '/root/composer-setup.php');"
php /root/composer-setup.php --install-dir="/usr/bin"
apt install git -y
git clone https://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@github.com/SaubinT/Sae104Symfony.git /var/www/html/site
cd /var/www/html/site
apt install php-curl -y
composer.phar -n update && composer.phar -n install
apt install lynx nano -y
cd etc/apache2/sites-available
a2ensite site.conf
a2dissite 000-default.conf
a2enmod rewrite
/usr/sbin/service apache2 start