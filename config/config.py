import os

class Config:
    DEBUG = False
    TESTING = False
    DATABASE_URI = os.getenv("DATABASE_URI", "postgresql://thomas:@localhost:5432/parkiai")

class DevelopmentConfig(Config):
    DEBUG = True

class TestingConfig(Config):
    TESTING = True
    DATABASE_URI = "sqlite:///:memory:"

class ProductionConfig(Config):
    DATABASE_URI = os.getenv("DATABASE_URI", "postgresql://thomas:@localhost:5432/parkiai")