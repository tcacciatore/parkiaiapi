import unittest
from app import create_app
from unittest.mock import patch

class TestSongsAPI(unittest.TestCase):
    def setUp(self):
        self.app = create_app()
        self.client = self.app.test_client()

    @patch('services.songs_services.SongsService.get_all_songs')
    def test_list_songs(self, mock_get_all_songs):
        mock_get_all_songs.return_value = [
            {"id": 1, "title": "Shut Up and Dance", "artist": "The Killers", "bpm": 157, "style": "dance"}
        ]

        response = self.client.get('/songs/')
        self.assertEqual(response.status_code, 200)
        self.assertIn("title", response.json[0])

    @patch('services.songs_services.SongsService.get_all_songs')
    def test_list_songs_with_filters(self, mock_get_all_songs):
        mock_get_all_songs.return_value = [
            {"id": 1, "title": "Shut Up and Dance", "artist": "The Killers", "bpm": 157, "style": "dance"}
        ]

        response = self.client.get('/songs/?style=dance')
        self.assertEqual(response.status_code, 200)
        self.assertIn("style", response.json[0])
        self.assertEqual(response.json[0]["style"], "dance")

if __name__ == "__main__":
    unittest.main()