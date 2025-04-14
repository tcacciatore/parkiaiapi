from flask import Blueprint, request, jsonify
from services.metrics_services import MetricsService

bp = Blueprint('/metrics', __name__, url_prefix='/metrics')

@bp.route('/', methods=['POST'])
def metrics():
    try:
        data = request.get_json()
        print(f"Requête reçue : {data}")  # Log des données reçues

        if not all(k in data for k in ['etats', 'reveil', 'coucher']):
            return jsonify({"error": "Champs 'etats', 'reveil' et 'coucher' requis"}), 400

        result = MetricsService.compute_metrics(data)
        print(f"Résultat des métriques : {result}")  # Log du résultat

        return jsonify(result)

    except Exception as e:
        print(f"Erreur : {e}")  # Log de l'erreur
        return jsonify({"error": str(e)}), 500