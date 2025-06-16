### Évaluation : Conteneurisation de l'application Hastebin

| **Libellé**  | **Description**                                                                                                            |
| ------------ | -------------------------------------------------------------------------------------------------------------------------- |
| **Durée**    | 120 minutes                                                                                                                |
| **Sujet**    | Conteneurisation d'une application Hastebin                                                                                |
| **Modalité** | Travail pratique individuel sur poste informatique avec Docker installé. Accès à Internet. Utilisation de Teams interdite. |

---

### Objectifs de l'évaluation

- Comprendre le fonctionnement d'une application web minimaliste.
- Identifier les composants nécessaires à son exécution.
- Utiliser correctement les instructions d’un `Dockerfile`.
- Conteneuriser l’application en respectant les spécifications de déploiement.
- Personnaliser l’interface de l’application sans modifier la logique interne.
- Documenter correctement les étapes de mise en œuvre.

---

### Contexte

Vous êtes actuellement **en stage dans une entreprise spécialisée dans l'administration de systèmes et le développement web**. Votre maître de stage vous confie une première mission : installer une application de type "bloc-notes collaboratif" appelée **Hastebin** dans un environnement conteneurisé.

Il vous demande de faire un **Dockerfile commenté** suivant les étapes qu'il a analysé pour vous.  
L'application vous permettra de créer et partager des extraits de texte accessibles via des URL uniques. eléle se trouve dans le repository suivant : https://github.com/toptal/haste-server.git

---

### Travail à réaliser

#### 1. **Dockerfile**

Voici ce que votre maître de stage a analysé et vous demande de mettre en place :

- **Base de l’image** : il utilise `node:18-alpine`, une version allégée de Node.js optimisée pour le déploiement.
- **Répertoire de travail** : il change le répertoire de travail courant dans le conteneur, dans le dossier `app`, ce qui signifie que toutes les actions suivantes se feront dans ce dossier.
- **Téléchargement de l'application** : l'application est clonée directement depuis le dépôt GitHub officiel de Hastebin grâce à `git clone`. Pour cela, il a d’abord installé le package git `apk add --no-cache git`
- **Installation des dépendances** : une fois les fichiers présents, les dépendances Node.js sont installées avec `npm install`.
- **Personnalisation** :
  - Il copie un fichier HTML personnalisé `index.html` dans le dossier `static/` de l'application. Ce fichier affiche votre nom (a modifier dans le fichier html) et masque le logo Twitter.
  - Il copie également le fichier `config.json` à la racine en le renommant `config.js`, permettant de personnaliser le port d'écoute, la taille maximale d'un paste, et d'autres comportements.
- **Port d'écoute** : l’application est exposée sur le port `8085`.
- **Commande de lancement** : le conteneur démarre avec `npm start`.

#### 2. **Objectifs techniques à atteindre**

Vous devez maintenant :

- Lire et comprendre chaque instruction du Dockerfile.
- Vérifier que l'application se lance correctement via le navigateur sur [http://localhost:8085](http://localhost:8085).
- Contrôler les personnalisations suivantes :
  - **Votre nom** : *A la place de Colella déjà présent au dessus du logo à droite*
  - **Suppression du logo Twitter**
  - **Port d’écoute** : 8085
  - **Clé d’accès** : composée de 5 caractères aléatoires
  - **Taille maximale d’un paste (d'un message)** : 10 caractères

#### 3. **Livrables attendus**

- Un fichier `Dockerfile` commenté expliquant chaque instruction.
- Un fichier `settings/config.json` corrigé.
- Un fichier `settings/index.html` contenant votre nom.
- Un fichier `Documentation.md` rédigé par vos soins, décrivant :
  - Les étapes pour la construire et la lancer via Docker.
  - Les personnalisations apportées.
  - Des captures d’écran commentées.
---

### Aide

Vous pouvez consulter la documentation officielle de Hastebin :  
https://github.com/seejohnrun/haste-server

Et utiliser MagicSchool.AI pour toute aide technique autorisée. https://student.magicschool.ai/s/join 

Le code de session vous sera fourni par l'enseignant.

---

### Ressource Markdown

Pour structurer vos fichiers `README.md` et `demo/README.md`, une cheat sheet Markdown est disponible ici :  
https://www.markdownguide.org/cheat-sheet/

## Aide pour la rédaction de markdown
- [CheatSheat Markdown](markdown.md)