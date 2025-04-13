import os
import plotly.graph_objects as go
from datetime import datetime

class GrapheStateServices:
    @staticmethod
    def generate_graph_from_etats(etats_data, output_dir="graphs", filename="graph.html"):
        """
        Génère un graphique à partir des données d'états et l'enregistre dans un fichier HTML.

        :param etats_data: Liste de dictionnaires contenant les données d'états (date et état).
        :param output_dir: Répertoire où le fichier sera enregistré.
        :param filename: Nom du fichier de sortie.
        :return: Chemin complet du fichier généré.
        """
        # Créer le répertoire de sortie s'il n'existe pas
        if not os.path.exists(output_dir):
            os.makedirs(output_dir)

        # Convertir les dates en objets datetime
        dates = [datetime.strptime(item["date"], "%d/%m/%Y %H:%M:%S") for item in etats_data]
        etats = [item["etat"] for item in etats_data]

        # Créer le graphique avec Plotly
        fig = go.Figure()
        fig.add_trace(go.Scatter(x=dates, y=etats, mode='lines+markers', name='État'))
        fig.update_layout(
            title="Répartition des états ON / OFF / SURDOSE",
            xaxis_title="Temps",
            yaxis_title="État",
            yaxis=dict(
                tickmode='array',
                tickvals=[0, 1, 2],
                ticktext=['OFF', 'ON', 'SURDOSE']
            ),
            xaxis=dict(
                type='date',  # Assure une échelle temporelle proportionnelle
                tickformat='%H:%M:%S',  # Affiche uniquement l'heure pour plus de clarté
                showgrid=True,  # Affiche une grille pour mieux visualiser les intervalles
                tickangle=45,  # Incline les étiquettes pour éviter le chevauchement
                rangemode='normal',  # Assure que l'échelle est ajustée aux données
                ticklabelmode="period",  # Améliore la lisibilité des étiquettes
                automargin=True  # Ajoute des marges automatiques pour éviter le chevauchement
            ),
            template="plotly_white"
        )

        # Enregistrer le graphique dans un fichier HTML
        file_path = os.path.join(output_dir, filename)
        fig.write_html(file_path)

        return file_path