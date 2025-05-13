from datetime import datetime, timedelta

import pytest
from parkiaiapi.services.metrics_services import MetricsService
from parkiaiapi.models.state import State

@pytest.fixture
def etats_json():
    return [
        {"date": "1744869600", "etat": 0},
        {"date": "1744871400", "etat": 1}
    ]


@pytest.fixture
def complex_etats_json():
    return [
        {"date": "1744866000", "etat": 0}, #7h00
        {"date": "1744868700", "etat": 1}, #7h45
        {"date": "1744876800", "etat": 0}, #10h00
        {"date": "1744879800", "etat": 1}, #10h50
        {"date": "1744888500", "etat": 0}, #13h15
        {"date": "1744890900", "etat": 1}, #13h55
        {"date": "1744897800", "etat": 0}, #15h50
        {"date": "1744901100", "etat": 1}, #16h45
        {"date": "1744909800", "etat": 0},#19h10
        {"date": "1744912200", "etat": 1}, #19h50
        {"date": "1744917000", "etat": 0} #21h10
    ]


def test_parse_etats_simple(etats_json):
    # année, mois, jour, heure, minute, seconde
    etats_obj = []
    etats_obj.append(State(datetime(2025, 4, 17, 8, 0, 0), datetime(2025, 4, 17, 8, 30, 0), 0))

    parsed = MetricsService.parse_etats(etats_json)
    assert etats_obj == parsed


def test_parse_etats_complexes(complex_etats_json):
    etats_obj = []
    etats_obj.append(State(datetime(2025, 4, 17, 7, 0, 0), datetime(2025, 4, 17, 7, 45, 0), 0))
    etats_obj.append(State(datetime(2025, 4, 17, 7, 45, 0), datetime(2025, 4, 17, 10, 0, 0), 1))
    etats_obj.append(State(datetime(2025, 4, 17, 10, 0, 0), datetime(2025, 4, 17, 10, 50, 0), 0))
    etats_obj.append(State(datetime(2025, 4, 17, 10, 50, 0), datetime(2025, 4, 17, 13, 15, 0), 1))
    etats_obj.append(State(datetime(2025, 4, 17, 13, 15, 0), datetime(2025, 4, 17, 13, 55, 0), 0))
    etats_obj.append(State(datetime(2025, 4, 17, 13, 55, 0), datetime(2025, 4, 17, 15, 50, 0), 1))
    etats_obj.append(State(datetime(2025, 4, 17, 15, 50, 0), datetime(2025, 4, 17, 16, 45, 0), 0))
    etats_obj.append(State(datetime(2025, 4, 17, 16, 45, 0), datetime(2025, 4, 17, 19, 10, 0), 1))
    etats_obj.append(State(datetime(2025, 4, 17, 19, 10, 0), datetime(2025, 4, 17, 19, 50, 0), 0))
    etats_obj.append(State(datetime(2025, 4, 17, 19, 50, 0), datetime(2025, 4, 17, 21, 10, 0), 1))
    

    parsed = MetricsService.parse_etats(complex_etats_json)
    assert etats_obj == parsed



def test_compute_off_times(complex_etats_json):

    assert MetricsService.compute_off_times(MetricsService.parse_etats(complex_etats_json)) == 13800


def test_compute_state_duration_complex(complex_etats_json):
    parsed = MetricsService.parse_etats(complex_etats_json)
    assert MetricsService.compute_state_duration(0, parsed) == 13800
    assert MetricsService.compute_state_duration(1, parsed) == 37200
    assert MetricsService.compute_state_duration(2, parsed) == 0

def test_compute_state_duration_simple(etats_json):
    parsed = MetricsService.parse_etats(etats_json)
    assert MetricsService.compute_state_duration(0, parsed) == 1800
    assert MetricsService.compute_state_duration(1, parsed) == 0
    assert MetricsService.compute_state_duration(2, parsed) == 0


def test_calculate_duree_journee_simple(etats_json):
    parsed = MetricsService.parse_etats(etats_json)
    assert MetricsService.calculate_duree_journee(parsed) == 1800

def test_calculate_duree_journee_complex(complex_etats_json):
    parsed = MetricsService.parse_etats(complex_etats_json)
    assert MetricsService.calculate_duree_journee(parsed) == 51000


def test_calculate_duree_moyenne_etat_on_complexe(complex_etats_json):
    parsed = MetricsService.parse_etats(complex_etats_json)
    assert MetricsService.calculate_duree_moyenne_etat(1, parsed) == 7440