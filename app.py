from flask import Flask, jsonify, request
import psycopg2
import configparser
import os

app = Flask(__name__)

def get_db_connection():
    # Chargement des informations de connexion depuis un fichier de configuration
    config = configparser.ConfigParser()
    config_path = os.path.join(os.path.dirname(__file__), 'db_config.ini')
    
    if not os.path.exists(config_path):
        raise FileNotFoundError(f"Le fichier de configuration '{config_path}' est introuvable.")
    
    config.read(config_path)
    
    if 'database' not in config:
        raise KeyError("La section 'database' est absente du fichier de configuration.")
    
    return psycopg2.connect(
        dbname=config['database']['dbname'],
        user=config['database']['user'],
        password=config['database']['password'],
        host=config['database']['host'],
        port=config['database']['port']
    )


    
# récupère les dishes disponibles
# il est possible d'ajouter des paramètres de filtrage pour les dishes
# ces paramètres sont passés sous la forme de query parameters dans l'url
# ces paramètres sont optionnels
@app.route('/dishes', methods=['GET'])
def get_dishes():
    conn = get_db_connection()
    cursor = conn.cursor()
    
    # Récupération des paramètres de filtrage
    filters = {}
    for key in request.args.keys():
        filters[key] = request.args[key]
    
    # Construction de la requête SQL
    query = "SELECT * FROM dishes"
    if filters:
        filter_clauses = [f"{key} = %s" for key in filters.keys()]
        query += " WHERE " + " AND ".join(filter_clauses)
    
    cursor.execute(query, tuple(filters.values()))
    dishes = cursor.fetchall()
    
    #convertir les résultats en dictionnaire
    columns = [desc[0] for desc in cursor.description] 
    dishes = [dict(zip(columns, dish)) for dish in dishes]
    
    
    cursor.close()
    conn.close()
    
    return jsonify(dishes)

@app.route('/dishes/search', methods=['GET'])
def search_dishes():
    conn = get_db_connection()
    cursor = conn.cursor()
    
    # Récupération des paramètres de recherche
    filters = {}
    for key in ['name', 'score']:
        if key in request.args:
            filters[key] = request.args[key]
    
    # Construction de la requête SQL
    query = "SELECT * FROM dishes"
    if filters:
        filter_clauses = [f"{key} ILIKE %s" for key in filters.keys()]
        query += " WHERE " + " AND ".join(filter_clauses)
    
    cursor.execute(query, tuple(f"%{value}%" for value in filters.values()))
    dishes = cursor.fetchall()
    
    # Convertir les résultats en dictionnaire
    columns = [desc[0] for desc in cursor.description]
    dishes = [dict(zip(columns, dish)) for dish in dishes]
    
    cursor.close()
    conn.close()
    
    return jsonify(dishes)

@app.route('/dishes/<int:dish_id>', methods=['GET'])
def get_dish_by_id(dish_id):
    conn = get_db_connection()
    try:
        cursor = conn.cursor()
        cursor.execute("SELECT * FROM dishes WHERE id = %s", (dish_id,))
        dish = cursor.fetchone()
        if dish is None:
            return jsonify({"error": "Plat introuvable."}), 404
        
        # Convertir le résultat en dictionnaire
        columns = [desc[0] for desc in cursor.description]
        dish = dict(zip(columns, dish))
        return jsonify(dish)
    except Exception as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()
        conn.close()
    
if __name__ == "__main__":
    print(app.url_map)  # Affiche toutes les routes
    app.run(debug=True)