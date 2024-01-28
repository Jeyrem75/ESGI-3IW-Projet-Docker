# Étape 1: Utiliser une image PHP avec FPM et Node.js
FROM php:8.1-fpm

# Installer des extensions PHP et autres
RUN apt-get update && apt-get install -y \
    libzip-dev \
    unzip \
    curl \
    netcat-openbsd \
    git \
    && docker-php-ext-install pdo pdo_mysql zip

# Installer Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Installer Node.js et NPM
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs npm

# Définir le répertoire de travail
WORKDIR /var/www/html

# Exposer le port 9000
EXPOSE 9000

# Copier l'application dans le conteneur
COPY . /var/www/html

# Copier et rendre le script init.sh exécutable
COPY init.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/init.sh

# Exécuter Composer pour installer les dépendances PHP
RUN composer install

# Installer les dépendances Node.js et construire les assets
RUN npm install && npm run build

# Générer une clé d'application Laravel

ENTRYPOINT ["init.sh"]