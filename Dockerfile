FROM python:3.11-slim

WORKDIR /app

# Copiamos el requirements desde la raíz
COPY requirements.txt .

# Instalamos (esto es lo que te fallaba, asegúrate de que el nombre coincida)
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos el contenido de tu carpeta 'app' local a la carpeta actual del contenedor
COPY ./app .

# Exponemos el puerto
EXPOSE 80

# Ejecutamos (Como copiamos el CONTENIDO de app a /app, el archivo es main.py directamente)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]