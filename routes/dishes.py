from flask import Blueprint, jsonify, request
from services.dishes_services import get_all_diet_types, get_all_dish_types, get_all_dishes, get_all_preparation_methods, get_dish_by_id, get_recommended_dishes, recommend_better_dish

bp = Blueprint('dishes', __name__, url_prefix='/dishes')

@bp.route('/', methods=['GET'])
def list_dishes():
    filters = request.args.to_dict()
    dishes = get_all_dishes(filters)
    return jsonify([dish.to_dict() for dish in dishes])

@bp.route('/<int:dish_id>', methods=['GET'])
def get_dish(dish_id):
    dish = get_dish_by_id(dish_id)
    if dish is None:
        return jsonify({"error": "Plat introuvable"}), 404
    return jsonify(dish)

@bp.route('/recommendations', methods=['GET'])
def recommend_dishes():
    """
    Endpoint pour obtenir des recommandations de plats.
    """
    filters = request.args.to_dict()
    # Récupérer la limite depuis les paramètres ou utiliser 7 par défaut
    limit = int(filters.pop('days', 7))  # Par défaut, limite à 7 jours
    limit = min(limit, 7)  # Imposer une limite maximale de 7 jours
    recommendations = get_recommended_dishes(filters, limit)
    return jsonify(recommendations)

@bp.route('/<int:dish_id>/recommendation', methods=['GET'])
def recommend_better_dish_route(dish_id):
    """
    Endpoint pour recommander plusieurs plats avec un meilleur score.
    """
    recommended_dishes = recommend_better_dish(dish_id)
    if not recommended_dishes:
        return jsonify({"error": "Aucune recommandation trouvée"}), 404
    return jsonify([dish.to_dict() for dish in recommended_dishes])


@bp.route('/preparation_methods', methods=['GET'])
def get_preparation_methods():
    """
    Endpoint pour récupérer toutes les méthodes de préparation.
    """
    preparation_methods = get_all_preparation_methods()
    return jsonify(preparation_methods)


@bp.route('/diet_types', methods=['GET'])
def get_diet_types():
    """
    Endpoint pour récupérer tous les types de régimes.
    """
    diet_types = get_all_diet_types()
    return jsonify(diet_types)


@bp.route('/dish_types', methods=['GET'])
def get_dish_types():
    """
    Endpoint pour récupérer tous les types de plats.
    """
    dish_types = get_all_dish_types()
    return jsonify(dish_types)
```
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

### 2. Récupération des filtres
#### a. Récupérer toutes les méthodes de préparation, types de régimes et types de plats
- **Endpoint** : `/dishes/filters`
- **Description** : Récupère toutes les méthodes de préparation, types de régimes et types de plats disponibles.
- **Exemple de réponse** :
  ```json
  {
      "preparation_methods": ["baked", "boiled", "grilled", "raw"],
      "diet_types": ["omnivore", "vegetarian", "vegan"],
      "dish_types": ["starter", "main dish", "dessert"]
  }
  ```

#### b. Récupérer toutes les méthodes de préparation
- **Endpoint** : `/dishes/preparation_methods`
- **Description** : Récupère toutes les méthodes de préparation uniques.
- **Exemple de réponse** :
  ```json
  ["baked", "boiled", "grilled", "raw"]
  ```

#### c. Récupérer tous les types de régimes
- **Endpoint** : `/dishes/diet_types`
- **Description** : Récupère tous les types de régimes uniques.
- **Exemple de réponse** :
  ```json
  ["omnivore", "vegetarian", "vegan"]
  ```

#### d. Récupérer tous les types de plats
- **Endpoint** : `/dishes/dish_types`
- **Description** : Récupère tous les types de plats uniques.
- **Exemple de réponse** :
  ```json
  ["starter", "main dish", "dessert"]
  ```

---

### 3. Recommandation de plats similaires
- **Endpoint** : `/dishes/<int:dish_id>/recommendation`
- **Description** : Recommande jusqu'à 3 plats similaires avec un meilleur score, en respectant les critères de `preparation_method`, `dish_type`, et `diet_type`.
- **Paramètres** :
  - `dish_id` (int) : ID du plat pour lequel générer des recommandations.
- **Exemple de réponse** :
  ```json
  [
      {
          "id": 342,
          "name": "Verrine de fruits frais",
          "score": "A",
          "fat_level": "low",
          "fiber_level": "high",
          "protein_level": "low",
          "sodium_level": "low",
          "preparation_method": "raw",
          "dish_type": "dessert",
          "diet_type": "vegan",
          "created_at": "2025-04-16T12:00:00"
      },
      {
          "id": 345,
          "name": "Muffin aux myrtilles",
          "score": "B",
          "fat_level": "high",
          "fiber_level": "low",
          "protein_level": "medium",
          "sodium_level": "low",
          "preparation_method": "baked",
          "dish_type": "dessert",
          "diet_type": "vegetarian",
          "created_at": "2025-04-16T12:00:00"
      }
  ]
  ```

---

### 4. Récupération de tous les plats
- **Endpoint** : `/dishes`
- **Description** : Récupère tous les plats disponibles dans la base de données, avec des options de filtrage.
- **Paramètres** :
  - `score` (str) : Filtrer par score (par exemple, `A`, `B`, `C`, etc.).
  - `dish_type` (str) : Filtrer par type de plat (par exemple, `starter`, `main dish`, `dessert`).
  - `diet_type` (str) : Filtrer par type de régime (par exemple, `omnivore`, `vegetarian`, `vegan`).
- **Exemple de réponse** :
  ```json
  [
      {
          "id": 1,
          "name": "Salade César",
          "score": "A",
          "fat_level": "low",
          "fiber_level": "medium",
          "protein_level": "high",
          "sodium_level": "medium",
          "preparation_method": "raw",
          "dish_type": "starter",
          "diet_type": "omnivore",
          "created_at": "2025-04-16T12:00:00"
      },
      {
          "id": 2,
          "name": "Saumon grillé",
          "score": "A",
          "fat_level": "medium",
          "fiber_level": "low",
          "protein_level": "high",
          "sodium_level": "medium",
          "preparation_method": "grilled",
          "dish_type": "main dish",
          "diet_type": "omnivore",
          "created_at": "2025-04-16T12:00:00"
      }
  ]
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