# 90DaysOfDevops
🚀 Semana 01

## 🚀 Desafío Ansible - Día 6

Este reto forma parte del programa 90 Días de DevOps con Roxs y te permitirá aplicar lo aprendido sobre Ansible automatizando la configuración de un servidor desde cero.

### Objetivo

Crear un playbook Ansible llamado desplegar_app.yml que:

- 📦 Instale Nginx y cree una landing page personalizada
- 👤 Cree un usuario devops con acceso sudo
- 🔐 Configure reglas de firewall para puertos 22, 80 y 443
- 📂 Utilice una estructura profesional con inventories/ y roles/

Además, deberás integrar este despliegue con Vagrant para que la máquina virtual se configure automáticamente.

### 📁 Estructura del Proyecto

```code

desafio/
├── Vagrantfile
├── playbook.yml
├── inventories/
│   └── vagrant
│       └── hosts.ini
├── roles/
│   ├── nginx/
│   │   └── tasks/main.yml
│   ├── devops/
│   │   └── tasks/main.yml
│   └── firewall/
│       └── tasks/main.yml
├── scripts/
└── README.md

```

### Problemas con windows y recomendaciones de ejecución
Si estás ejecutando el laboratorio en windows vas a tener multiples problemas de compatibilidad y permisos por lo que te sugiero
realizarlo de la siguiente forma.
- Levanta 2 VM una cómo server de ansible y otra cómo nodo ( si quieres puedes levantar más nodos )
- Para evitar problemas de permisos de las llaves ssh y los archivos en windows ( no respeta permisos ) copia las claves de los nodos 
  en el directorio .ssh
- Conectate por ssh al server de ansible para iniciar los roles y todas las tareas que tenga que usar el ansible cli
- Modificar desde windows con tu IDE los playbooks y configurar los roles que queda en la carpeta /vagrant de las VM
- Provisionar sin reiniciar 

### Comandos

```bash
#levantar el entorno ansible y los nodos de acuerdo al Vagrantfile
 vagrant up

#conectarse por ssh vagrant ssh <vm_name>
vagrant ssh node1

#obtener config ssh de la vm -> vagrant ssh-config <vm_name>
vagrant ssh-config node1

#ejecutar solo la provision sin reiniciar la VM -> vagrant provision <vm_name>
vagrant provision ansible_server

#reiniciar y provisionar -> vagrant reload --provision <vm_name>
vagrant reload --provision ansible_server
```

Para efectos del desafio se agrupo varias tares en un rol sin embargo se puede discriminar mucho más.
