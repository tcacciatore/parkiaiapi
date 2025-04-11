import psycopg2
from config.config import Config
import os

def get_db_connection():
    return psycopg2.connect(os.environ["DATABASE_URL"])