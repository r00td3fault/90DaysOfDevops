#!/bin/bash

set -e

sudo apt update
sudo apt install ansible -y


# if grep -Fxq "[webservers]" /etc/ansible/hosts
# then
#     # code if found
#     echo "Ya existe el archivo de configuracion"
# else
#     # code if not found
#     echo "anandiendo host a ansible...."
#     sudo echo "[webservers]" >> /etc/ansible/hosts
#     sudo echo "192.168.86.14 ansible_user=vagrant" >> /etc/ansible/hosts
#     sudo echo "192.168.86.15 ansible_user=vagrant" >> /etc/ansible/hosts
# fi


#ingresar al ansible_server como root y modificar el archivo /etc/ansible/hosts
# host1 ansible_user=vagrant
# host2 ansible_user=vagrant






