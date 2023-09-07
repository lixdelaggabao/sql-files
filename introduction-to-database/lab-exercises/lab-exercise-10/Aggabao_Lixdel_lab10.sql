-- Lixdel Louisse L. Aggabao
-- 041081985

use flightdb;
ALTER TABLE `flightdb`.`countries` ENGINE = InnoDB ;

-- Question 1
CREATE OR REPLACE VIEW countries_airlines_count_v AS
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
        countries.name IN ('France' , 'Germany', 'Spain', 'Italy')
    GROUP BY countries.id;

-- Question 2
CREATE INDEX airports_elevation_idx ON
	airports(elevation);

-- Question 3
CREATE INDEX routes_source_destination_airport_id_idx ON
	routes(source_airport_id, destination_airport_id);

-- Question 4
-- 240 rows
SELECT 
    COUNT(*)
FROM
    countries;

-- Question 5
-- Clicked home then opened a new (second) connection to Local instance MySQL80

-- Question 6
BEGIN;
INSERT INTO countries VALUES (241, 'Ledxil');

-- Question 7
-- 241 rows
SELECT 
    COUNT(*)
FROM
    countries;

-- Question 8
-- 240 rows
SELECT 
    COUNT(*)
FROM
    countries;

-- Question 9
COMMIT;

-- Question 10
-- 241 rows
SELECT 
    COUNT(*)
FROM
    countries;

-- Question 11
BEGIN;

-- Question 12
DELETE FROM countries
WHERE
    id = 241;

-- Question 13
-- 240 rows
SELECT 
    COUNT(*)
FROM
    countries;

-- Question 14
-- 241 rows
SELECT 
    COUNT(*)
FROM
    countries;

-- Question 15
COMMIT;

-- Question 16
-- 240 rows
SELECT 
    COUNT(*)
FROM
    countries;