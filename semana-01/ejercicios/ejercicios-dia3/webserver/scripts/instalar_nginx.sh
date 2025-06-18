#!/bin/bash
echo "---Actualización de paquetes---"
sudo apt-get update

echo "Instalando nginx"
sudo apt-get install nginx -y

echo "--- Cargando nginx al inicio----"
sudo systemctl enable nginx

echo "---Iniciar Nginx---"
sudo systemctl start nginx

echo "----Aplicando ajustes al firewall-----"
sudo ufw allow 'Nginx Full'

echo "---Habilitar el firewall---"
sudo ufw enable