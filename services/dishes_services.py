from db.connection import get_db_connection
import psycopg2
from psycopg2.extras import RealDictCursor
from datetime import datetime, timedelta

def get_all_dishes(filters):
    conn = get_db_connection()
    cursor = conn.cursor()
    
    query = "SELECT * FROM dishes"
    if filters:
        filter_clauses = [f"{key} = %s" for key in filters.keys()]
        query += " WHERE " + " AND ".join(filter_clauses)
    
    cursor.execute(query, tuple(filters.values()))
    rows = cursor.fetchall()
    
    columns = [desc[0] for desc in cursor.description]
    dishes = [dict(zip(columns, row)) for row in rows]
    
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