from flask import Blueprint, jsonify, request
from services.dishes_services import get_all_dishes, get_dish_by_id, get_recommended_dishes

bp = Blueprint('dishes', __name__, url_prefix='/dishes')

@bp.route('/', methods=['GET'])
def list_dishes():
    filters = request.args.to_dict()
    dishes = get_all_dishes(filters)
    return jsonify(dishes)

@bp.route('/<int:dish_id>', methods=['GET'])
def get_dish(dish_id):
    dish = get_dish_by_id(dish_id)
    if dish is None:
        return jsonify({"error": "Plat introuvable"}), 404
    return jsonify(dish)

@bp.route('/recommendations', methods=['GET'])
def recommend_dishes():
    """
    Endpoint pour obtenir des recommandations de plats.
    """
    filters = request.args.to_dict()
    # Récupérer la limite depuis les paramètres ou utiliser 7 par défaut
    limit = int(filters.pop('days', 7))  # Par défaut, limite à 7 jours
    limit = min(limit, 7)  # Imposer une limite maximale de 7 jours
    recommendations = get_recommended_dishes(filters, limit)
    return jsonify(recommendations)