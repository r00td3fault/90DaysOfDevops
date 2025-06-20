#!/bin/bash

echo "------------Iniciando--------------"
current_datetime=$(date +"%Y-%m-%d-%H_%M_%S")
file_name="logs-${current_datetime}.tar.gz"

echo "---------comprimiendo-------"
tar -czvf $file_name /var/log

echo "----------moviendo---------"

if [ -d ~/backups/ ]; then
	echo "la carpeta ya existe moviendo........"
	mv $file_name ~/backups/
else
	echo "la carpeta no existe creando carpeta y moviendo...."
	mkdir ~/backups && mv $file_name ~/backups/
fi

echo "buscando backups de más de 7 días...."
find ~/backups/ -type f -mtime +7 -exec rm -f {} \;
