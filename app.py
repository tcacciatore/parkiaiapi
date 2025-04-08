import psycopg2
import configparser

def fetch_all_dishes():
    # Chargement des informations de connexion depuis un fichier de configuration
    config = configparser.ConfigParser()
    config.read('db_config.ini')
    
    conn = psycopg2.connect(
        dbname=config['database']['dbname'],
        user=config['database']['user'],
        password=config['database']['password'],
        host=config['database']['host'],
        port=config['database']['port']
    )
    
    try:
        # Création d'un curseur pour exécuter les requêtes
        cursor = conn.cursor()
        
        # Exécution de la requête SQL
        cursor.execute("SELECT * FROM dishes;")
        
        # Récupération de toutes les lignes
        rows = cursor.fetchall()
        
        # Affichage des résultats
        for row in rows:
            print(row)
    
    except Exception as e:
        print(f"Une erreur s'est produite : {e}")
    
    finally:
        # Fermeture du curseur et de la connexion
        cursor.close()
        conn.close()

if __name__ == "__main__":
    fetch_all_dishes()