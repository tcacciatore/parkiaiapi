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