
-- Supprimer la table si elle existe
DROP TABLE IF EXISTS dishes;

-- Recréer la table "dishes"
CREATE TABLE dishes (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    score CHAR(1) CHECK (score IN ('A','B','C','D','E','F')),
    fiber TEXT,
    protein TEXT,
    fat TEXT,
    sodium TEXT,
    explanation TEXT,
    suggestion TEXT,
    created_at TIMESTAMP DEFAULT NOW()
);
