from datetime import datetime, timedelta
import logging

from models.state import State

class MetricsService:

    @staticmethod
    def parse_etats(etats):
        """
        Parse les états pour convertir les dates en objets datetime.
        :param etats: Liste de dictionnaires contenant 'date' et 'etat'.
        :return: Liste de tuples (datetime, etat).
        """
        parsed = []

        if not isinstance(etats, list):
            raise ValueError("states input are missing")
        
        for i in range(len(etats)):
            if i < len(etats) - 1:
                if 'etat' not in etats[i] and 'etat' not in etats[i+1]:
                    raise ValueError("etat is missing")
                
                startDt = datetime.fromtimestamp(int(etats[i]["date"]))
                endDt = datetime.fromtimestamp(int(etats[i+1]["date"]))
                parsed.append(State(startDt, endDt, etats[i]['etat']))

        return parsed

    @staticmethod
    def count_fluctuations(etats):
        return etats.len() - 1
    
    @staticmethod
    def compute_off_times(etats):
        off_time = 0
        for etat in etats:
            if etat.state_value == 0:
                off_time += (etat.date_end - etat.date_start).total_seconds()

        return off_time

    @staticmethod
    def compute_state_duration(state_value: int, etats):
        duration_in_seconds = 0
        for etat in etats:
            if etat.state_value == state_value:
                duration_in_seconds += (etat.date_end - etat.date_start).total_seconds()
        return duration_in_seconds


    @staticmethod
    def calculate_duree_journee(etats):
        """
        Calcule la durée de la journée en secondes.
        """
        return int((etats[len(etats)-1].date_end - etats[0].date_start).total_seconds())
    

    @staticmethod
    def calculate_duree_moyenne_etat(state_value:int, etats):
            etats_count = sum(state_value for etat in etats if etat.state_value == state_value)
            return MetricsService.compute_state_duration(state_value, etats) / etats_count

