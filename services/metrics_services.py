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

        # Étape 3 : Temps de déblocage
        try:
            deblocage = None
            for ts, state in etats:
                if ts >= reveil_time and state == 1:
                    deblocage = int((ts - reveil_time).total_seconds())
                    break
            logger.debug(f"Temps de déblocage (en secondes) : {deblocage}")
        except Exception as e:
            logger.error(f"Erreur lors du calcul du temps de déblocage : {e}")
            raise

        # Étape 4 : Fluctuations
        try:
            fluctuations = MetricsService.count_fluctuations(etats)
            logger.debug(f"Nombre de fluctuations : {fluctuations}")
        except Exception as e:
            logger.error(f"Erreur lors du calcul des fluctuations : {e}")
            raise

        # Étape 5 : Durées cumulées par état
        try:
            durations = MetricsService.duration_by_state(etats)
            durations_in_seconds = {state: int(duration.total_seconds()) for state, duration in durations.items()}
            logger.debug(f"Durées par état (en secondes) : {durations_in_seconds}")
        except Exception as e:
            logger.error(f"Erreur lors du calcul des durées par état : {e}")
            raise

        # Étape 6 : Durée moyenne ON
        try:
            on_durations = [
                int((etats[i+1][0] - etats[i][0]).total_seconds())
                for i in range(0, len(etats) - 1)
                if etats[i][1] == 1
            ]
            moyenne_on = int(sum(on_durations) / len(on_durations)) if on_durations else 0
            logger.debug(f"Durée moyenne ON (en secondes) : {moyenne_on}")
        except Exception as e:
            logger.error(f"Erreur lors du calcul de la durée moyenne ON : {e}")
            raise

        # Étape 7 : Temps actif
        try:
            temps_actif = int((coucher_time - reveil_time).total_seconds())
            logger.debug(f"Temps actif (en secondes) : {temps_actif}")
        except Exception as e:
            logger.error(f"Erreur lors du calcul du temps actif : {e}")
            raise

        # Résultat final
        result = {
            "temps_deblocage": deblocage if deblocage is not None else "non atteint",
            "fluctuations": fluctuations,
            "duree_on": durations_in_seconds[1],
            "duree_off": durations_in_seconds[0],
            "duree_surdose": durations_in_seconds[2],
            "moyenne_duree_on": moyenne_on,
            "temps_actif": temps_actif
        }
        logger.debug(f"Résultat final : {result}")

        return result

