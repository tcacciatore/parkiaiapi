import os

class Config:
    DEBUG = False
    TESTING = False
    DATABASE_URL = os.getenv("DATABASE_URL", "postgresql://thomas:@localhost:5432/parkiai")

class DevelopmentConfig(Config):
    DEBUG = True

class TestingConfig(Config):
    TESTING = True
    DATABASE_URL = "sqlite:///:memory:"  # Base de données en mémoire pour les tests

class ProductionConfig(Config):
    DATABASE_URL = os.getenv("DATABASE_URL")  # Utilise la variable d'environnement sur Render