#!/bin/bash
mkdir ~/temp_for_install_nginx
cd ~/temp_for_install_nginx
wget http://nginx.org/keys/nginx_signing.key
sudo apt-key add nginx_signing.key

echo "deb http://nginx.org/packages/ubuntu/ trusty nginx" >> /etc/apt/sources.list
echo "deb-src http://nginx.org/packages/ubuntu/ trusty nginx" >> /etc/apt/sources.list

cd ../
rm -rf ~/temp_for_install_nginx

apt-get update
apt-get install nginx
