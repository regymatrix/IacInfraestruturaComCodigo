#!/bin/bash

echo "Atualizando Servido com Apache"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando "

cd /tmp
wget https://github.com/regymatrix/IacInfraestruturaComCodigo/archive/refs/heads/main.zip
unzip main.zip
cd IacInfraestruturaComCodigo-main/SiteStrangerthings
cp  -R * /var/www/html/
