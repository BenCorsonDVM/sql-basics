-- 1
CREATE TABLE person(
    id SERIAL PRIMARY KEY,
    name VARCHAR(20),
    age INTEGER,
    height INTEGER,
    city VARCHAR(20),
    favorite_color VARCHAR(20),
);
-- 2 
INSERT INTO person(name, age, height, city, favorite_color)
    VALUES ('Ben', 26, 74, 'Dallas', 'Blue'),
    ('Scott', 37, 72, 'Chicago', 'Blue'),
    ('Rachel', 28, 60, 'Dallas', 'Orange'),
    ('Chris', 39, 70, 'Austin', 'Green'),
    ('Clarissa', 60, 60, 'Fort Worth', 'Yellow');
;
-- 3
SELECT * FROM person
ORDER BY height DESC;
-- 4
SELECT * FROM person
ORDER BY height;
-- 5
SELECT * FROM person
ORDER BY age DESC;
-- 6
SELECT * FROM person
WHERE age > 20;
-- 7
SELECT * FROM person
WHERE age = 18;
-- 8
SELECT * FROM person
WHERE age < 20 OR age > 30;
-- 9
SELECT * FROM person
WHERE age != 27;
-- 10
SELECT * FROM person
WHERE favorite_color != 'Red';
-- 11
SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';
-- 12
SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';
-- 13
SELECT * FROM person
WHERE favorite_color
IN('Orange', 'Green');
-- 14
SELECT * FROM person
WHERE favorite_color
IN('Yellow', 'Purple');