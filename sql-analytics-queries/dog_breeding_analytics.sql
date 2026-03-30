/* analytics queries */
SELECT
	AVG(birth_weight) AS avg_birth_weight
FROM puppies;

SELECT
	gender,
    COUNT(*) AS count
FROM puppies
GROUP BY gender;

SELECT *
FROM puppies
ORDER BY birth_weight DESC
LIMIT 1;

SELECT
    id,
    birth_weight,
    weight_8_week,
    (weight_8_week - birth_weight) AS total_gain
FROM puppies
WHERE weight_8_week IS NOT NULL;

SELECT
    AVG(birth_weight) AS week0,
    AVG(weight_1_week) AS week1,
    AVG(weight_2_week) AS week2,
    AVG(weight_3_week) AS week3,
    AVG(weight_4_week) AS week4,
    AVG(weight_5_week) AS week5,
    AVG(weight_6_week) AS week6,
    AVG(weight_7_week) AS week7,
    AVG(weight_8_week) AS week8
FROM puppies;

SELECT
    l.litter_code,
    l.birth_date,
    m.breeding_nickname AS father,
    f.breeding_nickname AS mother
FROM litters l
JOIN male_dogs m ON l.father = m.id
JOIN female_dogs f ON l.mother = f.id;

SELECT
    l.litter_code,
    COUNT(p.id) AS puppies_count
FROM litters l
LEFT JOIN puppies p ON p.litter_id = l.id
GROUP BY l.litter_code;
/* and check */
SELECT
    l.id,
    l.litter_code,
    l.num_of_puppies,
    COUNT(p.id) AS actual_puppies,
    (l.num_of_puppies = COUNT(p.id)) AS is_correct
FROM litters l
LEFT JOIN puppies p ON p.litter_id = l.id
GROUP BY l.id, l.litter_code, l.num_of_puppies;

SELECT
    l.litter_code,
    COUNT(p.id) AS puppies_count
FROM litters l
JOIN puppies p ON p.litter_id = l.id
GROUP BY l.litter_code
ORDER BY puppies_count DESC;

SELECT
    l.litter_code,
    AVG(p.weight_8_week - p.birth_weight) AS avg_gain
FROM litters l
JOIN puppies p ON p.litter_id = l.id
WHERE p.weight_8_week IS NOT NULL
GROUP BY l.litter_code
ORDER BY avg_gain DESC;

SELECT
    f.name,
    COUNT(l.id) AS litter_count
FROM female_dogs f
JOIN litters l ON l.mother = f.id
GROUP BY f.name
ORDER BY litter_count DESC;


