from flask import Blueprint, request, send_file, jsonify
from services.graphe_states_services import GrapheStateServices
from datetime import datetime

bp = Blueprint('graph_states', __name__, url_prefix='/')

@bp.route('/graph-states', methods=['POST'])
def create_graph():
    """
    Endpoint pour générer un graphique à partir des données d'états.
    """
    try:
        # Récupérer les données JSON de la requête
        data = request.get_json()
        etats = data.get("etats", [])

        if not etats:
            return jsonify({"error": "Aucune donnée d'états fournie."}), 400

        # Générer un nom de fichier unique basé sur la date et l'heure
        date_tag = datetime.now().strftime('%Y%m%d_%H%M%S')
        filename = f"graph_{date_tag}.html"

        # Appeler le service pour générer le graphique
        path = GrapheStateServices.generate_graph_from_etats(etats, filename=filename)

        # Retourner le fichier généré
        return send_file(path, mimetype='text/html')

    except Exception as e:
        return jsonify({"error": str(e)}), 500