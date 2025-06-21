#!/bin/bash
set -e

LOG="logs_despliegue.txt"

config_server() {
    echo "Configurando servidor...."
    sudo apt update && sudo apt install -y nodejs git net-tools npm nginx >> $LOG 2>&1
    sudo npm install -g pm2 >> $LOG 2>&1
}

clonar_app() {
	echo "Clonando la aplicacion........" | tee -a $LOG
	git clone -b ecommerce-ms https://github.com/roxsross/devops-static-web.git >> $LOG 2>&1
	cd devops-static-web	
}

configurando_entorno() {
    echo "Configurando entorno...."

    echo "Configurando el front...."
    cd frontend
    npm install && pm2 start server.js --name frontend >> ../../$LOG 2>&1
    pm2 startup && pm2 save

    cd ..

    echo "Configurando merchandise.."
    cd  merchandise
    npm install && pm2 start server.js --name merchandise >> ../../$LOG 2>&1
    pm2 startup && pm2 save

    cd ..

    echo "Configurando productos.."
    cd products
    npm install && pm2 start server.js --name products >> ../../$LOG 2>&1
    pm2 startup && pm2 save

    cd ..

    echo Configurando "Configurando shopping-cart.."
    cd shopping-cart
    npm install && pm2 start server.js --name shopping-cart >> ../../$LOG 2>&1
    pm2 startup && pm2 save

}


main() {
    echo "Iniciando despliegue de la ap..." | tee $LOG
    config_server
    clonar_app
    configurando_entorno
}


main