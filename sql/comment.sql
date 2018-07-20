-- Setting the collation of the database to utf8
ALTER DATABASE jlambert13 CHARACTER SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE IF EXISTS comment;

CREATE TABLE comment (
	commentId BINARY(16) NOT NULL,
	commentDateTime DATETIME(6) NOT NULL,
	commentText VARCHAR(128) NOT NULL,
	PRIMARY KEY (commentId)
);

INSERT INTO comment comment(commentId, commentDateTime, commentText) VALUES(UNHEX("1c6ac99a469e0fd82697da254a41ce23"), "2018-07-20  08:40:25.111", "Dude where's my car??? It was parked literally right here!");

INSERT INTO comment comment(commentId, commentDateTime, commentText) VALUES(UNHEX("d6cf57bdefcc4a728d14e9052a30011f"), "2018-07-20  08:40:25.111", "No, really, dude. Where's. My. CAR!!!");