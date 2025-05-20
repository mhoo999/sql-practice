CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    age INTEGER
);

CREATE TABLE orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    product TEXT,
    amount INTEGER,
    FOREIGN KEY(user_id) REFERENCES users(id)
);

INSERT INTO users (name, age) VALUES
('Alice', 25),
('Bob', 30),
('Charlie', 22),
('Diana', 28),
('Eve', 35),
('Frank', 40);

INSERT INTO orders (user_id, product, amount) VALUES
(1, 'Book', 2),
(2, 'Pen', 5),
(1, 'Notebook', 1),
(3, 'Pencil', 3),
(5, 'Eraser', 0),
(5, 'Ruler', 4),
(5, 'Pen', 2); 