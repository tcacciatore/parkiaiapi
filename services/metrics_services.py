from datetime import datetime, timedelta
import logging

class MetricsService:

    @staticmethod
    def parse_etats(etats):
        """
        Parse les états pour convertir les dates en objets datetime.
        :param etats: Liste de dictionnaires contenant 'date' et 'etat'.
        :return: Liste de tuples (datetime, etat).
        """
        parsed = [(datetime.strptime(item['date'], "%d/%m/%Y %H:%M:%S"), item['etat']) for item in etats]
        return parsed

    @staticmethod
    def count_fluctuations(etats):
        return sum(1 for i in range(1, len(etats)) if etats[i-1][1] == 1 and etats[i][1] == 0)

    @staticmethod
    def duration_by_state(etats):
        durations = {0: timedelta(), 1: timedelta(), 2: timedelta()}
        for i in range(0, len(etats) - 1):
            start, state = etats[i]
            end = etats[i+1][0]
            durations[state] += end - start
        return durations

    @staticmethod
    def calculate_duree_journee(reveil_time, coucher_time):
        """
        Calcule la durée de la journée en secondes.
        """
        return int((coucher_time - reveil_time).total_seconds())

    @staticmethod
    def calculate_temps_deblocage(etats, reveil_time):
        """
        Calcule le temps de déblocage (temps avant le premier état actif après le réveil).
        """
        for ts, state in etats:
            if ts >= reveil_time and state == 1:
                return int((ts - reveil_time).total_seconds())
        return None  # Aucun état actif trouvé

    @staticmethod
    def calculate_fluctuations(etats):
        """
        Calcule le nombre de fluctuations (transitions de 1 à 0).
        """
        return MetricsService.count_fluctuations(etats)

    @staticmethod
    def calculate_durations_by_state(etats):
        """
        Calcule les durées cumulées pour chaque état (0, 1, 2) en secondes.
        """
        durations = MetricsService.duration_by_state(etats)
        return {state: int(duration.total_seconds()) for state, duration in durations.items()}

    @staticmethod
    def calculate_moyenne_duree_on(etats):
        """
        Calcule la durée moyenne des périodes ON (état = 1).
        """
        on_durations = [
            int((etats[i+1][0] - etats[i][0]).total_seconds())
            for i in range(0, len(etats) - 1)
            if etats[i][1] == 1
        ]
        return int(sum(on_durations) / len(on_durations)) if on_durations else 0

    @staticmethod
    def calculate_temps_actif(reveil_time, coucher_time):
        """
        Calcule le temps actif entre le réveil et le coucher en secondes.
        """
        return int((coucher_time - reveil_time).total_seconds())

    @staticmethod
    def compute_metrics(data):
        # Configurer les logs
        logging.basicConfig(level=logging.DEBUG)
        logger = logging.getLogger(__name__)

        logger.debug("Début du calcul des métriques")
        logger.debug(f"Données reçues : {data}")

        # Étape 1 : Parser les états
        try:
            etats = MetricsService.parse_etats(data['etats'])
            logger.debug(f"États parsés : {etats}")
        except Exception as e:
            logger.error(f"Erreur lors du parsing des états : {e}")
            raise

        # Étape 2 : Calculer les heures de réveil et de coucher
        try:
            reveil_time = datetime.strptime(data['etats'][0]['date'][:10] + ' ' + data['reveil'], "%d/%m/%Y %H:%M")
            coucher_time = datetime.strptime(data['etats'][0]['date'][:10] + ' ' + data['coucher'], "%d/%m/%Y %H:%M")
            logger.debug(f"Heure de réveil : {reveil_time}, Heure de coucher : {coucher_time}")
        except Exception as e:
            logger.error(f"Erreur lors du calcul des heures de réveil et de coucher : {e}")
            raise

        # Calcul des métriques
        try:
            duree_journee = MetricsService.calculate_duree_journee(reveil_time, coucher_time)
            logger.debug(f"Durée de la journée (en secondes) : {duree_journee}")

            temps_deblocage = MetricsService.calculate_temps_deblocage(etats, reveil_time)
            logger.debug(f"Temps de déblocage (en secondes) : {temps_deblocage}")

            fluctuations = MetricsService.calculate_fluctuations(etats)
            logger.debug(f"Nombre de fluctuations : {fluctuations}")

            durations_in_seconds = MetricsService.calculate_durations_by_state(etats)
            logger.debug(f"Durées par état (en secondes) : {durations_in_seconds}")

            moyenne_duree_on = MetricsService.calculate_moyenne_duree_on(etats)
            logger.debug(f"Durée moyenne ON (en secondes) : {moyenne_duree_on}")

            temps_actif = MetricsService.calculate_temps_actif(reveil_time, coucher_time)
            logger.debug(f"Temps actif (en secondes) : {temps_actif}")
        except Exception as e:
            logger.error(f"Erreur lors du calcul des métriques : {e}")
            raise

        # Résultat final
        result = {
            "temps_deblocage": temps_deblocage if temps_deblocage is not None else "non atteint",
            "fluctuations": fluctuations,
            "duree_on": durations_in_seconds[1],
            "duree_off": durations_in_seconds[0],
            "duree_surdose": durations_in_seconds[2],
            "moyenne_duree_on": moyenne_duree_on,
            "temps_actif": temps_actif,
            "duree_journee": duree_journee
        }
        logger.debug(f"Résultat final : {result}")

        return result

