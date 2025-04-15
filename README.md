# Parkiai API

## Description
Parkiai API est une application qui fournit des services pour analyser et recommander des plats, ainsi que pour calculer des métriques basées sur des données temporelles.

---

## Fonctionnalités principales

### 1. Recommandations de plats
- **Endpoint** : `/dishes/recommendations`
- **Description** : Génère des recommandations de plats pour un nombre donné de jours. Chaque jour inclut une entrée, un plat principal et un dessert.
- **Paramètres** :
  - `days` (int) : Nombre de jours pour lesquels générer des recommandations (par défaut : 7).
  - `filters` (dict) : Filtres optionnels (par exemple, `score`, `category`, etc.).
- **Exemple de réponse** :
  ```json
  [
      {
          "day": 1,
          "entrée": {
              "id": 1,
              "name": "Salade César",
              "score": "A",
              "category": "entrée"
          },
          "plat": {
              "id": 2,
              "name": "Saumon grillé",
              "score": "A",
              "category": "plat"
          },
          "dessert": {
              "id": 3,
              "name": "Tarte aux pommes",
              "score": "B",
              "category": "dessert"
          }
      }
  ]
  ```

---

### 2. Calcul des métriques
- **Méthode** : `compute_metrics`
- **Description** : Calcule des métriques basées sur des données temporelles et des états.
- **Entrée** :
  - `etats` (list) : Liste de dictionnaires contenant les champs `date` (format `%d/%m/%Y %H:%M:%S`) et `etat` (int).
  - `reveil` (str) : Heure de réveil au format `%H:%M`.
  - `coucher` (str) : Heure de coucher au format `%H:%M`.
- **Sortie** :
  - `temps_deblocage` : Temps en secondes avant le premier état actif après le réveil.
  - `fluctuations` : Nombre de transitions de l'état actif (`1`) à l'état inactif (`0`).
  - `duree_on` : Durée totale en secondes passée dans l'état actif (`1`).
  - `duree_off` : Durée totale en secondes passée dans l'état inactif (`0`).
  - `duree_surdose` : Durée totale en secondes passée dans l'état `2` (surdose).
  - `moyenne_duree_on` : Durée moyenne en secondes des périodes actives.
  - `temps_actif` : Temps total en secondes entre le réveil et le coucher.
- **Exemple d'entrée** :
  ```json
  {
      "etats": [
          {"date": "11/04/2025 06:00:00", "etat": 0},
          {"date": "11/04/2025 06:35:00", "etat": 0},
          {"date": "11/04/2025 06:35:01", "etat": 1},
          {"date": "11/04/2025 09:42:01", "etat": 1},
          {"date": "11/04/2025 09:42:02", "etat": 0}
      ],
      "reveil": "07:00",
      "coucher": "22:45"
  }
  ```
- **Exemple de réponse** :
  ```json
  {
      "temps_deblocage": 2100,
      "fluctuations": 1,
      "duree_on": 11160,
      "duree_off": 3960,
      "duree_surdose": 0,
      "moyenne_duree_on": 5580,
      "temps_actif": 56700
  }
  ```

---

## Installation

### Prérequis
- Python 3.9 ou supérieur
- PostgreSQL (si applicable)

### Étapes
1. Clonez le dépôt :
   ```bash
   git clone https://github.com/votre-repo/parkiai.git
   cd parkiai
   ```

2. Installez les dépendances :
   ```bash
   pip install -r requirements.txt
   ```

3. Configurez la base de données :
   - Créez la base de données PostgreSQL.
   - Ajoutez les informations de connexion dans le fichier de configuration.

4. Lancez l'application :
   ```bash
   flask run
   ```

---

## Tests

### Exécuter les tests unitaires
Pour exécuter les tests unitaires, utilisez la commande suivante :
```bash
python -m unittest discover -s tests -p "test_*.py"
```

---

## Structure du projet

```
parkiai_api/
├── routes/
│   ├── dishes.py          # Routes pour les plats
├── services/
│   ├── dishes_services.py # Services pour les plats
│   ├── metrics_services.py # Services pour les métriques
├── tests/
│   ├── test_dishes_services.py # Tests pour les services des plats
│   ├── test_metrics_services.py # Tests pour les services des métriques
├── app.py                 # Point d'entrée de l'application
├── requirements.txt       # Dépendances Python
└── README.md              # Documentation
```

---

## Contribuer
1. Forkez le projet.
2. Créez une branche pour votre fonctionnalité :
   ```bash
   git checkout -b feature/ma-fonctionnalite
   ```
3. Faites vos modifications et soumettez une pull request.

---

## Auteurs
- **Thomas** - Développeur principal