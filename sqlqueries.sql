CREATE SCHEMA ru-worth DEFAULT CHARACTER SET utf8;

CREATE TABLE user (
username VARCHAR(45) NOT NULL,
name VARCHAR(45) NOT NULL,
email VARCHAR(45) NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY(username)
);


CREATE TABLE course (
courseid VARCHAR(10) NOT NULL,
professor VARCHAR(50),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY(courseid)
);

CREATE TABLE textbook (
ISBN INT(10) NOT NULL,
author VARCHAR(100),
title VARCHAR(250),
picture_url VARCHAR(1000),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY(ISBN)
);

CREATE TABLE reviews (
reviewid INT AUTO_INCREMENT,
ISBN INT(10),
username VARCHAR(45),
effectrating INT(2),
recommend TINYINT(1),
description VARCHAR(250),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (ISBN) REFERENCES textbook(ISBN),
FOREIGN KEY (username) REFERENCES user(username),
PRIMARY KEY(reviewid)
);