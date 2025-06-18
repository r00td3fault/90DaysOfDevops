# 90DaysOfDevops
🚀 Semana 01

## 🐧 Parte 4: 📦 Gestión de Paquetes en Linux
En Linux, el software se distribuye principalmente a través de paquetes, que contienen el programa, sus dependencias y metadatos (versión, mantenedor, etc.). Cada distribución usa su propio sistema de paquetes y gestores.

### Formatos de Paquetes
| Formato | Distribuciones | Gestores|
|---------|----------------|---------|
| .deb | Debian, Ubuntu, Mint |	apt, dpkg |
| .rpm | RHEL, Fedora, CentOS | dnf, yum  |
| .pkg.tar.zst	| Arch Linux, Manjaro |	pacman |
| .txz	| Slackware	| slackpkg |

Los paquetes universales como .tar.gz requieren compilación manual.

```bash
# Actualizar lista de paquetes  
sudo apt update  

# Instalar un programa  
sudo apt install nginx  

# Buscar paquetes  
apt search python3  

# Eliminar un paquete  
sudo apt remove firefox  

# Limpiar paquetes no usados  
sudo apt autoremove  
```

### Instalación código fuente

```bash
# 1. Descargar y extraer  
wget https://ejemplo.com/app.tar.gz  
tar -xzvf app.tar.gz  

# 2. Instalar dependencias  
sudo apt build-dep .  

# 3. Compilar e instalar  
./configure  
make  
sudo make install  
```