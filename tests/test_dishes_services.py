import unittest
from unittest.mock import patch, MagicMock
from services.dishes_services import get_all_dishes, get_dish_by_id, get_recommended_dishes
from datetime import datetime, timedelta

class TestDishesServices(unittest.TestCase):

    @patch('services.dishes_services.get_db_connection')
    def test_get_all_dishes(self, mock_get_db_connection):
        # Mock de la connexion et du curseur
        mock_conn = MagicMock()
        mock_cursor = MagicMock()
        mock_get_db_connection.return_value = mock_conn
        mock_conn.cursor.return_value = mock_cursor

        # Données simulées
        mock_cursor.fetchall.return_value = [
            (1, 'Dish 1', 'A', 'low', 'high', 'medium', 'low', 'main', datetime.now()),
            (2, 'Dish 2', 'B', 'medium', 'low', 'high', 'medium', 'dessert', datetime.now())
        ]
        mock_cursor.description = [
            ('id',), ('name',), ('score',), ('fat_level',), ('fiber_level',), ('protein_level',), ('sodium_level',), ('category',), ('created_at',)
        ]

        # Appel de la fonction
        filters = {'score': 'A'}
        result = get_all_dishes(filters)

        # Assertions
        self.assertEqual(len(result), 2)
        self.assertEqual(result[0]['name'], 'Dish 1')
        self.assertEqual(result[1]['category'], 'dessert')
        mock_cursor.execute.assert_called_once_with("SELECT * FROM dishes WHERE score = %s", ('A',))

    @patch('services.dishes_services.get_db_connection')
    def test_get_dish_by_id(self, mock_get_db_connection):
        # Mock de la connexion et du curseur
        mock_conn = MagicMock()
        mock_cursor = MagicMock()
        mock_get_db_connection.return_value = mock_conn
        mock_conn.cursor.return_value = mock_cursor

        # Données simulées
        mock_cursor.fetchone.return_value = (1, 'Dish 1', 'A', 'low', 'high', 'medium', 'low', 'main', datetime.now())
        mock_cursor.description = [
            ('id',), ('name',), ('score',), ('fat_level',), ('fiber_level',), ('protein_level',), ('sodium_level',), ('category',), ('created_at',)
        ]

        # Appel de la fonction
        dish_id = 1
        result = get_dish_by_id(dish_id)

        # Assertions
        self.assertIsNotNone(result)
        self.assertEqual(result['id'], 1)
        self.assertEqual(result['name'], 'Dish 1')
        mock_cursor.execute.assert_called_once_with("SELECT * FROM dishes WHERE id = %s", (dish_id,))

    @patch('services.dishes_services.psycopg2.connect')
    def test_get_recommended_dishes(self, mock_connect):
        # Mock de la connexion et du curseur
        mock_conn = MagicMock()
        mock_cursor = MagicMock()
        mock_connect.return_value = mock_conn
        mock_conn.cursor.return_value = mock_cursor

        # Données simulées
        mock_cursor.fetchall.return_value = [
            {'id': 1, 'name': 'Dish 1', 'score': 'A', 'category': 'main', 'created_at': datetime.now()},
            {'id': 2, 'name': 'Dish 2', 'score': 'B', 'category': 'dessert', 'created_at': datetime.now()}
        ]

        # Appel de la fonction
        filters = {'score': 'A,B'}
        days = 7
        result = get_recommended_dishes(filters, days)

        # Assertions
        self.assertEqual(len(result), 2)
        self.assertEqual(result[0]['name'], 'Dish 1')
        self.assertEqual(result[1]['score'], 'B')
        mock_cursor.execute.assert_called_once()
        query = mock_cursor.execute.call_args[0][0]
        self.assertIn("WHERE created_at >=", query)

class TestGetRecommendedDishes(unittest.TestCase):

    @patch('services.dishes_services.get_db_connection')
    def test_get_recommended_dishes(self, mock_get_db_connection):
        # Mock de la connexion et du curseur
        mock_conn = MagicMock()
        mock_cursor = MagicMock()
        mock_get_db_connection.return_value = mock_conn
        mock_conn.cursor.return_value = mock_cursor

        # Données simulées pour les catégories
        mock_cursor.fetchone.side_effect = [
            # Jour 1
            {"id": 1, "name": "Salade César", "score": "A", "category": "entrée"},
            {"id": 2, "name": "Saumon grillé", "score": "A", "category": "plat"},
            {"id": 3, "name": "Tarte aux pommes", "score": "B", "category": "dessert"},
            # Jour 2
            {"id": 4, "name": "Soupe de légumes", "score": "A", "category": "entrée"},
            {"id": 5, "name": "Poulet rôti", "score": "A", "category": "plat"},
            {"id": 6, "name": "Mousse au chocolat", "score": "B", "category": "dessert"},
        ]

        # Appel de la méthode
        filters = {"score": "A,B"}
        days = 2
        recommendations = get_recommended_dishes(filters, days)

        # Assertions
        self.assertEqual(len(recommendations), 2)  # Deux jours de recommandations

        # Vérifier les recommandations pour le jour 1
        self.assertEqual(recommendations[0]["day"], 1)
        self.assertEqual(recommendations[0]["entrée"]["id"], 1)
        self.assertEqual(recommendations[0]["plat"]["id"], 2)
        self.assertEqual(recommendations[0]["dessert"]["id"], 3)

        # Vérifier les recommandations pour le jour 2
        self.assertEqual(recommendations[1]["day"], 2)
        self.assertEqual(recommendations[1]["entrée"]["id"], 4)
        self.assertEqual(recommendations[1]["plat"]["id"], 5)
        self.assertEqual(recommendations[1]["dessert"]["id"], 6)

        # Vérifier que les plats ne sont pas recommandés deux fois
        used_ids = {dish["id"] for day in recommendations for dish in day.values() if isinstance(dish, dict)}
        self.assertEqual(len(used_ids), 6)  # Chaque plat est unique

        # Vérifier que les requêtes SQL ont été exécutées
        self.assertEqual(mock_cursor.execute.call_count, 6)  # 3 catégories * 2 jours

if __name__ == '__main__':
    unittest.main()