import unittest
from app import create_app

class TestDishes(unittest.TestCase):
    def setUp(self):
        self.app = create_app()
        self.client = self.app.test_client()

    def test_list_dishes(self):
        response = self.client.get('/dishes')
        self.assertEqual(response.status_code, 200)

    def test_get_dish(self):
        response = self.client.get('/dishes/1')
        self.assertIn('name', response.json)