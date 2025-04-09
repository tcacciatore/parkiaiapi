from datetime import datetime, timedelta

class MedicationService:

    @staticmethod
    def calculate_days_left(medications):
        """
        Calcule le nombre de jours restants pour chaque médicament en fonction du stock actuel.
        """
        alerts = []

        for medication in medications:
            name = medication.get('name')
            dose_per_day = medication.get('dose_per_day', 0)
            total_in_stock = medication.get('total_in_stock', 0)

            if not name or dose_per_day <= 0 or total_in_stock <= 0:
                alerts.append({
                    "medication": name or "Inconnu",
                    "message": "Données invalides pour ce médicament."
                })
                continue

            # Calculer les jours restants
            days_left = total_in_stock // dose_per_day
            alerts.append({
                "medication": name,
                "days_left": days_left,
                "message": f"Stock suffisant pour {days_left} jours."
            })

        return {"alerts": alerts}

    @staticmethod
    def calculate_required_doses(medications, days):
        """
        Calcule le nombre de doses nécessaires pour chaque médicament en fonction d'une durée donnée.
        """
        required_doses = []

        for medication in medications:
            name = medication.get('name')
            dose_per_day = medication.get('dose_per_day', 0)

            if not name or dose_per_day <= 0:
                required_doses.append({
                    "medication": name or "Inconnu",
                    "message": "Données invalides pour ce médicament."
                })
                continue

            # Calculer le nombre de doses nécessaires
            total_doses = dose_per_day * days
            required_doses.append({
                "medication": name,
                "required_doses": total_doses
            })

        return {"required_doses": required_doses, "duration": days}