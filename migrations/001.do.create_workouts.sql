CREATE TABLE IF NOT EXISTS body (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    body_part TEXT NOT NULL,
    date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS workout (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    exercise TEXT NOT NULL,
    sets INTEGER NOT NULL,
    reps INTEGER NOT NULL,
    weight INTEGER NOT NULL,
    body_part_id INTEGER REFERENCES body(id) NOT NULL
);