# BACKUP - MinIO + Backup API + Scheduler + Nginx

Configuracion de servidor para plataforma de respaldos con almacenamiento S3-compatible.

## Arquitectura

- `backup-api`: endpoint para disparar respaldos.
- `backup-scheduler`: simulacion de cron en contenedor.
- `minio`: almacenamiento de objetos para snapshots.
- `backup-nginx`: entrada unica para API y consola de storage.

## Levantar

```bash
docker compose up -d --build
```

Accesos:

- API: `http://localhost:8086/api/health`
- Consola MinIO proxied: `http://localhost:8086/storage/`

## Variables

- `NGINX_PORT`
- `BACKUP_INTERVAL_SECONDS`
- `MINIO_ROOT_USER`
- `MINIO_ROOT_PASSWORD`

## Valor para perfil

- Patrón de backup enterprise con object storage.
- Diseño listo para escalar snapshots y políticas de retención.

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
