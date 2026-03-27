CREATE DATABASE hovawart_litters_lk;

CREATE TABLE female_dogs (
id bigserial,
name varchar(25),
breeding_nickname varchar(50),
birth_date date,
color varchar(25)
)

COPY female_dogs
FROM '/Users/martamucha-balcerek/Desktop/analityk danych/hovawart-lk-analysis/hovawart-litters-lk.csv'
WITH (FORMAT CSV, HEADER);

DROP TABLE female_dogs;

CREATE TABLE female_dogs (
name varchar(25),
breeding_nickname varchar(50),
birth_date date,
color varchar(25)
)

COPY female_dogs
FROM '.../hovawart-lk-analysis/female-dogs-lk.csv'
WITH (FORMAT CSV, HEADER);

ALTER TABLE female_dogs
ADD COLUMN id SERIAL;

ALTER TABLE female_dogs
ADD PRIMARY KEY (id);

SELECT * FROM female_dogs;
