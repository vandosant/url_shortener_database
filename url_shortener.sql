CREATE DATABASE url_shortener;

CREATE TABLE urls (id SERIAL PRIMARY KEY, original_url character varying(255) NOT NULL, count integer DEFAULT 0);

INSERT into urls (original_url, count) VALUES ('http://www.planetbluegrass.com', 5);
INSERT into urls (original_url, count) VALUES ('http://www.google.com', 99);
INSERT into urls (original_url, count) VALUES ('http://www.rtd.com', 10);
INSERT into urls (original_url, count) VALUES ('http://www.cnn.com', 80);
INSERT into urls (original_url, count) VALUES ('http://www.netflix.com', 41);

SELECT * from urls;
SELECT original_url from urls;
SELECT * from urls where id = 3;
SELECT * from urls where original_url = 'http://www.cnn.com';
UPDATE urls set count = 55 where id = 3;
DELETE from urls where original_url = 'http://www.cnn.com';
