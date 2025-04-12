
DROP TABLE IF EXISTS songs;

CREATE TABLE songs (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    artist TEXT NOT NULL,
    bpm INTEGER NOT NULL,
    style TEXT,
    note TEXT,
    created_at TIMESTAMP NOT NULL
);
