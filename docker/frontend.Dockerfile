# Usamos nginx para servir los archivos estáticos
# nginx es un servidor web muy ligero y rápido
FROM nginx:alpine

# Copia todos los archivos del frontend a la carpeta que nginx sirve
COPY . /usr/share/nginx/html

# Puerto estándar de nginx
EXPOSE 80