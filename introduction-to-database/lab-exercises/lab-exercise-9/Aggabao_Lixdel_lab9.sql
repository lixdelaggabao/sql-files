-- Lixdel Louisse L. Aggabao
-- 041081985

use flightdb;

-- Question 1
SELECT 
    airports.name AS airport_name,
    city,
    countries.name AS country_name
FROM
    airports
        JOIN
    countries ON airports.country_id = countries.id;

-- Question 2
SELECT 
    routes.id AS route_id,
    name AS source_airport_name,
    airline_id,
    codeshare
FROM
    routes
        JOIN
    airports ON routes.source_airport_id = airports.id
WHERE
    name = 'Lester B Pearson Intl';

-- Question 3
SELECT DISTINCT
    airports.name AS source_airport_name,
    airlines.name AS airline_name
FROM
    routes
        JOIN
    airports ON routes.source_airport_id = airports.id
        JOIN
    airlines ON routes.airline_id = airlines.id
WHERE
    airports.name = 'Lester B Pearson Intl';

-- Question 4
SELECT DISTINCT
    airports.name AS source_airport_name,
    airlines.name AS airline_name,
    aircrafts.description AS aircraft_description
FROM
    aircrafts
        JOIN
    route_aircrafts ON aircrafts.id = route_aircrafts.aircraft_id
        JOIN
    routes ON route_aircrafts.route_id = routes.id
        JOIN
    airlines ON routes.airline_id = airlines.id
        JOIN
    airports ON routes.source_airport_id = airports.id
WHERE
    airports.name = 'Lester B Pearson Intl';

-- Question 5
SELECT 
    airlines.name AS airline_name,
    countries.name AS country_name
FROM
    airlines
        JOIN
    countries ON airlines.country_id = countries.id;

-- Question 6
SELECT 
    countries.name AS country_name,
    COUNT(*) AS number_of_airlines,
    GROUP_CONCAT(airlines.name) AS airline_names
FROM
    airlines
        JOIN
    countries ON airlines.country_id = countries.id
GROUP BY countries.id;

-- Question 7
SELECT 
    COUNT(DISTINCT aircrafts.id) AS number_of_aircrafts
FROM
    aircrafts
        JOIN
    route_aircrafts ON aircrafts.id = route_aircrafts.aircraft_id
        JOIN
    routes ON route_aircrafts.route_id = routes.id
        JOIN
    airports ON routes.destination_airport_id = airports.id
        JOIN
    countries ON airports.country_id = countries.id
WHERE
    countries.name = 'France';

-- Question 8
SELECT 
    countries.name AS country_name,
    COUNT(DISTINCT airlines.id) AS number_of_airlines
FROM
    airlines
        JOIN
    routes ON airlines.id = routes.airline_id
        JOIN
    airports ON routes.destination_airport_id = airports.id
        JOIN
    countries ON airports.country_id = countries.id
WHERE
    countries.name IN ('France', 'Germany', 'Spain', 'Italy')
GROUP BY countries.id;

-- Question 9
SELECT DISTINCT
    airlines.name AS airline_name,
    aircrafts.name AS aircraft_name,
    countries.name AS country_name
FROM
    airlines
        JOIN
    routes ON airlines.id = routes.airline_id
        JOIN
    route_aircrafts ON routes.id = route_aircrafts.route_id
        JOIN
    aircrafts ON route_aircrafts.aircraft_id = aircrafts.id
        JOIN
    airports ON routes.destination_airport_id = airports.id
        JOIN
    countries ON airports.country_id = countries.id
WHERE
    countries.name IN ('France', 'Germany', 'Spain', 'Italy');

-- Question 10
SELECT 
    wake_size, COUNT(*) AS number_of_aircrafts
FROM
    aircrafts
        JOIN
    route_aircrafts ON aircrafts.id = route_aircrafts.aircraft_id
        JOIN
    routes ON route_aircrafts.route_id = routes.id
        JOIN
    airlines ON routes.airline_id = airlines.id
        JOIN
    airports ON routes.source_airport_id = airports.id
        JOIN
    countries ON airports.country_id = countries.id
WHERE
    countries.name IN ('Canada', 'United States', 'Mexico')
GROUP BY wake_size;

-- Question 11
SELECT 
    countries.name AS country_name,
    COUNT(DISTINCT airlines.id) AS number_of_airlines
FROM
    airlines
        JOIN
    routes ON airlines.id = routes.airline_id
        JOIN
    airports ON routes.destination_airport_id = airports.id
	JOIN
    countries ON airports.country_id = countries.id
WHERE
    airports.country_id IN (SELECT 
            id
        FROM
            countries
        WHERE
            name IN ('France', 'Germany', 'Spain', 'Italy'))
GROUP BY countries.id;

-- Question 12
SELECT 
    COUNT(*) AS number_of_aircrafts
FROM
    (SELECT DISTINCT
        aircrafts.id
    FROM
        aircrafts
    JOIN route_aircrafts ON aircrafts.id = route_aircrafts.aircraft_id
    JOIN routes ON route_aircrafts.route_id = routes.id
    JOIN airports ON routes.destination_airport_id = airports.id
    JOIN countries ON airports.country_id = countries.id
    WHERE
        countries.name = 'France') AS dtable;