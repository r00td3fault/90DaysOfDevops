#!/bin/bash

set -e

# Colores para una salida más bonita
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD 'postgres';"
sudo -u postgres psql -c "DROP DATABASE IF EXISTS votes;"
sudo -u postgres psql -c "CREATE DATABASE votes;"

echo -e "${YELLOW}--- Limpiando procesos anteriores ---${NC}"
pkill -f 'python3 app.py' || true
pkill -f 'node main.js' || true

echo "Iniciando levantamiento de servicios....."
ROUTE=/app/roxs-voting-app

echo "Iniciando con el servicio vote"
cd  $ROUTE
cd vote

pip install -r requirements.txt

DATABASE_HOST=localhost DATABASE_USER=postgres DATABASE_PASSWORD=postgres python3 app.py &


echo "Iniciando con el worker"
cd  $ROUTE
cd worker
rm -rf node_modules
rm -f package-lock.json
npm cache clean --force
npm install --no-bin-links

REDIS_HOST=localhost DATABASE_HOST=localhost node main.js &


# RESULT APP
echo "▶️  Iniciando Result App..."
cd $ROUTE
cd result
rm -rf node_modules
rm -f package-lock.json
npm cache clean --force
npm install --no-bin-links
REDIS_HOST=localhost DATABASE_HOST=localhost node main.js &




