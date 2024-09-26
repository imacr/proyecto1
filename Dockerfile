# Usa una imagen base de Python
FROM python:3.10-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Instala las dependencias
RUN pip install Flask
# Copia el resto de la aplicación
COPY . .

# Expone el puerto que utilizará Flask
EXPOSE 5000


# Comando para correr la aplicación
CMD ["flask","--app", "holamundo", "run","--host=0.0.0.0"]
