#!/bin/bash

LOG_FILE="usuarios.log"

crear_usuario() {
    local usuario="$1"

    # Verificar si se pasó un nombre de usuario
    if [ -z "$usuario" ]; then
        echo "Error: Debes proporcionar un nombre de usuario."
        return 1
    fi

    # Validar si el usuario ya existe
    if id "$usuario" &>/dev/null; then
        echo "El usuario '$usuario' ya existe."
        echo "$(date '+%Y-%m-%d %H:%M:%S') - Usuario '$usuario' ya existe." >> "$LOG_FILE"
    else
        # Crear el usuario
        sudo useradd "$usuario"
        if [ $? -eq 0 ]; then
            echo "Usuario '$usuario' creado correctamente."
            echo "$(date '+%Y-%m-%d %H:%M:%S') - Usuario '$usuario' creado." >> "$LOG_FILE"
        else
            echo "Error al crear el usuario '$usuario'."
            echo "$(date '+%Y-%m-%d %H:%M:%S') - Error al crear usuario '$usuario'." >> "$LOG_FILE"
        fi
    fi
}
