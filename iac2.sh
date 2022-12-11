#!/usr/bin/bash

echo "Atualizando o servidor..."
sudo apt-get update
sudo apt-get upgrade -y

echo "Instalando o apache2..."
sudo apt-get install apache2 -y

echo "Instalando o unzip..."
sudo apt-get install unzip -y

echo "Baixando a aplicação front-end no diretório /tmp"
cd /tmp
wget "https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip"

echo "Descompactando o arquivo .zip"
unzip main.zip

echo "apagando o index"
rm /var/www/html/index.html

echo "Copiando os arquivos da aplicação de tmp para o direório padrão do apache"
cd linux-site-dio-main/
cp -R * /var/www/html/

echo "FINALIZANDO..."
