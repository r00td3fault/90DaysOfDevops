# 90DaysOfDevops
🚀 90 Días de DevOps con Roxs

[![Docker](https://img.shields.io/badge/Docker-Ready-blue?logo=docker)](https://docker.com)
[![Node.js](https://img.shields.io/badge/Node.js-Worker-green?logo=node.js)](https://nodejs.org)
[![Node.js](https://img.shields.io/badge/Node.js-Result-green?logo=node.js)](https://nodejs.org)
[![Flask](https://img.shields.io/badge/Flask-Vote-lightgrey?logo=flask)](https://flask.palletsprojects.com/)
[![Redis](https://img.shields.io/badge/Redis-Cache-red?logo=redis)](https://redis.io)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue?logo=postgresql)](https://postgresql.org)
[![Prometheus](https://img.shields.io/badge/Prometheus-Monitoring-orange?logo=prometheus)](https://prometheus.io)
[![Grafana](https://img.shields.io/badge/Grafana-Visualization-orange?logo=grafana)](https://grafana.com)

> **Proyecto educativo de DevOps** creado por **roxsross** para aprender conceptos fundamentales de desarrollo, contenedores, orquestación y monitoreo.
> ℹ️ Este repositorio parte del [Docker Example Voting App](https://github.com/dockersamples/example-voting-app) y ha sido mejorado y adaptado por **roxsross** para el desafío 90 Días de DevOps.


## 📸 Screenshots del Ecosistema ROXS

<div align="center">

| 📦 Aplicación Principal | 📋 Resultados | 📊 🏠 Grafana Home | 🐳 Docker Containers |
|:---:|:---:|:---:|:---:|
| <img src="./docs/2.png" width="200"/> | <img src="./docs/1.png" width="200"/> | <img src="./docs/3.png" width="200"/> | <img src="./docs/4.png" width="200"/> |
| *Sistema de Votación* | *Web Resultados* | *Dash Grafana* | *Contenedores onfire* |

</div>

---

## 🧩 Arquitectura de la Aplicación

Este repositorio incluye el código base de una aplicación distribuida, compuesta por tres servicios:

![](./docs/5.png)

- **Vote** : Servicio en Flask que permite votar (🐱 o 🐶) y publica los votos en Redis.
- **Worker** : Servicio Node.js que consume votos desde Redis y los guarda en PostgreSQL.
- **Result** : App Node.js que muestra los resultados en tiempo real usando WebSockets.

### 📦 Versiones recomendadas de los servicios

| Servicio | Lenguaje/Framework | Versión recomendada |
|----------|--------------------|---------------------|
| Vote     | Flask (Python)     | Python 3.13+, Flask 3.3+ |
| Worker   | Node.js            | Node.js 20.x+            |
| Result   | Node.js            | Node.js 20.x+            |
| Redis    | Redis                | Redis 6.x+                 |
| PostgreSQL| PostgreSQL          | PostgreSQL 15.x+           |

> ⚠️ Usar versiones iguales o superiores a las recomendadas asegura compatibilidad y soporte con las dependencias del proyecto.

---

## 🛠️ Tecnologías y Herramientas

### 🏗️ Infrastructure & Containers
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![Kubernetes](https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white)
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![Ansible](https://img.shields.io/badge/ansible-%231A1918.svg?style=for-the-badge&logo=ansible&logoColor=white)

### ☁️ Cloud Providers
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Azure](https://img.shields.io/badge/azure-%230072C6.svg?style=for-the-badge&logo=microsoftazure&logoColor=white)
![Google Cloud](https://img.shields.io/badge/GoogleCloud-%234285F4.svg?style=for-the-badge&logo=google-cloud&logoColor=white)

### 🔄 CI/CD & GitOps
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)
![GitLab CI](https://img.shields.io/badge/gitlab%20ci-%23181717.svg?style=for-the-badge&logo=gitlab&logoColor=white)
![Jenkins](https://img.shields.io/badge/jenkins-%232C5263.svg?style=for-the-badge&logo=jenkins&logoColor=white)
![ArgoCD](https://img.shields.io/badge/argo-EF7B4D.svg?style=for-the-badge&logo=argo&logoColor=white)

### 📊 Monitoring & Observability
![Prometheus](https://img.shields.io/badge/Prometheus-E6522C?style=for-the-badge&logo=Prometheus&logoColor=white)
![Grafana](https://img.shields.io/badge/grafana-%23F46800.svg?style=for-the-badge&logo=grafana&logoColor=white)
![Elastic](https://img.shields.io/badge/-ElasticSearch-005571?style=for-the-badge&logo=elasticsearch)

### 💻 Programming & Scripting
![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)
![Go](https://img.shields.io/badge/go-%2300ADD8.svg?style=for-the-badge&logo=go&logoColor=white)
![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)
![YAML](https://img.shields.io/badge/yaml-%23ffffff.svg?style=for-the-badge&logo=yaml&logoColor=151515)

---
## 🛠️ ¿Qué se va a construir?


✅ Crear tus propios archivos `docker-compose.yml`  
✅ Automatizar la configuración con Ansible  
✅ Desplegar todo en local usando Terraform Provider Local  
✅ Crear pipelines CI/CD con GitHub Actions  
✅ Orquestar la app en Kubernetes  
✅ Monitorear con Prometheus y Grafana  
✅ (Opcional) Llevarlo a AWS

---

## 📂 Estructura de la Aplicación voting app

```bash
.
├── vote/             # Flask app (app.py)
├── worker/           # Worker Node.js (main.js)
├── result/           # Resultados en tiempo real (main.js)
├── views/            # HTML y frontend
├── load-testing/     # Pruebas de Carga y rendimiento con k6
├── README.md         # Este archivo ;)
````

---
## 🗓️ Programa Semana a Semana

| Semana | Tema Clave                                 | Proyecto a construir                         |
| ------ | ------------------------------------------ | -------------------------------------------- |
| 1      | Linux + Vagrant + Ansible                  | Levantar app sin Docker usando Vagrant       |
| 2      | Docker y Docker Compose                    | Crear los Dockerfiles y `docker-compose.yml` |
| 3      | GitHub Actions CI/CD                       | Automatizar builds con self-hosted runner    |
| 4      | Terraform (Provider Local)                 | Crear infraestructura local con Terraform    |
| 5      | Kubernetes local con Minikube              | Desplegar app dockerizada en clúster local   |
| 6      | Despliegue con CI/CD a Kubernetes          | Automatizar despliegues en k8s               |
| 7      | Seguridad en Contenedores                  | Integrar herramientas de vulnerabilidades    |
| 8      | Troubleshooting + Performance              | Debug y tuning de recursos                   |
| 9      | Despliegue en la Nube (EC2/EKS - Opcional) | Llevar tu app a AWS                          |

---


## 📈 Métricas y Observabilidad

Todos los servicios están instrumentados con Prometheus. Podrás visualizar las métricas que vos mismo vas a recolectar y graficar con Grafana a partir de la semana 6.

---


## 🧰 Recursos complementarios (para cada herramienta)

| Herramienta    | Documentación Oficial                                                                                  | Recurso Recomendado                                                                                         |
| -------------- | ------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------- |
| Docker         | [https://docs.docker.com/](https://docs.docker.com/)                                                   | [Docker Workshop](https://docs.docker.com/get-started/workshop/)                                                        |
| Ansible        | [https://docs.ansible.com/](https://docs.ansible.com/)                                                 | [Ansible para principiantes](https://developers.redhat.com/products/ansible/getting-started)                         |
| Terraform      | [https://developer.hashicorp.com/terraform/](https://developer.hashicorp.com/terraform/)               | [Guía de Terraform en español](https://learn.hashicorp.com/terraform)                                       |
| Kubernetes     | [https://kubernetes.io/docs/home/](https://kubernetes.io/docs/home/)                                   | [Kubernetes The Hard Way (by Kelsey Hightower)](https://github.com/kelseyhightower/kubernetes-the-hard-way) |
| GitHub Actions | [https://docs.github.com/actions](https://docs.github.com/actions)                                     | [Curso Gratuito GitHub Actions](https://docs.github.com/en/actions/quickstart)                              |
| Prometheus     | [https://prometheus.io/docs/introduction/overview/](https://prometheus.io/docs/introduction/overview/) | [Observabilidad ](https://opentelemetry.io/es/docs/concepts/observability-primer/)                                   |
| Grafana        | [https://grafana.com/docs/](https://grafana.com/docs/)                                                 | [Dashboards y Alertas con Grafana](https://grafana.com/tutorials/)                                          |
| PostgreSQL     | [https://www.postgresql.org/docs/](https://www.postgresql.org/docs/)                                   | [PostgreSQL Tutorial](https://www.postgresqltutorial.com/)                                                  |
| Redis          | [https://redis.io/docs/](https://redis.io/docs/)                                                       | [Aprendé Redis](https://redis.io/learn/howtos/quick-start)                                                           |

> 🛠️ Tip: Agregá estos links como favoritos, los vas a necesitar cuando te enfrentes a errores reales 😉

---

## 🗺️ DevOps Roadmap para Principiantes

```
✔️ 1. Entender Linux y la terminal
✔️ 2. Automatizar entornos con Vagrant y Ansible
✔️ 3. Construir imágenes con Docker
✔️ 4. Orquestar servicios con Docker Compose
✔️ 5. Crear pipelines con GitHub Actions
✔️ 6. Definir infraestructura con Terraform
✔️ 7. Desplegar en Kubernetes (local)
✔️ 8. Agregar métricas con Prometheus y Grafana
✔️ 9. Aprender troubleshooting y performance
✔️ 🔥 BONUS: Subir tu proyecto a la nube (AWS)
```

Roadmap que recomiendo seguir [DevOps](https://roadmap.sh/devops)


## 📄 Licencia

Este proyecto está licenciado bajo MIT License - ver el archivo [LICENSE](LICENSE) para detalles.

