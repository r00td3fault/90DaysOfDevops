# 90DaysOfDevops
🚀 Semana 01


```bash
#alias – Atajos para comandos
alias ll='ls -lah --color=auto'  # Lista archivos con detalles  
alias ..='cd ..'                 # Sube un directorio  
alias gs='git status'            # Ver estado de Git  

whoami  # Muestra el usuario actual

#ssh – Conexión remota segura
ssh usuario@servidor          # Conexión básica  
ssh -p 2222 usuario@servidor  # Puerto personalizado  
ssh -i ~/.ssh/mi_llave usuario@servidor  # Usar clave privada  

#scp – Copiar archivos de forma segura
scp archivo  usuario@servidor:/ruta/  # Copiar un archivo
scp -r carpeta/ usuario@servidor:/ruta/ # Copiar una carpeta (recursivo)

#nc (netcat) - La navaja suiza de redes
nc -zv servidor.com 80-100   # Escanear puertos
nc -l 1234 > archivo_recibido  # Recibir un archivo

#ss  Estadísticas de sockets (reemplaza a netstat)
ss -tuln     # Ver puertos abiertos (TCP/UDP)
ss -tulnp | grep nginx  # Ver si Nginx está escuchando

#systemctl – Gestión de servicios (systemd)
systemctl <option> servicio
systemctl restart nginx    # Reiniciar Nginx  
systemctl status nginx    # Ver estado  
systemctl enable nginx    # Activar en el arranque

#service – Alternativa antigua (para sistemas init.d)
service apache2 restart   # Reiniciar Apache (en sistemas viejos)  

#uptime – Tiempo de actividad del sistema
uptime

# top / htop – Monitor en tiempo real
top     # Monitoreo básico (CPU, RAM, procesos)  
htop    # Versión mejorada (colorida y más intuitiva)

1 → Ver todos los núcleos CPU.
m → Ordenar por uso de memoria.
````
## 🛠️ Comandos Avanzados (pero útiles)

```bash
# ps – Listar procesos
ps aux | grep nginx # Buscar procesos de Nginx

# journalctl – Ver logs de systemd
journalctl -u nginx  # Logs de Nginx  
journalctl -xe       # Últimos logs críticos

# ping  – Probar conectividad
ping -c google.com

#telenet  – Probar puertos (¡pero usa nc mejor!)
telnet servidor.com 80   # Ver si el puerto 80 responde

#sed – Editar texto en stream
sed -i 's/old/new/g' archivo.conf   # Reemplazar "old" por "new"

#awk – Procesamiento de texto avanzado
awk '{print $1, $3}' access.log  # Extraer columnas 1 y 3

#grep – Buscar patrones en archivos
grep -r "ERROR" /var/log/  # Buscar "ERROR" en logs 

## Sistema de archivos 
df -hT       # Espacio en discos  
du -sh *     # Tamaño de archivos/carpetas  
tree -a      # Estructura de directorios  

## Procesos
lsof -i :80       # Ver qué usa el puerto 80  
kill -9 PID       # Matar proceso (¡cuidado!)  

## Paquetes
apt update && apt upgrade  # Actualizar todo  
apt install docker.io      # Instalar Docker

## Terminal
comando1 && comando2   # Ejecuta comando2 SOLO si comando1 funciona  
comando1 || comando2   # Ejecuta comando2 SOLO si comando1 falla  
````