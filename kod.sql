CREATE TABLE IF NOT EXISTS Books(Author_ID integer, ID integer primary key, Title text, Publication_date date, Genre text);
INSERT INTO Books(Author_ID, ID, Title, Publication_date, Genre) VALUES (1, 1, 'Skazanie', '2022-03-23', 'Kryminal');
INSERT INTO Books(Author_ID, ID, Title, Publication_date, Genre) VALUES (1, 2, 'Projekt Riese', '2022-01-26', 'Kryminal');
INSERT INTO Books(Author_ID, ID, Title, Publication_date, Genre) VALUES (2, 3, 'Ostatnia misja Gwendy', '2022-05-18', 'Horror');
INSERT INTO Books(Author_ID, ID, Title, Publication_date, Genre) VALUES (2, 4, 'Oczy smoka', '2022-05-06', 'Fantasy');
INSERT INTO Books(Author_ID, ID, Title, Publication_date, Genre) VALUES (3, 5, 'Ksiegi Jakubowe', '2021-02-10', 'Piekna');
INSERT INTO Books(Author_ID, ID, Title, Publication_date, Genre) VALUES (3, 6, 'Czuly narrator', '2020-11-12', 'Piekna');
INSERT INTO Books(Author_ID, ID, Title, Publication_date, Genre) VALUES (4, 7, 'Mow mi Win', '2021-11-10', 'Thriller');
INSERT INTO Books(Author_ID, ID, Title, Publication_date, Genre) VALUES (4, 8, 'Zostan przy mnie', '2021-12-08', 'Thriller');
INSERT INTO Books(Author_ID, ID, Title, Publication_date, Genre) VALUES (5, 9, 'Silmarillion', '2017-09-25', 'Fantasy');
INSERT INTO Books(Author_ID, ID, Title, Publication_date, Genre) VALUES (5, 10, 'Hobbit', '2014-11-07', 'Fantasy');

CREATE TABLE IF NOT EXISTS Authors(ID integer primary key, First_name text, Last_name text, date_of_birth date);
INSERT INTO Authors(ID, First_name, Last_name, date_of_birth) VALUES (1, 'Remigiusz', 'Mroz', '1987-01-15');
INSERT INTO Authors(ID, First_name, Last_name, date_of_birth) VALUES (2, 'Stephen', 'King', '1947-09-21');
INSERT INTO Authors(ID, First_name, Last_name, date_of_birth) VALUES (3, 'Olga', 'Tokarczuk', '1962-01-29');
INSERT INTO Authors(ID, First_name, Last_name, date_of_birth) VALUES (4, 'Harlan', 'Coben', '1962-01-04');
INSERT INTO Authors(ID, First_name, Last_name, date_of_birth) VALUES (5, 'John Ronald Reuel', 'Tolkien', '1892-01-03');

SELECT * FROM Books ORDER BY Title ASC;
SELECT * FROM Books WHERE Genre = 'Horror';
SELECT * FROM Books WHERE Publication_date BETWEEN '2020-01-01' AND '2022-01-01';
SELECT * FROM Authors WHERE Last_name LIKE 'M%';
SELECT * FROM Books WHERE Publication_date = '2022-03-23' AND Genre = 'Kryminal';
SELECT * FROM Books WHERE Publication_date = '2022-03-23' OR Genre = 'Fantasy';
SELECT * FROM Authors WHERE NOT date_of_birth = '1892-01-03';
SELECT DISTINCT Genre FROM Books;
SELECT * FROM Authors WHERE date_of_birth IN ('1947-09-21', '1987-01-15');
SELECT * FROM Authors WHERE First_name IS NULL;
SELECT * FROM Authors WHERE Last_name IS NOT NULL;
SELECT * FROM Books WHERE Genre = 'Fantasy' LIMIT 2;
SELECT * FROM Books JOIN Authors ON Books.Author_ID = Authors.ID;
SELECT Title FROM Books UNION ALL SELECT Last_name FROM Authors;
CREATE TABLE Books_copy AS SELECT * FROM Books;
UPDATE Books_copy SET Genre = 'Literatura piekna' WHERE ID = 5;
DELETE FROM Authors WHERE date_of_birth = '1892-01-03';
SELECT First_name, Last_name FROM Authors WHERE date_of_birth = '1892-01-03';
