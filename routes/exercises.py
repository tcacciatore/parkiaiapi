from flask import Blueprint, jsonify, request
from services.exercise_services import ExerciseService

bp = Blueprint('exercises', __name__, url_prefix='/exercises')

@bp.route('/', methods=['GET'])
def list_exercises():
    """
    Endpoint pour récupérer tous les exercices.
    """
    filters = request.args.to_dict()  # Récupère les filtres passés en paramètres de requête
    result = ExerciseService.get_all_exercises(filters)
    return jsonify(result)

@bp.route('/<int:exercise_id>', methods=['GET'])
def get_exercise_by_id(exercise_id):
    """
    Endpoint pour récupérer un exercice spécifique par son ID.
    """
    result = ExerciseService.get_exercise_by_id(exercise_id)
    if result is None:
        return jsonify({"error": "Exercice introuvable."}), 404
    return jsonify(result)