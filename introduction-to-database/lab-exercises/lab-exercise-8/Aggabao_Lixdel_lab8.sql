-- Lixdel Louisse L. Aggabao
-- 041081985

use flightdb;

-- Question 1
SELECT 
    COUNT(*)
FROM
    airlines;

-- Question 2
SELECT 
    AVG(elevation)
FROM
    airports;

-- Question 3
SELECT 
    MAX(elevation), MIN(elevation)
FROM
    airports;

-- Question 4
SELECT 
    country_id, AVG(elevation)
FROM
    airports
GROUP BY country_id;

-- Question 5
SELECT 
    country_id, AVG(elevation)
FROM
    airports
GROUP BY country_id
ORDER BY country_id;

-- Question 6
SELECT 
    country_id, AVG(elevation)
FROM
    airports
GROUP BY country_id
ORDER BY AVG(elevation) DESC;

-- Question 7
SELECT 
    country_id, AVG(elevation)
FROM
    airports
GROUP BY country_id
HAVING AVG(elevation) >= 300
ORDER BY AVG(elevation) DESC;

-- Question 8
SELECT 
    COUNT(*)
FROM
    aircrafts
WHERE
    name = 'Boeing'
        AND description LIKE '74%';

-- Question 9
SELECT 
    name, COUNT(DISTINCT wake_size)
FROM
    aircrafts
WHERE
    name IN ('Boeing', 'Airbus')
GROUP BY name;

-- Question 10
SELECT 
    COUNT(*)
FROM
    airlines
WHERE
    active = 'Y'
        AND country_id IN (SELECT 
            id
        FROM
            countries
        WHERE
            name = 'Canada');