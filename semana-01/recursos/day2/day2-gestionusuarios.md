# 90DaysOfDevops
🚀 Semana 01

## 🐧 Parte 3: Gestión de Usuarios y Permisos en Linux

![](https://i.imgur.com/yxNrpKJ.png)

### El reparto: Usuarios, Grupos y Roles
Usuarios: Los habitantes de tu sistema
En Linux, cada persona (o script) que interactúa con el sistema es un usuario. Hay tres tipos principales:

- Root (superusuario): El mago todopoderoso con acceso ilimitado. Úsalo con precaución: un hechizo mal lanzado (comando) puede convertir tu castillo en una calabaza.
- Usuarios normales: Caballeros, damas y bufones con roles específicos y acceso limitado.
- Usuarios del sistema: Los sirvientes invisibles que gestionan servicios y demonios. Normalmente no necesitan permisos de inicio de sesión.

Grupos: Formando tu comunidad
Los grupos son como gremios que agrupan usuarios según roles o proyectos. Por ejemplo, un grupo admin podría incluir a todos los usuarios que pueden realizar tareas administrativas.

Roles: Las responsabilidades asignadas
Asignar roles es como repartir tareas en una corte medieval. Puedes tener roles como desarrollador, tester o invitado, cada uno con permisos específicos.


### Niveles de permisos: ¿Quién puede hacer qué?
Los permisos en Linux se dividen en tres tipos:
- Lectura (r): Puede ver el contenido.
- Escritura (w): Puede modificar o borrar el contenido.
- Ejecución (x): Puede ejecutar el archivo como programa.

Estos permisos se asignan a tres categorías:
- Dueño (Owner): El usuario propietario del archivo.
- Grupo (Group): Miembros del grupo asignado al archivo.
- Otros (Others): Todos los demás.

### El poderoso comando chmod
Para controlar los permisos, usamos chmod (change mode). ¡Es como tu varita mágica para configurar accesos!

```bash
chmod [opciones] modo archivo
chmod 755 mi_script.sh
```

Desglose de 755:
- 7 (Dueño): Lectura + Escritura + Ejecución (rwx)
- 5 (Grupo): Lectura + Ejecución (r-x)
- 5 (Otros): Lectura + Ejecución (r-x)

Regla mnemotécnica:
- 7 = 4 (r) + 2 (w) + 1 (x) = rwx
- 5 = 4 (r) + 1 (x) = r-x

### Cambiando la propiedad con chown
Si necesitas transferir la propiedad de un archivo o directorio, usa chown (change owner).

```bash
chown [opciones] nuevo_dueño:nuevo_grupo archivo
chown alice:desarrolladores codigo_proyecto.py
```

Este comando asigna la propiedad de codigo_proyecto.py al usuario alice y al grupo desarrolladores.


## Creando y gestionando usuarios
```bash
#anadir usuario
sudo adduser juan_perez

#eleiminar usuario
sudo deluser juan_perez

#eliminar usuarui con los archivos
sudo deluser --remove-home juan_perez
# O también:
userdel -r juan_perez

#modificar usuario

#Para añadir juan_perez al grupo sudo (dándole poderes administrativos):
sudo usermod -aG sudo juan_perez

# Cambiar directorio home
usermod -d /nuevo/home -m usuario

# Cambiar shell de inicio
usermod -s /bin/zsh usuario

# Renombrar usuario
usermod -l nuevo_nombre antiguo_nombre

# Bloquear/desbloquear cuenta
usermod -L usuario  # Bloquea
usermod -U usuario  # Desbloquea
```

## Gestión de grupos: Reuniendo al equipo adecuado
```bash
#Crear un nuevo grupo
sudo groupadd desarrolladores

#Añadir usuarios a un grupo
sudo usermod -aG desarrolladores juan_perez

#Ver miembros de un grupo
getent group desarrolladores
```

## sudo El poder de gobernar con responsabilidad
El comando sudo permite ejecutar comandos con privilegios de superusuario. ¡Es como darle a alguien la llave de la bóveda real!

```bash
sudo apt update

#Configurar sudoers (editar con visudo):
sudo visudo

#Ejemplo de entrada:
alice ALL=(ALL:ALL) ALL #(Esto le da a alice todos los permisos de sudo).


#audita permisos
find / -type f -perm 0777
```