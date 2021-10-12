#!/bin/bash
  
echo "Switching to PHP 5.6. One moment please..."
a2dismod php7.4
a2enmod php5.6
update-alternatives --set php /usr/bin/php5.6
systemctl restart apache2
php -v
php -i | grep "Loaded Configuration File"
