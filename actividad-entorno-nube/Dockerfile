# Usa una imagen liviana de Node.js
FROM node:20-alpine

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del código
COPY . .

# Expone el puerto que usa Vite (por defecto 5173)
EXPOSE 5173

# Comando para iniciar en modo desarrollo
CMD ["npm", "run", "dev", "--", "--host"]