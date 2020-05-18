#!/bin/bash
yum install -y httpd php git

cd /var/www/html



wget https://raw.githubusercontent.com/gokulkrish888/content-aws-csa2019/master/lesson_files/07_hybrid_scaling/1_LBandASG/CLBandHealth/Lamar-Jackson-Baltimore-Ravens-1040x572.jpg
mv Lamar-Jackson-Baltimore-Ravens-1040x572.jpg goat.jpg
wget https://github.com/linuxacademy/content-aws-csa2019/raw/master/lesson_files/07_hybrid_scaling/1_LBandASG/CLBandHealth/index.php
mv /var/www/html/htaccess /var/www/html/.htaccess

mkdir /var/www/html/goat
cp /var/www/html/Lamar-Jackson-Baltimore-Ravens-1040x572.jpg /var/www/html/goat
cp /var/www/html/index.php /var/www/html/goat
cp /var/www/html/.htaccess /var/www/html/goat

sudo systemctl start httpd
sudo systemctl enable httpd
sudo usermod -a -G apache ec2-user
sudo chown -R ec2-user:apache /var/www
sudo chmod 2775 /var/www && find /var/www -type d -exec sudo chmod 2775 {} \;
find /var/www -type f -exec sudo chmod 0664 {} \;
