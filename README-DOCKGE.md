# Installation Suivi avec Dockge

## Prérequis
- Docker et Docker Compose installés
- Dockge installé et fonctionnel

## Installation rapide

### 1. Cloner le dépôt
```bash
git clone https://github.com/VOTRE_USERNAME/Suivi_2.git
cd Suivi_2
```

### 2. Configurer les variables d'environnement
```bash
cp .env.example .env
nano .env  # Ajustez les clés API si nécessaire
```

### 3. Démarrer avec Dockge
1. Ouvrez Dockge dans votre navigateur
2. Cliquez sur "Add Stack"
3. Nommez votre stack : `suivi`
4. Collez le contenu du `docker-compose.yml`
5. Cliquez sur "Deploy"

### 4. Vérifier le fonctionnement
```bash
docker logs suivi-app
```

## Configuration des clés API

Certains transporteurs nécessitent des clés API :
- **DHL** : [developer.dhl.com](https://developer.dhl.com/)
- **La Poste** : [developer.laposte.fr](https://developer.laposte.fr/)
- **DeepL** (traduction) : [www.deepl.com/pro-api](https://www.deepl.com/pro-api)

Ajoutez-les dans votre fichier `.env` ou directement dans Dockge.

## Volumes persistants

Les données sont stockées dans :
- `./data` : Données de l'application
- `./config` : Fichiers de configuration

## Mise à jour
```bash
cd Suivi_2
git pull
docker compose down
docker compose up -d --build
```

## Support

Pour toute question, ouvrez une issue sur GitHub.
