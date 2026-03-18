 Actividad Entorno Nube Web
Plantilla para futura aplicacion con docker para su uso en el ramo GESTION DE DATOS PARA LA IA

 Tecnologías Principales
Frontend: React + Vite

Lenguaje: TypeScript

Contenerización: Docker & Docker Compose

Estilos: (Aquí puedes añadir si usas Tailwind, Bootstrap o CSS Modules)

 Requisitos Previos
Antes de comenzar, asegúrate de tener instalado:

Docker Desktop (con el motor WSL2 activo si estás en Windows).

Node.js (opcional, solo si deseas ejecutarlo fuera de Docker).

 Instalación y Configuración
1. Crear repositorio en github
2. Clonar el repositorio
Bash
git clone https://github.com/tu-usuario/actividad-entorno-nube-web.git
cd actividad-entorno-nube-web
3. Levantar con Docker (Recomendado)
Para construir la imagen y levantar el contenedor de desarrollo:

Bash
docker-compose up --build
La aplicación estará disponible en: http://localhost:5173

4. Ejecución local (Sin Docker)
Si prefieres no usar contenedores para el desarrollo rápido:

Bash
npm install
npm run dev
 Estructura del Proyecto
Plaintext
├── src/
│   ├── components/    # Componentes reutilizables
│   ├── assets/        # Imágenes y fuentes
│   ├── App.tsx        # Componente principal
│   └── main.tsx       # Punto de entrada
├── Dockerfile         # Configuración de la imagen Docker
├── docker-compose.yml # Orquestación de servicios
├── .dockerignore      # Archivos excluidos de Docker
└── vite.config.ts     # Configuración de Vite
 Comandos Útiles
Detener contenedores: docker-compose down

Ver logs en tiempo real: docker-compose logs -f

Entrar a la terminal del contenedor: docker exec -it <nombre_contenedor> sh

 Notas de Desarrollo
El Hot Reload está configurado mediante volúmenes en docker-compose.yml.