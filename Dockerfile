# Utiliser Python 3.11 slim pour réduire la taille
FROM python:3.11-slim

# Installer les dépendances système nécessaires
RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/*

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de dépendances
COPY requirements.txt .

# Installer les dépendances Python
RUN pip install --no-cache-dir -r requirements.txt

# Copier tout le code source
COPY . .

# Créer un répertoire pour les données persistantes
RUN mkdir -p /app/data

# Exposer le port si l'application en utilise un
# EXPOSE 8080

# Variable d'environnement pour la configuration
ENV PYTHONUNBUFFERED=1

# Commande de démarrage
CMD ["python", "suivi.py"]
