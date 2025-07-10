#!/bin/bash
#script para copiar las claves ssh de las maquinas virtuales y poder ejecutar los nodos sin problemas en windows

set -e

sudo apt update
sudo apt install ansible -y

# Ruta base de las máquinas vagrant
SOURCE_DIR="/vagrant/.vagrant/machines"
DEST_DIR="$HOME/.ssh"

mkdir -p "$DEST_DIR"

for dir in "$SOURCE_DIR"/node*/; do
  [[ -d "$dir" ]] || continue  # Asegurar que sea un directorio

  basename=$(basename "$dir")
  
  # Extraer el número del nodo (ej: node1 → 1)
  if [[ $basename =~ ^node([0-9]+)$ ]]; then
    node_num="${BASH_REMATCH[1]}"
    src_key="$dir/virtualbox/private_key"
    dest_key="$DEST_DIR/vagrant_node${node_num}_key"

    if [[ -f "$src_key" ]]; then
      if [[ -f "$dest_key" ]]; then
        if cmp -s "$src_key" "$dest_key"; then
          echo "La clave vagrant_$node_num ya está actualizada. Omitiendo."
        else
          echo "La clave vagrant_$node_num existe pero es diferente. Sobrescribiendo..."
          cp "$src_key" "$dest_key"
          chmod 600 "$dest_key"
        fi
      else
        echo "Copiando clave para node$node_num..."
        cp "$src_key" "$dest_key"
        chmod 600 "$dest_key"
      fi
    else
      echo "Advertencia: no se encontró private_key en $dir"
    fi
  else
    echo "Omitiendo carpeta $basename que no coincide con el patrón nodeN"
  fi
done
