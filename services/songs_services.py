from db.connection import get_db_connection

class SongsService:

    @staticmethod
    def get_all_songs(filters):
        """
        Récupère toutes les chansons, avec des filtres optionnels.
        """
        conn = get_db_connection()
        cursor = conn.cursor()

        query = "SELECT * FROM songs"
        if filters:
            filter_clauses = [f"{key} = %s" for key in filters.keys()]
            query += " WHERE " + " AND ".join(filter_clauses)

        cursor.execute(query, tuple(filters.values()))
        rows = cursor.fetchall()

        columns = [desc[0] for desc in cursor.description]
        songs = [dict(zip(columns, row)) for row in rows]

        cursor.close()
        conn.close()
        return songs

    @staticmethod
    def get_song_by_id(song_id):
        conn = get_db_connection()
        cursor = conn.cursor()

        query = "SELECT * FROM songs WHERE id = %s"
        cursor.execute(query, (song_id,))
        row = cursor.fetchone()

        if row is None:
            return None

        columns = [desc[0] for desc in cursor.description]
        song = dict(zip(columns, row))

        cursor.close()
        conn.close()
        return song

    @staticmethod
    def get_recommendations(min_bpm, max_bpm, style, duration):
        conn = get_db_connection()
        cursor = conn.cursor()

        query = "SELECT * FROM songs WHERE 1=1"
        params = []

        if min_bpm:
            query += " AND bpm >= %s"
            params.append(min_bpm)
        if max_bpm:
            query += " AND bpm <= %s"
            params.append(max_bpm)
        if style:
            query += " AND style = %s"
            params.append(style)

        cursor.execute(query, tuple(params))
        rows = cursor.fetchall()

        columns = [desc[0] for desc in cursor.description]
        songs = [dict(zip(columns, row)) for row in rows]

        # Limiter les chansons en fonction de la durée (si spécifiée)
        if duration:
            total_duration = 0
            recommended_songs = []
            for song in songs:
                total_duration += 3  # Supposons que chaque chanson dure 3 minutes
                if total_duration <= duration:
                    recommended_songs.append(song)
                else:
                    break
            songs = recommended_songs

        cursor.close()
        conn.close()
        return songs

    @staticmethod
    def get_styles():
        conn = get_db_connection()
        cursor = conn.cursor()

        query = "SELECT DISTINCT style FROM songs"
        cursor.execute(query)
        rows = cursor.fetchall()

        styles = [row[0] for row in rows]

        cursor.close()
        conn.close()
        return styles

    @staticmethod
    def get_artists():
        conn = get_db_connection()
        cursor = conn.cursor()

        query = "SELECT DISTINCT artist FROM songs"
        cursor.execute(query)
        rows = cursor.fetchall()

        artists = [row[0] for row in rows]

        cursor.close()
        conn.close()
        return artists

    @staticmethod
    def get_songs_by_artist(artist_name):
        conn = get_db_connection()
        cursor = conn.cursor()

        query = "SELECT * FROM songs WHERE artist = %s"
        cursor.execute(query, (artist_name,))
        rows = cursor.fetchall()

        columns = [desc[0] for desc in cursor.description]
        songs = [dict(zip(columns, row)) for row in rows]

        cursor.close()
        conn.close()
        return songs

    @staticmethod
    def get_songs_by_bpm_range(min_bpm, max_bpm):
        conn = get_db_connection()
        cursor = conn.cursor()

        query = "SELECT * FROM songs WHERE bpm BETWEEN %s AND %s"
        cursor.execute(query, (min_bpm, max_bpm))
        rows = cursor.fetchall()

        columns = [desc[0] for desc in cursor.description]
        songs = [dict(zip(columns, row)) for row in rows]

        cursor.close()
        conn.close()
        return songs

    @staticmethod
    def get_sorted_songs(sort_by, order):
        conn = get_db_connection()
        cursor = conn.cursor()

        query = f"SELECT * FROM songs ORDER BY {sort_by} {order.upper()}"
        cursor.execute(query)
        rows = cursor.fetchall()

        columns = [desc[0] for desc in cursor.description]
        songs = [dict(zip(columns, row)) for row in rows]

        cursor.close()
        conn.close()
        return songs