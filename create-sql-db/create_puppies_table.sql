CREATE TABLE puppies (
    litter_id INT REFERENCES litters(id),
	color varchar(25),
	gender CHAR(1) CHECK (gender IN ('M','F')),
	birth_weight int,
	weight_1_week int,
	weight_2_week int,
	weight_3_week int,
	weight_4_week int,
	weight_5_week int,
	weight_6_week int,
	weight_7_week int,
	weight_8_week int
);

COPY puppies
FROM '/Users/martamucha-balcerek/Desktop/analityk danych/hovawart-lk-analysis/csv/puppies.csv'
WITH (FORMAT csv, HEADER, DELIMITER ';');

ALTER TABLE puppies
ADD COLUMN id SERIAL;

ALTER TABLE puppies
ADD PRIMARY KEY (id);

SELECT * FROM puppies;