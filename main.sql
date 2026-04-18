DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE posts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    title TEXT
);

INSERT INTO users (name)
VALUES ('Ali'), ('Vali'), ('Sami');

INSERT INTO posts (user_id, title)
VALUES (1,'A1');

SELECT users.name
FROM users
LEFT JOIN posts ON users.id = posts.user_id
WHERE posts.id IS NULL;
