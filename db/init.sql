CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    age INTEGER
);

CREATE TABLE products (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    price INTEGER
);

CREATE TABLE orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    product_id INTEGER,
    amount INTEGER,
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(product_id) REFERENCES products(id)
);

INSERT INTO users (name, age) VALUES
('Alice', 25),
('Bob', 30),
('Charlie', 22),
('Diana', 28),
('Eve', 35),
('Frank', 40);

INSERT INTO products (name, price) VALUES
('Book', 12000),
('Pen', 1000),
('Notebook', 3000),
('Pencil', 500),
('Eraser', 700),
('Ruler', 1500);

INSERT INTO orders (user_id, product_id, amount) VALUES
(1, 1, 2),   -- Alice, Book 2개
(2, 2, 5),   -- Bob, Pen 5개
(1, 3, 1),   -- Alice, Notebook 1개
(3, 4, 3),   -- Charlie, Pencil 3개
(5, 5, 0),   -- Eve, Eraser 0개
(5, 6, 4),   -- Eve, Ruler 4개
(5, 2, 2);   -- Eve, Pen 2개 