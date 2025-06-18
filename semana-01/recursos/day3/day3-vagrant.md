# 90DaysOfDevops
🚀 Semana 01

## 🚀 Vagrant: Automatización con Shell

### 🎯 ¿Por qué usar Vagrant?
✅ Automatizás el entorno desde cero
✅ Probás sin miedo (podés destruir y volver a levantar en segundos)
✅ Es ideal para testear scripts, Ansible, Docker o configuraciones
✅ ¡Funciona igual en todos los sistemas operativos!

🚀 Comandos Esenciales
```bash
vagrant up      #Inicia la máquina virtual
vagrant ssh     #Conectarse via SSH (necesita cliente como Git Bash)
vagrant halt    #Apagar la VM
vagrant destroy #Eliminar la VM completamente
vagrant reload --provision  #Reiniciar y re-ejecutar provisionamiento
vagrant up --provision | tee vagrant.log #Ver output del provisionamiento

#Revisa logs en /var/log/cloud-init-output.log
```

### 📦 Vagrant Boxes: Arquitectura y Fuentes Oficiales

Un box es un paquete portable que contiene:
- Sistema operativo base (Ubuntu, CentOS, Windows, etc.)
- Configuración mínima para funcionar con Vagrant
- Metadatos de versión y proveedor (VirtualBox, Hyper-V, etc.)

![](https://codingpackets.com/img/blog/vagrant-from-the-start-to-the-beginning/architecture.svg)

