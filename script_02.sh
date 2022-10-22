#!/bin/bash

echo "atualizando pacotes"
apt-get update 
apt-get upgrade -y

echo "instalacoes necessarias"
apt-get install apache2 -y
apt-get install unzip -y

echo "tratativa do arquivo"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "fim"





