# Incluir funciones desde otro archivo
source ./funciones.sh

# Comprobar si se proporcionó un argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 nombre_usuario"
    exit 1
fi

# Llamar a la función
crear_usuario "$1"