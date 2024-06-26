CREATE TABLE celeb
(
    ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NAME varchar(32) NOT NULL DEFAULT '',
    BIRTHDAY date,
    AGE int,
    SEX char(1),
    JOB_TITLE varchar(32),
    AGENCY varchar(32)
);

INSERT INTO celeb VALUES (1, '아이유', '1993-05-16', 29, 'F', '가수, 텔런트', 'EDAM엔터테이먼트');
INSERT INTO celeb VALUES (2, '이미주', '1994-09-23', 28, 'F', '가수', '울림엔터테이먼트');
INSERT INTO celeb VALUES (3, '송강', '1994-04-23', 28, 'M', '텔런트', '나무엑터스');
INSERT INTO celeb VALUES (4, '강동원', '1981-01-18', 41, 'M', '영화배우, 텔런트', 'YG엔터테이먼트');
INSERT INTO celeb VALUES (5, '유재석', '1972-08-14', 50, 'M', 'MC, 개그맨', '안테나');
INSERT INTO celeb VALUES (6, '차승원', '1970-06-07', 48, 'M', '영화배우, 모델', 'YG엔터테이먼트');
INSERT INTO celeb VALUES (7, '이수현', '1999-05-04', 23, 'F', '가수', 'YG엔터테이먼트');
