CREATE TABLE litters (
    litter_code VARCHAR(5),
    birth_date DATE,
    mother INT REFERENCES female_dogs(id),
    father INT REFERENCES male_dogs(id),
    num_of_puppies INT
);

COPY litters
FROM '/Users/martamucha-balcerek/Desktop/analityk danych/hovawart-lk-analysis/csv/litters-lk.csv'
WITH (FORMAT CSV, HEADER);

SELECT * FROM litters;

ALTER TABLE litters
ADD COLUMN id SERIAL;

ALTER TABLE litters
ADD PRIMARY KEY (id);