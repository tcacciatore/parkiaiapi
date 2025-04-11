
DROP TABLE IF EXISTS dishes;

CREATE TABLE dishes (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    score CHAR(1) CHECK (score IN ('A', 'B', 'C', 'D', 'E', 'F')),
    fiber TEXT,
    protein TEXT,
    fat TEXT,
    sodium TEXT,
    category TEXT,
    created_at TIMESTAMP NOT NULL
);
