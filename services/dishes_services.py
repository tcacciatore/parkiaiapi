from db.connection import get_db_connection

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