CREATE TABLE snl_show
(
ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
SEASON int NOT NULL,
EPISODE int NOT NULL,
BROADCAST_DATE date,
HOST varchar(32) NOT NULL
);

INSERT INTO snl_show VALUES (1, 8, 7, '2020-09-05', '강동원');
INSERT INTO snl_show VALUES (2, 8, 8, '2020-09-12', '유재석');
INSERT INTO snl_show VALUES (3, 8, 9, '2020-09-19', '차승원');
INSERT INTO snl_show VALUES (4, 8, 10, '2020-09-26', '이수현');
INSERT INTO snl_show VALUES (5, 9, 1, '2021-09-04', '이병헌');
INSERT INTO snl_show VALUES (6, 9, 2, '2021-09-11', '하지원');
INSERT INTO snl_show VALUES (7, 9, 3, '2021-09-18', '제시');
INSERT INTO snl_show VALUES (8, 9, 4, '2021-09-25', '조정석');
INSERT INTO snl_show VALUES (9, 9, 5, '2021-10-02', '조여정');
INSERT INTO snl_show VALUES (10, 9, 6, '2021-10-09', '옥주현');