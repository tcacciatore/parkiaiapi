from db.connection import get_db_connection
import re
from psycopg2.extras import RealDictCursor


def get_all_emois(filters):
    conn = get_db_connection()
    cursor = conn.cursor()

    query = """
        SELECT id, keyword, emoji FROM keywords
    """
    
    cursor.execute(query)
    rows = cursor.fetchall()

    cursor.close()
    conn.close()

    return rows

def get_emoji_sequence(dish_name):
    conn = get_db_connection()
    cursor = conn.cursor()

    # Préparation du nom du plat
    words = re.findall(r'\w+', dish_name.lower())

    emoji_sequence = []

    for word in words:
        cursor.execute("SELECT emoji FROM keywords WHERE keyword = %s", (word,))
        result = cursor.fetchone()
        if result:
            emoji_sequence.append(result[0])

    cursor.close()
    conn.close()

    return ''.join(emoji_sequence)