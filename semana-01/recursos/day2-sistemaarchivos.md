# 90DaysOfDevops
🚀 Semana 01

## 🐧 Parte 2: El Sistema de Archivos de Linux

### 🌳 ¿Qué es el Filesystem Hierarchy Standard (FHS)?

![](https://90daysdevops.295devops.com/assets/images/1-6ca3021378f4a30d91183cf2cc73c3de.png)

| Directorio | Qué Contiene       | Ejemplo Importante |
|----------  |--------------------|--------------------|
| /       | Raíz del sistema     | ¡El punto de partida de todo! |
| /bin     | Comandos básicos           | ls, cp, bash            |
| /sbin     | Comandos de admin (root)           | iptables, fdisk           |
| /etc      | Archivos de configuración                | /etc/passwd, /etc/nginx/               |
| /dev       | Dispositivos (discos, USB)          | 	/dev/sda1 (tu disco duro)          |
| /home       | Directorios de usuarios             | 	/home/tu_usuario         |
| /var       | Datos variables (logs, cachés)         | 		/var/log/nginx/         |
| /tmp       | Archivos temporales                  | 		(Se borra al reiniciar)         |
| /boot       | Archivos de arranque          | 	vmlinuz (el kernel)         |
| /opt       | 	Software de terceros          | 	/opt/google/chrome/         |
| /proc       | Info de procesos (virtual)         | 	/proc/cpuinfo          |
| /usr       | 	Aplicaciones y librerías          | 		/usr/bin/python3         |


### 🔍 Profundizando en Directorios Clave

#### 1. /etc – El "panel de control" de Linux
Aquí viven TODAS las configuraciones:
- /etc/passwd: Usuarios del sistema.
- /etc/fstab: Discos montados al iniciar
- /etc/ssh/sshd_config: Configuración de SSH.

#### 2. /var - Donde Linux guarda lo que cambia
- /var/log: Logs (¡tu mejor amigo para debuggear!).
- /var/lib: Bases de datos (Ej: /var/lib/mysql/).
- /var/www: Sitios web (en algunas distros).

#### 3. /proc y /sys – El "cerebro" de Linux
Virtuales: No ocupan espacio en disco.
- /proc/cpuinfo: Info del CPU.
- /proc/meminfo: Uso de RAM
- /sys/class/net/: Config de red.

#### 4. /home vs /root
- /home/tu_usuario: Tus archivos (documentos, descargas).
- /root: El "home" del admin (no confundir con /).

### 💽 Tipos de Filesystems en Linux
|Tipo | Para qué sirve |
------|----------------|
|ext4 | El estándar (equilibrado). |
|XFS  | Alto rendimiento (servidores). |
|Btrfs | Snapshots y RAID moderno. |
|Swap | "Memoria virtual" en disco. |

```bash 
df -hT  # Espacio libre en human-readable  
```

###  🛠️ Herramientas para DevOps

```bash
du -sh /var/log  # ¿Cuánto ocupan los logs?  
du -sh * | sort -h  # Ordenar por tamaño

## Buscar archivos
find / -type f -size +100M  # Archivos >100MB  

## Monitorear logs
tail -f /var/log/syslog  # ¡Como Netflix para logs!  
```

### Conclusión
- /etc: Configuraciones.
- /var/log: Logs (¡aprende a leerlos!).
- /proc y /sys: Diagnóstico del sistema.
- df -h y du -sh: Tus aliados para espacio en disco.

