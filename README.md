# actividad-entorno-nube

# 🚀 FastAPI + Docker CI/CD Project

Este proyecto es una API robusta construida con **FastAPI**, empaquetada con **Docker** y con un flujo de **CI/CD** automatizado mediante GitHub Actions y despliegue en Render.

## 🛠️ Tecnologías utilizadas

* **Framework:** [FastAPI](https://fastapi.tiangolo.com/)
* **Contenedor:** [Docker](https://www.docker.com/)
* **CI/CD:** [GitHub Actions](https://github.com/features/actions)
* **Pruebas:** [Pytest](https://docs.pytest.org/)
* **Hosting:** [Render](https://render.com/)

---

## 📂 Estructura del Proyecto

```text
.
├── app/
│   └── main.py          # Lógica principal de la API
├── test/
│   └── test_main.py     # Pruebas unitarias
├── Dockerfile           # Configuración de la imagen Docker
├── requirements.txt     # Dependencias de Python
└── .github/workflows/   # Pipeline de CI/CD


🚀 Ejecución en Local
Con Python (Entorno virtual)
Instala las dependencias:

Bash
pip install -r requirements.txt
Ejecuta la app:

Bash
uvicorn app.main:app --reload
Con Docker
Construye la imagen:

Bash
docker build -t fastapi-app .
Corre el contenedor:

Bash
docker run -p 80:80 fastapi-app
Accede a: http://localhost/docs para ver la documentación interactiva.

🧪 Pruebas (CI)
El proyecto incluye pruebas automatizadas. Puedes correrlas localmente con:

Bash
pytest test/
⚙️ Despliegue (CD)
GitHub Actions
Cada vez que realices un push a la rama main:

Se ejecutan automáticamente los tests.

Si los tests pasan, se construye la imagen Docker.

Se realiza el push a Docker Hub (opcional, según configuración).

Render
El servicio está conectado a este repositorio. Al detectar un cambio exitoso en main, Render reconstruye el contenedor automáticamente y despliega la nueva versión.
