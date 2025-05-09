import unittest
from datetime import datetime, timedelta
from parkiaiapi.services.metrics_services import MetricsService
from parkiaiapi.models.state import State

class TestMetricsService(unittest.TestCase):

    def setUp(self):
        # Données de test communes
        self.etats = [
            (datetime(2025, 4, 17, 6, 0, 0), 0),
            (datetime(2025, 4, 17, 6, 39, 55), 0),
            (datetime(2025, 4, 17, 6, 39, 56), 1),
            (datetime(2025, 4, 17, 9, 12, 22), 1),
            (datetime(2025, 4, 17, 9, 12, 23), 0),
            (datetime(2025, 4, 17, 9, 51, 43), 0),
            (datetime(2025, 4, 17, 9, 51, 44), 1),
            (datetime(2025, 4, 17, 12, 11, 8), 1),
            (datetime(2025, 4, 17, 12, 11, 9), 0),
            (datetime(2025, 4, 17, 12, 49, 18), 0),
            (datetime(2025, 4, 17, 12, 49, 19), 1),
            (datetime(2025, 4, 17, 15, 8, 51), 1),
            (datetime(2025, 4, 17, 15, 8, 52), 0),
            (datetime(2025, 4, 17, 16, 2, 11), 0),
            (datetime(2025, 4, 17, 16, 2, 12), 1),
            (datetime(2025, 4, 17, 19, 12, 32), 1),
            (datetime(2025, 4, 17, 19, 12, 33), 0),
            (datetime(2025, 4, 17, 19, 55, 44), 0),
            (datetime(2025, 4, 17, 19, 55, 45), 1),
            (datetime(2025, 4, 17, 22, 2, 8), 1),
            (datetime(2025, 4, 17, 22, 2, 9), 0)
        ]

        self.simple_etats = [
            (datetime(2025, 4, 17, 6, 0, 0), 0),
            (datetime(2025, 4, 17, 7, 0, 0), 1),
            (datetime(2025, 4, 17, 12, 0, 1), 0),
            (datetime(2025, 4, 17, 12, 30, 0), 1),
            (datetime(2025, 4, 17, 15, 30, 1), 0)
        ]
        self.reveil_time = datetime(2025, 4, 17, 6, 0, 0)
        self.coucher_time = datetime(2025, 4, 17, 22, 34, 0)

    def test_parse_etats(self):
        etats_json = [
            {"date": "1744869600", "etat": 0},
            {"date": "1744871400", "etat": 1}
        ]

        # année, mois, jour, heure, minute, seconde
        etats_obj = []
        etats_obj.append(State(datetime(2025, 4, 17, 8, 0, 0), datetime(2025, 4, 17, 8, 30, 0), 0))

        parsed = MetricsService.parse_etats(etats_json)
        self.assertEqual(etats_obj, parsed)

    def test_parse_etats_null(self):
        with self.assertRaises(ValueError) as context:
            MetricsService.parse_etats(0)
        self.assertEqual(str(context.exception), "states input are missing")


    def test_parse_states_no_etat_value(self):
        etats_raw = [
            {"date": "17/04/2025 06:00:00"},
            {"date": "17/04/2025 06:30:00"}
        ]
        with self.assertRaises(ValueError):
             MetricsService.parse_etats(etats_raw)
