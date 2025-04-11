from db.connection import get_db_connection

class ExerciseService:

    @staticmethod
    def get_all_exercises(filters):
        """
        Récupère tous les exercises, avec des filtres optionnels.
        """
        conn = get_db_connection()
        cursor = conn.cursor()

        query = "SELECT * FROM exercises"
        if filters:
            filter_clauses = [f"{key} = %s" for key in filters.keys()]
            query += " WHERE " + " AND ".join(filter_clauses)

        print("Requête SQL :", query)  # Log de la requête SQL
        print("Valeurs des filtres :", tuple(filters.values()))  # Log des valeurs des filtres

        cursor.execute(query, tuple(filters.values()))
        rows = cursor.fetchall()

        columns = [desc[0] for desc in cursor.description]
        exercises = [dict(zip(columns, row)) for row in rows]

        cursor.close()
        conn.close()
        return exercises

    @staticmethod
    def get_exercise_by_id(exercise_id):
        """
        Récupère un exercice spécifique par son ID.
        """
        conn = get_db_connection()
        cursor = conn.cursor()

        query = "SELECT * FROM exercises WHERE id = %s"
        cursor.execute(query, (exercise_id,))
        row = cursor.fetchone()

        if row is None:
            return None

        columns = [desc[0] for desc in cursor.description]
        exercise = dict(zip(columns, row))

        cursor.close()
        conn.close()
        return exercise