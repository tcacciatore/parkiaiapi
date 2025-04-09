from flask import Blueprint, jsonify, request
from services.medication_services import MedicationService
from datetime import datetime

bp = Blueprint('medication', __name__, url_prefix='/medication')

@bp.route('/days-left', methods=['POST'])
def medication_days_left():
    """
    Endpoint pour calculer le nombre de jours restants avec la quantité actuelle de médicaments.
    """
    data = request.get_json()
    medications = data.get('medications', [])

    if not medications:
        return jsonify({"error": "Le champ 'medications' est obligatoire."}), 400

    result = MedicationService.calculate_days_left(medications)
    return jsonify(result)

@bp.route('/required-doses', methods=['POST'])
def medication_required_doses():
    """
    Endpoint pour calculer le nombre de doses nécessaires pour une durée donnée.
    """
    data = request.get_json()
    medications = data.get('medications', [])
    days = data.get('days', 0)

    if not medications or days <= 0:
        return jsonify({"error": "Les champs 'medications' et 'days' sont obligatoires et doivent être valides."}), 400

    result = MedicationService.calculate_required_doses(medications, days)
    return jsonify(result)