# Plataforma de Respaldo con Object Storage, Scheduler y API

Infraestructura de respaldos con almacenamiento tipo S3, ejecución periódica y exposición segura detrás de Nginx.

## Descripción

Este servidor simula una solución de backup empresarial combinando API operativa, tareas programadas y object storage.

## ¿Qué hace este proyecto?

- Expone API para disparar respaldos manuales.
- Ejecuta scheduler interno para backups periódicos.
- Integra MinIO como almacenamiento compatible S3.
- Centraliza accesos vía Nginx.

## Características Principales

| Característica | Descripción |
|---|---|
| API de backup | Disparo de jobs bajo demanda |
| Scheduler continuo | Simulación de política de respaldo automática |
| Object storage | Persistencia de artefactos en MinIO |
| Acceso unificado | Nginx como puerta de entrada |

## Stack Tecnológico

- Python Flask
- MinIO
- Nginx
- Docker Compose

## Instalación y Uso

### Levantar entorno

```bash
docker compose up -d --build
```

### Probar

- API: `http://localhost:8086/api/health`
- Consola storage proxied: `http://localhost:8086/storage/`

## Variables de Entorno

- `NGINX_PORT`
- `BACKUP_INTERVAL_SECONDS`
- `MINIO_ROOT_USER`
- `MINIO_ROOT_PASSWORD`

## Estructura del Proyecto

```text
.
├── Dockerfile
├── docker-compose.yml
├── .env
├── backup_api/
│   ├── app.py
│   └── requirements.txt
├── scripts/
│   └── scheduler.sh
└── nginx/
    └── default.conf
```

## Casos de Uso

- Plataforma de snapshots y resguardo documental.
- Entornos de retención de datos por políticas internas.
- Base para pipelines de backup/restauración empresariales.

---

## ‍ Desarrollado por Isaac Esteban Haro Torres

**Ingeniero en Sistemas · Full Stack · Automatización · Data**

-  Email: zackharo1@gmail.com
-  WhatsApp: 098805517
-  GitHub: https://github.com/ieharo1
-  Portafolio: https://ieharo1.github.io/portafolio-isaac.haro/

---

##  Licencia

© 2026 Isaac Esteban Haro Torres - Todos los derechos reservados.
