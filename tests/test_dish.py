import unittest
from models.dish import Dish
from datetime import datetime

class TestDish(unittest.TestCase):
    def test_dish_to_dict(self):
        dish = Dish(
            id=1,
            name="Salade César",
            score="A",
            fat_level="faible",
            fiber_level="modéré",
            protein_level="riche",
            sodium_level="faible",
            category="entrée",
            created_at=datetime(2025, 4, 15, 12, 0, 0)
        )
        expected_dict = {
            "id": 1,
            "name": "Salade César",
            "score": "A",
            "fat_level": "faible",
            "fiber_level": "modéré",
            "protein_level": "riche",
            "sodium_level": "faible",
            "category": "entrée",
            "created_at": datetime(2025, 4, 15, 12, 0, 0)
        }
        self.assertEqual(dish.to_dict(), expected_dict)

if __name__ == '__main__':
    unittest.main()