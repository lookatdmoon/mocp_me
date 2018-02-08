DROP DATABASE IF EXISTS mocp_db;
CREATE DATABASE mocp_db;

USE mocp_db;

DROP TABLE IF EXISTS artists;

CREATE TABLE Artists  (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  path VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS photos;

CREATE TABLE Photos  (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  path VARCHAR(300) NOT NULL,
  web_path VARCHAR(300) NOT NULL,
  artist_id INT,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS tags;

CREATE TABLE Tags  (
  id INT NOT NULL AUTO_INCREMENT,
  tag_name VARCHAR(100) NOT NULL,
  photo_id INT,
  FOREIGN KEY (photo_id) REFERENCES photos(id),
  PRIMARY KEY (id)
);


/* 

SELECT * FROM mocp_db.artists;

SELECT * FROM mocp_db.photos;