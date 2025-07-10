# 90DaysOfDevops
🚀 Semana 01

## Desafio final

## 🧪 Ejecutá la App de Votación en tu Entorno Local
Poner en marcha Roxs Voting App, una aplicación de votación distribuida que te permitirá aplicar conceptos de Linux, scripting, automatización con Ansible y máquinas virtuales con Vagrant.

## 🛠️ ¿Qué vas a hacer?
- Clonar el repositorio del proyecto educativo
- Usar Vagrant para levantar el entorno
- Automatizar configuraciones básicas
- Ejecutar los tres servicios (Vote, Worker, Result)
- Validar que los datos fluyan desde la votación hasta la visualización

### 🧩 Arquitectura de la Aplicación

Este repositorio incluye el código base de una aplicación distribuida, compuesta por tres servicios:
![Arquitectura de la aplicacion](../../../docs/5.png)

- **Vote** : Servicio en Flask que permite votar (🐱 o 🐶) y publica los votos en Redis.
- **Worker** : Servicio Node.js que consume votos desde Redis y los guarda en PostgreSQL.
- **Result** : App Node.js que muestra los resultados en tiempo real usando WebSockets.

### 🌐 Puertos de la Aplicación
Cada servicio expone un puerto distinto en tu máquina local:

| Servicio | Descripción | Puerto |
| -------- | ----------- | ------ |
| Vote	   | Formulario de votación (Flask) | 80 |
| Result   | Resultados en tiempo real (Node.js + WebSocket) | 3000 |
| Redis	   | Almacenamiento temporal de votos |	6379 |
| Worker   | Proceso en segundo plano (Node.js) | — (sin puerto expuesto) |
| PostgreSQL | Base de datos relacional para los resultados	| 5432 |


### 🚀 Actividades
1. Usar un Vagrantfile para levantar una máquina Ubuntu local
2. Automatizar la instalación de Redis, PostgreSQL, Python y Node.js con Ansible
3. Ejecutar manualmente cada componente de la app
4. Validar que puedas votar y ver el resultado en el navegador

### 🎯 Resultado Esperado
- App funcional en entorno local
- Automatización básica de dependencias
- Experiencia práctica de orquestar servicios sin Docker (aún)

