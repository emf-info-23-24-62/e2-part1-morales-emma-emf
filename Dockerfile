# Image Node.js comme base
FROM node:18-alpine

# Définir le répertoire de travail
WORKDIR /app

# Clôner le répertoire de hastebin
RUN apk add --no-cache git && \
git clone https://github.com/toptal/haste-server.git

# Passer dans le dossier de l'app clonée
WORKDIR /app/haste-server

# Copier les fichiers de configuration personnalisés
COPY settings/config.json ./config.js

# Et copipe de l'index.html personnalisés
COPY settings/index.html ./static/index.html

# Installer les dépendances npm
RUN npm install

# Exposer le port 8085
EXPOSE 8085

# Commande de démarrage de l'application
CMD [ "npm", "start" ]


