from db.connection import get_db_connection
import psycopg2
from psycopg2.extras import RealDictCursor
from datetime import datetime, timedelta
from models.dish import Dish
import random

# Définir les catégories globalement
CATEGORIES = ["starter", "main dish", "dessert"]

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
    Chaque jour inclut une entrée (salad, starter ou soup), un plat principal (main dish) et un dessert.
    Aucun plat ne doit être recommandé deux fois.
    :param filters: Dictionnaire de filtres optionnels (score, etc.).
    :param days: Nombre de jours pour lesquels générer des recommandations (maximum 7).
    :return: Liste de recommandations par jour.
    """
    # Connexion à la base de données via get_db_connection
    conn = get_db_connection()
    cursor = conn.cursor(cursor_factory=RealDictCursor)

    # Initialiser les résultats
    recommendations = []

    # Liste des plats déjà recommandés
    used_dish_ids = set()

    # Catégories pour les recommandations
    ENTRY_CATEGORIES = ["salad", "starter", "soup"]
    MAIN_DISH_CATEGORY = "main dish"
    DESSERT_CATEGORY = "dessert"

    for day in range(1, min(days, 7) + 1):  # Limiter à un maximum de 7 jours
        daily_recommendation = {"day": day}

        # Recommander une entrée (salad, starter ou soup)
        for entry_category in ENTRY_CATEGORIES:
            query = f"""
                SELECT id, name, score, fat_level, fiber_level, protein_level, sodium_level, dish_type, created_at
                FROM dishes
                WHERE dish_type = %(dish_type)s
            """
            params = {"dish_type": entry_category}

            # Appliquer les filtres si fournis
            if filters:
                conditions = []
                if 'score' in filters:
                    scores = filters['score'].split(',')
                    conditions.append("score = ANY(%(scores)s)")
                    params['scores'] = scores
                if 'fat_level' in filters:
                    conditions.append("fat_level = %(fat_level)s")
                    params['fat_level'] = filters['fat_level']
                if 'fiber_level' in filters:
                    conditions.append("fiber_level = %(fiber_level)s")
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

            if dish:
                daily_recommendation["entry"] = dish
                used_dish_ids.add(dish['id'])  # Marquer le plat comme utilisé
                break  # Une seule entrée est nécessaire

        # Recommander un plat principal (main dish)
        query = f"""
            SELECT id, name, score, fat_level, fiber_level, protein_level, sodium_level, dish_type, created_at
            FROM dishes
            WHERE dish_type = %(dish_type)s
        """
        params = {"dish_type": MAIN_DISH_CATEGORY}

        # Appliquer les filtres si fournis
        if filters:
            conditions = []
            if 'score' in filters:
                scores = filters['score'].split(',')
                conditions.append("score = ANY(%(scores)s)")
                params['scores'] = scores
            if 'fat_level' in filters:
                conditions.append("fat_level = %(fat_level)s")
                params['fat_level'] = filters['fat_level']
            if 'fiber_level' in filters:
                conditions.append("fiber_level = %(fiber_level)s")
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

        if dish:
            daily_recommendation["main_dish"] = dish
            used_dish_ids.add(dish['id'])  # Marquer le plat comme utilisé
        else:
            daily_recommendation["main_dish"] = None  # Aucun plat principal disponible

        # Recommander un dessert
        query = f"""
            SELECT id, name, score, fat_level, fiber_level, protein_level, sodium_level, dish_type, created_at
            FROM dishes
            WHERE dish_type = %(dish_type)s
        """
        params = {"dish_type": DESSERT_CATEGORY}

        # Appliquer les filtres si fournis
        if filters:
            conditions = []
            if 'score' in filters:
                scores = filters['score'].split(',')
                conditions.append("score = ANY(%(scores)s)")
                params['scores'] = scores
            if 'fat_level' in filters:
                conditions.append("fat_level = %(fat_level)s")
                params['fat_level'] = filters['fat_level']
            if 'fiber_level' in filters:
                conditions.append("fiber_level = %(fiber_level)s")
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

        if dish:
            daily_recommendation["dessert"] = dish
            used_dish_ids.add(dish['id'])  # Marquer le plat comme utilisé
        else:
            daily_recommendation["dessert"] = None  # Aucun dessert disponible

        # Ajouter la recommandation quotidienne à la liste
        recommendations.append(daily_recommendation)

    # Fermer la connexion
    cursor.close()
    conn.close()

    return recommendations

def recommend_better_dish(current_dish_id):
    """
    Recommande plusieurs plats avec un meilleur score.
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

    # Construire la requête pour trouver des plats avec un meilleur score
    query = """
        SELECT id, name, score, fat_level, fiber_level, protein_level, sodium_level,
               preparation_method, dish_type, diet_type, created_at
        FROM dishes
        WHERE dish_type = %s
          AND score < %s
        ORDER BY score ASC
        LIMIT 3
    """
    cursor.execute(query, (dish_type, current_score))
    better_dishes = cursor.fetchall()

    cursor.close()
    conn.close()

    # Convertir les résultats en objets Dish
    return [
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

def get_all_preparation_methods():
    """
    Récupère toutes les méthodes de préparation uniques.
    :return: Liste des méthodes de préparation.
    """
    conn = get_db_connection()
    cursor = conn.cursor()

    cursor.execute("SELECT DISTINCT preparation_method FROM dishes")
    preparation_methods = [row[0] for row in cursor.fetchall()]

    cursor.close()
    conn.close()

    return preparation_methods

def get_all_diet_types():
    """
    Récupère tous les types de régimes uniques.
    :return: Liste des types de régimes.
    """
    conn = get_db_connection()
    cursor = conn.cursor()

    cursor.execute("SELECT DISTINCT diet_type FROM dishes")
    diet_types = [row[0] for row in cursor.fetchall()]

    cursor.close()
    conn.close()

    return diet_types

def get_all_dish_types():
    """
    Récupère tous les types de plats uniques.
    :return: Liste des types de plats.
    """
    conn = get_db_connection()
    cursor = conn.cursor()

    cursor.execute("SELECT DISTINCT dish_type FROM dishes")
    dish_types = [row[0] for row in cursor.fetchall()]

    cursor.close()
    conn.close()

    return dish_types