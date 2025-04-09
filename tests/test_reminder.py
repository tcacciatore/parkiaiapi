import unittest
from app import create_app
from unittest.mock import patch
from datetime import datetime

class TestReminderAPI(unittest.TestCase):
    def setUp(self):
        self.app = create_app()
        self.client = self.app.test_client()



    def test_medication_days_left(self):
        payload = {
            "medications": [
                {"name": "Paracetamol", "dose_per_day": 3, "total_in_stock": 30}
            ]
        }

        response = self.client.post('/medication/days-left', json=payload)
        self.assertEqual(response.status_code, 200)
        self.assertIn("days_left", response.json)

if __name__ == "__main__":
    unittest.main()