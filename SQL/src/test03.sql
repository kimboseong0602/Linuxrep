CREATE TABLE sql_file
(
    id int,
    filename varchar(16)
);

INSERT INTO sql_file VALUES(1, "test01.sql");
INSERT INTO sql_file VALUES(1, "test02.sql");
INSERT INTO sql_file VALUES(1, "test03.sql");
INSERT INTO sql_file VALUES(1, "test04.sql");

select * from sql_file;