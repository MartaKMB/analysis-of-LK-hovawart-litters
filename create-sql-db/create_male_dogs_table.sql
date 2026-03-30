CREATE TABLE male_dogs (
id serial,
name varchar(25),
breeding_nickname varchar(50),
color varchar(25)
);

DROP TABLE male_dogs;

CREATE TABLE male_dogs (
name varchar(25),
breeding_nickname varchar(50),
color varchar(25)
);

COPY male_dogs
FROM '...create-sql-db/male-dogs-lk.csv'
WITH (FORMAT CSV, HEADER);

SELECT * FROM male_dogs LIMIT 5;

ALTER TABLE male_dogs ADD PRIMARY KEY (id);

ALTER TABLE male_dogs
ADD COLUMN id SERIAL;

ALTER TABLE male_dogs
ADD PRIMARY KEY (id);

SELECT * FROM male_dogs;
