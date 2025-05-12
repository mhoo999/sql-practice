CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    age INTEGER
);

INSERT INTO users (name, age) VALUES
('Alice', 25),
('Bob', 30),
('Charlie', 22); 