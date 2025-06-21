# 90DaysOfDevops
🚀 Semana 01

## ⚙️ Automatizando Tareas con Bash Scripting I

![](https://90daysdevops.295devops.com/assets/images/main.sh-bb7e3318585e1abdeade04f26d635279.png)

```bash
#!/bin/bash

# Comentario
echo "Hola Mundo"

# Variables
NOMBRE="Roxs"
echo "Hola $NOMBRE"

# Condicionales
if [ "$NOMBRE" == "Roxs" ]; then
    echo "¡Sos vos!"
else
    echo "¿Y vos quién sos?"
fi

# Bucle
for i in {1..3}; do
    echo "Iteración $i"
done

contador=1
while [ $contador -le 3 ]; do
  echo "Contador: $contador"
  ((contador++))
done
```

## ⚙️ Automatizando Tareas con Bash Scripting II

```bash
#funciones - Las funciones pueden ir al principio del script y luego las llamás donde las necesites.
saludar_usuario() {
    echo "¡Hola, $1!"
}
saludar_usuario "Ana"
saludar_usuario "Carlos"

# Manejo de arrays
archivos=("documento1.txt" "documento2.txt" "informe.pdf")
for archivo in "${archivos[@]}"; do
    echo "Procesando $archivo"
done

# Manejo de errores
archivo="datos.csv"
if [[ -f $archivo ]]; then
    echo "Leyendo $archivo"
    cat "$archivo"
else
    echo "Error: ¡$archivo no existe!"
    exit 1
fi

# Programación con cron
crontab -e
# Ejecutar cada día a las 2 AM
0 2 * * * /ruta/tu_script.sh

# Depurando scripts
set -x  # Muestra cada comando antes de ejecutarlo
# Tu lógica aquí

set -e # para que el script se detenga ante errores

if [[ $# -ne 1 ]]; then
    echo "Uso: $0 <archivo>"
    exit 1
fi

# Procesos en segundo plano
proceso_largo() {
    sleep 5
    echo "Proceso completado"
}
proceso_largo &
pid=$!
wait $pid

# Expresiones regulares 
texto="Usuario: María, Email: maria@ejemplo.com"
if [[ $texto =~ Usuario:\ ([^,]+),\ Email:\ ([^ ]+) ]]; then
    usuario=${BASH_REMATCH[1]}
    email=${BASH_REMATCH[2]}
    echo "Usuario: $usuario, Email: $email"
fi

# Arrays Asociativos (Bash +4)
declare -A colores
colores[rojo]="#FF0000"
colores[verde]="#00FF00"
for color in "${!colores[@]}"; do
    echo "$color: ${colores[$color]}"
done

# manejo de Json - Asegurate de tener jq instalado
json='{"nombre": "Pedro", "edad": 28}'
nombre=$(echo "$json" | jq -r '.nombre')
edad=$(echo "$json" | jq -r '.edad')
echo "Nombre: $nombre, Edad: $edad"

# Scripts modulares
# helpers.sh
function mostrar_ayuda() {
    echo "Este script realiza..."
}

# principal.sh
#!/bin/bash
source ./helpers.sh
mostrar_ayuda


```