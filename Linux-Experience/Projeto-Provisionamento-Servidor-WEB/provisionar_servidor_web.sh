#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/brERS/admin-brers/blob/main/src/zip/admin-brers.zip
unzip admin-brers.zip
cd admin-brers
cp -R * /var/www/html/