import unittest
from datetime import datetime, timedelta
from services.metrics_services import MetricsService

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
        self.reveil_time = datetime(2025, 4, 17, 6, 0, 0)
        self.coucher_time = datetime(2025, 4, 17, 22, 34, 0)

    def test_parse_etats(self):
        etats_raw = [
            {"date": "17/04/2025 06:00:00", "etat": 0},
            {"date": "17/04/2025 06:30:00", "etat": 1}
        ]
        parsed = MetricsService.parse_etats(etats_raw)
        self.assertEqual(len(parsed), 2)
        self.assertEqual(parsed[0][1], 0)
        self.assertEqual(parsed[1][1], 1)

    def test_count_fluctuations(self):
        fluctuations = MetricsService.count_fluctuations(self.etats)
        self.assertEqual(fluctuations, 5)  # 5 transitions de 1 à 0

    def test_duration_by_state(self):
        durations = MetricsService.duration_by_state(self.etats)
        self.assertEqual(durations[0], timedelta(seconds=14746))  # Total OFF
        self.assertEqual(durations[1], timedelta(seconds=45885))  # Total ON

    def test_calculate_duree_journee(self):
        duree_journee = MetricsService.calculate_duree_journee(self.reveil_time, self.coucher_time)
        self.assertEqual(duree_journee, 59640)  # 16h34m en secondes

    def test_calculate_temps_deblocage(self):
        temps_deblocage = MetricsService.calculate_temps_deblocage(self.etats, self.reveil_time)
        self.assertEqual(temps_deblocage, 2396)  # 39 minutes 56 secondes

    def test_calculate_fluctuations(self):
        fluctuations = MetricsService.calculate_fluctuations(self.etats)
        self.assertEqual(fluctuations, 5)  # 5 transitions de 1 à 0

    def test_calculate_durations_by_state(self):
        durations = MetricsService.calculate_durations_by_state(self.etats)
        self.assertEqual(durations[0], 14746)  # Total OFF en secondes
        self.assertEqual(durations[1], 45885)  # Total ON en secondes

    def test_calculate_moyenne_duree_on(self):
        moyenne_duree_on = MetricsService.calculate_moyenne_duree_on(self.etats)
        self.assertEqual(moyenne_duree_on, 9177)  # Moyenne ON en secondes

    def test_calculate_temps_actif(self):
        temps_actif = MetricsService.calculate_temps_actif(self.reveil_time, self.coucher_time)
        self.assertEqual(temps_actif, 59640)  # Temps actif en secondes

    def test_compute_metrics(self):
        data = {
            "etats": [
                {"date": "17/04/2025 06:00:00", "etat": 0},
                {"date": "17/04/2025 06:39:55", "etat": 0},
                {"date": "17/04/2025 06:39:56", "etat": 1},
                {"date": "17/04/2025 09:12:22", "etat": 1},
                {"date": "17/04/2025 09:12:23", "etat": 0},
                {"date": "17/04/2025 09:51:43", "etat": 0},
                {"date": "17/04/2025 09:51:44", "etat": 1},
                {"date": "17/04/2025 12:11:08", "etat": 1},
                {"date": "17/04/2025 12:11:09", "etat": 0},
                {"date": "17/04/2025 12:49:18", "etat": 0},
                {"date": "17/04/2025 12:49:19", "etat": 1},
                {"date": "17/04/2025 15:08:51", "etat": 1},
                {"date": "17/04/2025 15:08:52", "etat": 0},
                {"date": "17/04/2025 16:02:11", "etat": 0},
                {"date": "17/04/2025 16:02:12", "etat": 1},
                {"date": "17/04/2025 19:12:32", "etat": 1},
                {"date": "17/04/2025 19:12:33", "etat": 0},
                {"date": "17/04/2025 19:55:44", "etat": 0},
                {"date": "17/04/2025 19:55:45", "etat": 1},
                {"date": "17/04/2025 22:02:08", "etat": 1},
                {"date": "17/04/2025 22:02:09", "etat": 0}
            ],
            "reveil": "06:00",
            "coucher": "22:34"
        }
        result = MetricsService.compute_metrics(data)
        self.assertEqual(result["temps_deblocage"], 2396)  # 39 minutes 56 secondes
        self.assertEqual(result["fluctuations"], 5)  # 5 transitions de 1 à 0
        self.assertEqual(result["duree_on"], 45885)  # Total ON
        self.assertEqual(result["duree_off"], 14746)  # Total OFF
        self.assertEqual(result["duree_journee"], 59640)  # 16h34m
        self.assertEqual(result["moyenne_duree_on"], 9177)  # Moyenne ON
        self.assertEqual(result["temps_actif"], 59640)  # Temps actif

if __name__ == "__main__":
    unittest.main()