# Laboratorio Terraform - Ambientes DEV y QA

Proyecto académico para desplegar infraestructura local utilizando Terraform y Docker.

La infraestructura estará compuesta por dos ambientes independientes:

- DEV
- QA

Cada ambiente contará con los siguientes servicios:

- Frontend utilizando Nginx
- Backend utilizando Node.js
- Base de datos PostgreSQL

## Arquitectura

### Ambiente DEV

| Servicio | Contenedor | Puerto host | Puerto interno |
|---|---|---:|---:|
| Frontend | web-dev | 4001 | 80 |
| Backend | api-dev | 4002 | 3000 |
| PostgreSQL | bd-dev | 4003 | 5432 |

### Ambiente QA

| Servicio | Contenedor | Puerto host | Puerto interno |
|---|---|---:|---:|
| Frontend | web-qa | 5001 | 80 |
| Backend | api-qa | 5002 | 3000 |
| PostgreSQL | bd-qa | 5003 | 5432 |

## Requisitos

Para ejecutar el proyecto será necesario contar con:

- Git
- Docker
- Terraform

## Ejecución

Las instrucciones completas para inicializar, validar y desplegar la infraestructura serán agregadas conforme avance la implementación.