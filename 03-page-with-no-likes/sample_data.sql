DROP TABLE IF EXISTS pages;
CREATE TABLE pages (
    page_id INTEGER,
    page_name VARCHAR(100)
);

INSERT INTO pages VALUES
(20001, 'SQL Solutions'),
(20045, 'Brain Exercises'),
(20701, 'Tips for Data Analysts'),
(31111, 'Postgres Crash Course'),
(32728, 'Break the thread');

DROP TABLE IF EXISTS page_likes;
CREATE TABLE page_likes (
    user_id INTEGER,
    page_id INTEGER,
    liked_date TIMESTAMP
);

INSERT INTO page_likes VALUES
(111, 20001, '2022-04-08 00:00:00'),
(121, 20045, '2022-03-12 00:00:00'),
(156, 20001, '2022-07-25 00:00:00'),
(255, 20045, '2022-07-19 00:00:00'),
(125, 20001, '2022-07-19 00:00:00'),
(144, 31111, '2022-06-21 00:00:00'),
(125, 31111, '2022-07-04 00:00:00');
