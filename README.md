# Exercice Dockerisé Laravel avec Nginx

Ce dépôt contient une configuration Dockerisée pour Laravel avec deux serveurs Nginx. L'objectif est de démontrer votre compréhension de Docker, Dockerfile, Docker Compose et de l'automatisation tout en personnalisant les instances Laravel et Nginx.

## Instructions

1. **Services PHP avec Dockerfile:**
   - Créez votre propre Dockerfile pour les services PHP. Vous pouvez utiliser n'importe quelle image de base (FROM).
   - Assurez-vous de pouvoir accéder au code des deux serveurs Nginx via votre navigateur web.
   - Exécutez les commandes de démarrage de Laravel dans les deux services PHP. Automatisez le processus :
     ```bash
     composer install  # Installer les dépendances de Composer
     npm run build     # Installer les dépendances de Node et construire les assets
     php artisan key:generate
     php artisan migrate:fresh --seed
     ```
     Assurez-vous de gérer les installations de Composer et de Node.

2. **Configuration Nginx :**
   - Créez le fichier de configuration Nginx ; il n'est pas fourni.
   - Personnalisez le code des deux serveurs Nginx. Lors de l'accès à Nginx 1, affichez "Serveur 1", et pour Nginx 2, affichez "Serveur 2". Conservez les boutons de connexion et d'inscription (fichier : `/resources/views/welcome.blade.php`).
   - Inscrivez-vous et connectez-vous sur les deux instances Nginx. Vérifiez qu'il y a maintenant deux utilisateurs dans la base de données.
   - Utilisez le fichier `.env` pour la connexion Laravel-DB. Dupliquez `.env.example` en `.env` et remplissez les champs de la base de données.

3. **Points Bonus :**
   - Considérez des éléments supplémentaires tels que Traefik, Minio, Mailship, Node, etc., intégrés logiquement pour des points supplémentaires.
   - Si vous utilisez des images personnalisées au lieu de pré-construites, obtenez plus de points.

4. **Exigences de Soumission :**
   - Créez un dépôt GitHub public pour votre soumission.
   - Incluez les fichiers `.env` dans votre dépôt GitHub.
   - Soumettez un fichier ZIP sur MyGES.
   - Fournissez une vidéo expliquant le projet, comme si vous le présentiez en personne. L'humour et la créativité sont encouragés.

## Critères d'Évaluation

1. **Complexité et Fonctionnalités Additionnelles (5 points) :**
   - Évaluez la complexité de la configuration et des fonctionnalités additionnelles ajoutées de manière logique.

2. **Compréhension du Dockerfile (5 points) :**
   - Évaluez la compréhension et l'implémentation des Dockerfiles pour les services PHP.

3. **Compréhension du Docker Compose (5 points) :**
   - Évaluez la compréhension et l'utilisation de Docker Compose pour orchestrer les services.

4. **Automatisation et Logique du Système (5 points) :**
   - Évaluez l'automatisation et la logique générale du système, y compris les commandes de démarrage et les configurations.

**Remarque :** Cet exercice se concentre sur Docker, et les points seront attribués en fonction des critères spécifiés. La soumission doit être publique sur GitHub, et un fichier ZIP avec les fichiers nécessaires doit être fourni sur MyGES. De plus, une vidéo explicative est nécessaire pour une compréhension approfondie du projet. Amusez-vous bien et bonne chance avec votre projet Laravel Dockerisé !
