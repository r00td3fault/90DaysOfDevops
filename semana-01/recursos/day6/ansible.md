# 90DaysOfDevops
🚀 Semana 01

## Introducción a Ansible

### ¿Por qué Ansible?
- Agente-less: No requiere software adicional en los nodos gestionados
- Idempotencia: Ejecuta solo cambios necesarios (no acciones redundantes)
- YAML: Lenguaje humano-readable para playbooks

### Componentes Principales

| componente | Función |
|------------|---------|
| Inventario |	Lista de hosts gestionados (/etc/ansible/hosts) |
| Playbooks	 | "Recetas" de automatización (archivos YAML) |
| Módulos	 | Unidades de acción (ej: apt, copy, service) |
| Roles	     | Plantillas reusables para organizar playbooks complejos |

```bash
# editar el inventario
sudo nano /etc/ansible/hosts

[webservers]
192.168.1.10 ansible_user=admin
192.168.1.11 ansible_user=admin

[databases]
db01.example.com

# test conexion
ansible all -m ping -u admin

# Instalar Nginx en webservers
ansible webservers -m apt -a "name=nginx state=present" -b --become-user=root

# Reiniciar servicios
ansible all -m service -a "name=nginx state=restarted"

# Ejecutar playbook en un servidor remoto (sin Vagrant)
ansible-playbook -i 192.168.1.100, -u ubuntu --private-key ~/.ssh/id_rsa playbook.yml

# sobre escribir variables
ansible-playbook -i hosts.ini playbook.yml -e "web_root=/var/www/custom"

# Ver hosts disponibles en inventario
ansible-inventory -i hosts.ini --list

# Probar conexión SSH
ansible all -i hosts.ini -m ping

# Ejecutar comando ad-hoc
ansible webservers -i hosts.ini -a "free -h"
```

### Roles
En resumen divide el playbook en varios archivos, estan limitados a una funcionalidad especifica o a un determinado resultado.
permite empaquetar funcionalidades para permitir reutilizarlas con una estructura clara definida y parametrizable pudiendo 
reproducir facilmente dicho comportamiento de manera dinamica y sin necesidad de reescribir código.