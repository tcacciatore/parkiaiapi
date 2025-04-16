from flask import Blueprint, jsonify, request
from services.dishes_services import get_all_diet_types, get_all_dish_types, get_all_dishes, get_all_preparation_methods, get_dish_by_id, get_recommended_dishes, recommend_better_dish

bp = Blueprint('dishes', __name__, url_prefix='/dishes')

@bp.route('/', methods=['GET'])
def list_dishes():
    filters = request.args.to_dict()
    dishes = get_all_dishes(filters)
    return jsonify([dish.to_dict() for dish in dishes])

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

@bp.route('/<int:dish_id>/recommendation', methods=['GET'])
def recommend_better_dish_route(dish_id):
    """
    Endpoint pour recommander plusieurs plats avec un meilleur score.
    """
    recommended_dishes = recommend_better_dish(dish_id)
    if not recommended_dishes:
        return jsonify({"error": "Aucune recommandation trouvée"}), 404
    return jsonify([dish.to_dict() for dish in recommended_dishes])


@bp.route('/preparation_methods', methods=['GET'])
def get_preparation_methods():
    """
    Endpoint pour récupérer toutes les méthodes de préparation.
    """
    preparation_methods = get_all_preparation_methods()
    return jsonify(preparation_methods)


@bp.route('/diet_types', methods=['GET'])
def get_diet_types():
    """
    Endpoint pour récupérer tous les types de régimes.
    """
    diet_types = get_all_diet_types()
    return jsonify(diet_types)


@bp.route('/dish_types', methods=['GET'])
def get_dish_types():
    """
    Endpoint pour récupérer tous les types de plats.
    """
    dish_types = get_all_dish_types()
    return jsonify(dish_types)