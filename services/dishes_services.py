from db.connection import get_db_connection
import psycopg2
from psycopg2.extras import RealDictCursor
from datetime import datetime, timedelta
from models.dish import Dish
import random

def get_all_dishes(filters):
    conn = get_db_connection()
    cursor = conn.cursor()

    query = """
        SELECT id, name, score, fat_level, fiber_level, protein_level, sodium_level, preparation_method, dish_type, diet_type, created_at
        FROM dishes
    """
    params = []

    # Appliquer les filtres
    if filters:
        conditions = []
        if "score" in filters:
            conditions.append("score = %s")
            params.append(filters["score"])
        if "dish_type" in filters:
            conditions.append("dish_type = %s")
            params.append(filters["dish_type"])
        if conditions:
            query += " WHERE " + " AND ".join(conditions)

    cursor.execute(query, params)
    rows = cursor.fetchall()

    # Convertir les résultats en objets Dish
    dishes = [
        Dish(
            id=row[0],
            name=row[1],
            score=row[2],
            fat_level=row[3],
            fiber_level=row[4],
            protein_level=row[5],
            sodium_level=row[6],
            preparation_method=row[7],
            dish_type=row[8],
            diet_type=row[9],
            created_at=row[10]
        )
        for row in rows
    ]

    cursor.close()
    conn.close()

    return dishes

def get_dish_by_id(dish_id):
    conn = get_db_connection()
    cursor = conn.cursor()
    
    cursor.execute("SELECT * FROM dishes WHERE id = %s", (dish_id,))
    row = cursor.fetchone()
    
    if row is None:
        return None
    
    columns = [desc[0] for desc in cursor.description]
    dish = dict(zip(columns, row))
    
    cursor.close()
    conn.close()
    return dish

def get_recommended_dishes(filters=None, days=7):
    """
    Génère des recommandations de plats pour un nombre donné de jours.
    Chaque jour inclut une entrée, un plat principal et un dessert.
    Aucun plat ne doit être recommandé deux fois.
    :param filters: Dictionnaire de filtres optionnels (score, etc.).
    :param days: Nombre de jours pour lesquels générer des recommandations.
    :return: Liste de recommandations par jour.
    """
    # Connexion à la base de données via get_db_connection
    conn = get_db_connection()
    cursor = conn.cursor(cursor_factory=RealDictCursor)

    # Initialiser les résultats
    recommendations = []

    # Catégories à récupérer
    categories = ["entrée", "plat", "dessert"]

    # Liste des plats déjà recommandés
    used_dish_ids = set()

    for day in range(1, days + 1):
        daily_recommendation = {"day": day}

        for category in categories:
            # Construire la requête SQL pour chaque catégorie
            query = f"""
                SELECT id, name, score, fat_level, fiber_level, protein_level, sodium_level, category, created_at
                FROM dishes
                WHERE category = %(category)s
            """
            params = {"category": category}

            # Appliquer les filtres si fournis
            if filters:
                conditions = []
                if 'score' in filters:
                    scores = filters['score'].split(',')
                    conditions.append("score = ANY(%(scores)s)")
                    params['scores'] = scores
                if 'fat_level' in filters:
                    conditions.append("fat_level = %(fat_level)s)")
                    params['fat_level'] = filters['fat_level']
                if 'fiber_level' in filters:
                    conditions.append("fiber_level = %(fiber_level)s)")
                    params['fiber_level'] = filters['fiber_level']

                if conditions:
                    query += " AND " + " AND ".join(conditions)

            # Exclure les plats déjà recommandés
            if used_dish_ids:
                query += " AND id NOT IN %(used_ids)s"
                params['used_ids'] = tuple(used_dish_ids)

            # Ajouter le tri et limiter à 1 résultat
            query += " ORDER BY score ASC LIMIT 1"

            # Exécuter la requête
            cursor.execute(query, params)
            dish = cursor.fetchone()

            # Ajouter le plat recommandé à la catégorie correspondante
            if dish:
                daily_recommendation[category] = dish
                used_dish_ids.add(dish['id'])  # Marquer le plat comme utilisé
            else:
                daily_recommendation[category] = None  # Aucun plat disponible pour cette catégorie

        # Ajouter la recommandation quotidienne à la liste
        recommendations.append(daily_recommendation)

    # Fermer la connexion
    cursor.close()
    conn.close()

    return recommendations

def recommend_better_dish(current_dish_id):
    """
    Recommande jusqu'à 3 plats avec le même preparation_method et dish_type,
    mais avec un meilleur score. Les résultats sont sélectionnés aléatoirement.
    Respecte les restrictions de diet_type.
    :param current_dish_id: ID du plat actuel.
    :return: Une liste d'objets Dish ou une liste vide si aucune recommandation n'est trouvée.
    """
    conn = get_db_connection()
    cursor = conn.cursor()

    # Récupérer les informations du plat actuel
    cursor.execute("""
        SELECT preparation_method, dish_type, score, diet_type
        FROM dishes
        WHERE id = %s
    """, (current_dish_id,))
    current_dish = cursor.fetchone()

    if not current_dish:
        cursor.close()
        conn.close()
        return []

    preparation_method, dish_type, current_score, current_diet_type = current_dish

    # Construire la condition pour exclure certains diet_type
    diet_exclusion = ""
    params = [preparation_method, dish_type, current_score]

    if current_diet_type == "vegan":
        diet_exclusion = "AND diet_type NOT IN ('omnivore', 'vegetarian')"
    elif current_diet_type == "vegetarian":
        diet_exclusion = "AND diet_type NOT IN ('omnivore')"

    # Rechercher plusieurs plats avec un meilleur score
    query = f"""
        SELECT id, name, score, fat_level, fiber_level, protein_level, sodium_level,
               preparation_method, dish_type, diet_type, created_at
        FROM dishes
        WHERE preparation_method = %s
          AND dish_type = %s
          AND score < %s
          {diet_exclusion}
        ORDER BY score ASC
    """
    cursor.execute(query, params)
    better_dishes = cursor.fetchall()

    cursor.close()
    conn.close()

    # Convertir les résultats en objets Dish
    dishes = [
        Dish(
            id=row[0],
            name=row[1],
            score=row[2],
            fat_level=row[3],
            fiber_level=row[4],
            protein_level=row[5],
            sodium_level=row[6],
            preparation_method=row[7],
            dish_type=row[8],
            diet_type=row[9],
            created_at=row[10]
        )
        for row in better_dishes
    ]

    # Mélanger les résultats et limiter à 3 plats
    random.shuffle(dishes)
    return dishes[:3]