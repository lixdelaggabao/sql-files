-- Lixdel Louisse L. Aggabao
-- 041081985

use flightdb;

-- Question 1
SELECT 
    *
FROM
    aircrafts;

-- Question 2
SELECT 
    name, description
FROM
    aircrafts;

-- Question 3
SELECT DISTINCT
    name
FROM
    aircrafts;

-- Question 4
SELECT 
    name AS 'Airport name', city
FROM
    airports;

-- Question 5
SELECT 
    name, city, elevation
FROM
    airports
WHERE
    country_id = 24;

-- Question 6
SELECT 
    name
FROM
    countries
WHERE
    id = 24;

-- Question 7
SELECT 
    name
FROM
    airports
WHERE
    elevation BETWEEN 400 AND 500;

-- Question 8
SELECT 
    name
FROM
    airlines
WHERE
    name LIKE 'Air%';

-- Question 9
SELECT 
    name
FROM
    airlines
WHERE
    name LIKE '%International%';

-- Question 10
SELECT 
    name
FROM
    airlines
WHERE
    name LIKE '%Aviation';

-- Question 11
SELECT 
    name
FROM
    airports
WHERE
    country_id IN (SELECT 
            id
        FROM
            countries
        WHERE
            name = 'Canada')
        AND elevation = 0;

-- Question 12
SELECT 
    name
FROM
    airlines
WHERE
    country_id IN (SELECT 
            id
        FROM
            countries
        WHERE
            name = 'France')
        AND active = 'Y';