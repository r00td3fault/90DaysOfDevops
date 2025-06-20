#!/bin/bash

services=("nginx", "mysql", "docker")

for service in "${services[@]}"; do
	if ! systemctl is-active --quiet $service; then
		echo "El servicio ${service} está inactivo" &&  mail -s "Estado del servicio $service inactivo" admin@ejemplo.com
	else
		echo "El servicio ${service} está activo" &&  mail -s "Estado del servicio $service activo" admin@ejemplo.com
	fi
done


