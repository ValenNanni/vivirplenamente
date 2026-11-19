FROM nginx:alpine

# Eliminamos configuración default
RUN rm /etc/nginx/conf.d/default.conf

# Copiamos nuestra configuración
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copiamos la web
COPY . /usr/share/nginx/html

EXPOSE 80
