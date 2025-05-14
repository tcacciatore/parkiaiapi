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

    words = re.findall(r'\w+', dish_name.lower())

    emojis = []
    seen = set()  # pour éviter les doublons

    for word in words:
        cursor.execute("SELECT emoji FROM keywords WHERE keyword = %s", (word,))
        result = cursor.fetchone()
        if result:
            emoji = result[0]
            if emoji not in seen:
                emojis.append(emoji)
                seen.add(emoji)
        if len(emojis) == 3:
            break

    cursor.close()
    conn.close()

    return ''.join(emojis) if emojis else "🍽️"