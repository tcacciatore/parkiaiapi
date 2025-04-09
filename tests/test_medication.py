import unittest
from app import create_app
from unittest.mock import patch

class TestMedicationAPI(unittest.TestCase):
    def setUp(self):
        self.app = create_app()
        self.client = self.app.test_client()

    @patch('services.medication_services.MedicationService.calculate_required_doses')
    def test_medication_required_doses_success(self, mock_calculate_required_doses):
        # Mock de la réponse de la logique métier
        mock_calculate_required_doses.return_value = {
            "required_doses": [
                {"medication": "Paracetamol", "required_doses": 30, "message": "Vous aurez besoin de 30 doses pour 10 jours."}
            ]
        }

        payload = {
            "medications": [
                {"name": "Paracetamol", "dose_per_day": 3}
            ],
            "days": 10
        }

        response = self.client.post('/medication/required-doses', json=payload)
        self.assertEqual(response.status_code, 200)
        self.assertIn("required_doses", response.json)
        self.assertEqual(response.json["required_doses"][0]["required_doses"], 30)

    def test_medication_required_doses_missing_fields(self):
        payload = {
            "medications": [
                {"name": "Paracetamol", "dose_per_day": 3}
            ]
            # 'days' manquant
        }

        response = self.client.post('/medication/required-doses', json=payload)
        self.assertEqual(response.status_code, 400)
        self.assertIn("error", response.json)

    @patch('services.medication_services.MedicationService.calculate_days_left')
    def test_medication_days_left_success(self, mock_calculate_days_left):
        # Mock de la réponse de la logique métier
        mock_calculate_days_left.return_value = {
            "alerts": [
                {"medication": "Paracetamol", "days_left": 10, "message": "Stock suffisant pour 10 jours."}
            ]
        }

        payload = {
            "medications": [
                {"name": "Paracetamol", "dose_per_day": 3, "total_in_stock": 30}
            ]
        }

        response = self.client.post('/medication/days-left', json=payload)
        self.assertEqual(response.status_code, 200)
        self.assertIn("alerts", response.json)
        self.assertEqual(response.json["alerts"][0]["days_left"], 10)

    def test_medication_days_left_missing_fields(self):
        payload = {}  # Pas de champ 'medications'

        response = self.client.post('/medication/days-left', json=payload)
        self.assertEqual(response.status_code, 400)
        self.assertIn("error", response.json)

    def test_medication_days_left_invalid_data(self):
        payload = {
            "medications": [
                {"name": "Paracetamol", "dose_per_day": 0, "total_in_stock": 30},  # dose_per_day invalide
                {"name": "Ibuprofen", "dose_per_day": 2, "total_in_stock": -5}    # total_in_stock invalide
            ]
        }

        response = self.client.post('/medication/days-left', json=payload)
        self.assertEqual(response.status_code, 200)
        self.assertIn("alerts", response.json)
        self.assertIn("Données invalides", response.json["alerts"][0]["message"])
        self.assertIn("Données invalides", response.json["alerts"][1]["message"])

if __name__ == "__main__":
    unittest.main()