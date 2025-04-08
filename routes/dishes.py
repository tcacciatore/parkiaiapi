from flask import Blueprint, jsonify, request
from services.dishes_services import get_all_dishes, get_dish_by_id

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