CREATE TABLE books (
 id INT PRIMARY KEY,
 title VARCHAR(100),
 author VARCHAR(100)
);


CREATE TABLE members (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);


CREATE TABLE loans (
    member_id INT REFERENCES members(id),
    book_id INT REFERENCES books(id)
);




INSERT INTO books (id, title, author)
VALUES
(1, 'The Alchemist', 'Paulo Coelho'),
(2, 'Wings of Fire', 'A.P.J. Abdul Kalam'),
(3, 'Atomic Habits', 'James Clear'),
(4, 'Rich Dad Poor Dad', 'Robert Kiyosaki');

INSERT INTO members (id, name)
VALUES
(1, 'Dilip'),
(2, 'Rahul'),
(3, 'Amit');


INSERT INTO loans (member_id, book_id)
VALUES
(1, 2),
(2, 1),
(1, 3);

SELECT * FROM books;

SELECT * FROM members;

SELECT * FROM loans;