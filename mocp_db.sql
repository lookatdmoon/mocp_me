DROP DATABASE IF EXISTS mocp_db;
CREATE DATABASE mocp_db;

USE mocp_db;

DROP TABLE IF EXISTS artists;

CREATE TABLE artists  (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  path VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS photos;

CREATE TABLE photos  (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  path VARCHAR(255) NOT NULL,
  artist_id INT,
  PRIMARY KEY (id)
);


/* 

SELECT * FROM mocp_db.artists;

SELECT * FROM mocp_db.photos;