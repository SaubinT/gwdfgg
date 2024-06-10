docker run -ti --name debian_saubin -p 82:80 debian /bin/bash
apt update
apt ugrade -y
apt install apache2 -y
apt install php -y
apt install php-xml -y
apt install php-mbstring -y
apt install php-intl -y
apt install php-mysql -y
apt install zip -y
php -r "copy('https://getcomposer.org/installer', '/root/composer-setup.php');"
php /root/composer-setup.php --install-dir="/usr/bin"
apt install git -y
git clone https://github.com/SaubinT/Sae104Symfony.git /var/www/html/site