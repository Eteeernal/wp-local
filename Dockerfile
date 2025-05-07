# Usa la imagen oficial de WordPress como base
FROM wordpress:6.8.1-apache

# Instala extensiones de PHP necesarias (ejemplo: zip, intl)
RUN apt-get update && apt-get install -y \
    libzip-dev \
    zip \
    unzip \
    libicu-dev \
    && docker-php-ext-install zip intl \
    && rm -rf /var/lib/apt/lists/*

# Copia archivos personalizados si es necesario
# COPY ./custom-php.ini /usr/local/etc/php/conf.d/

# Establece permisos adecuados (si tu proyecto los requiere)
# RUN chown -R www-data:www-data /var/www/html

# Puedes agregar otros comandos para configurar el entorno
