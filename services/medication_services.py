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