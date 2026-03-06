# Imagen base — Node 18 versión ligera
FROM node:18-alpine

# Carpeta de trabajo dentro del contenedor
WORKDIR /app

# Copia primero solo el package.json para aprovechar caché de Docker
# Si el código cambia pero las dependencias no, no reinstala todo
COPY package*.json ./

# Instala dependencias
RUN npm install

# Copia el resto del código
COPY . .

# Puerto que expone el contenedor
EXPOSE 4000

# Comando para arrancar el servidor
CMD ["node", "server.js"]