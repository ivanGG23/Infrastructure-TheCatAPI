# infrastructure-TheCatAPI

Docker Compose para levantar el proyecto completo.

## Requisitos
- Docker Desktop corriendo
- Los 3 repos clonados en la misma carpeta:
  Consumo de TheCatAPI/
  ├── backend-TheCatAPI/
  ├── frontend-TheCathAPI/
  └── infrastructure-TheCatAPI/

## Cómo levantar

1. Crea el archivo .env basado en .env.example
2. Corre:
   docker compose up --build

## URLs

| URL | Descripción |
|-----|-------------|
| http://localhost:8080 | Frontend |
| http://localhost:4000/health | Backend health check |

## Cómo detener

docker compose down