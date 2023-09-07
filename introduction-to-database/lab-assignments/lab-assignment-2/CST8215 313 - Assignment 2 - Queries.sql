/*
File Name: CST8215 313 - Assignment 2 - Queries
Group Number: 7
Authors:
	Santiago Garcia (Student Number: 041085721)
	Lixdel Aggabao (Student Number: 041081985)
	Luc Ha (Student Number: 040802592)
Description: This file contains the sample query commands for the greenspace database.
*/

/*
Query 1: A simple query that pulls all columns and rows from a table.
This query displays all data (columns and rows) from the services table.
*/
SELECT 
    *
FROM
    services;
    
/*
Query 2: A query that displays a subset of columns.
This query displays the name and the contact information (phone number and email) of all clients.
*/
SELECT 
    name, phone_number, email
FROM
    clients;

/*
Query 3: A query that displays a subset of columns with a single clause (predicate) WHERE statement.
This query displays the sales orders that were placed on or after January 1, 2010 00:00:00.
This includes the id of the client who placed the sales order, the date and time the sales order was placed, and any comments that were added to the sales order.
*/
SELECT 
    client_id, order_date, comments
FROM
    sales_orders
WHERE
    order_date >= '2010-01-01 00:00:00';
    
/*
Query 4: A query that displays a subset of columns with a multi-clause (predicate) WHERE statement using AND/OR.
This query displays the sales order services that have a quantity of more than 1 and a discount of at least 5%.
This includes the id of the sales order, the id of the service provided, the id of the client to whom the sales order service is provided,
the quantity of the sales order service, the discount given, and the scheduled date and time for the sales order service.
*/
SELECT 
    sales_order_id,
    service_id,
    client_id,
    quantity,
    discount,
    service_schedule_date
FROM
    sales_order_services
WHERE
    quantity > 1 AND discount >= 0.05;
    
/*
Query 5: A query that performs a single table join. In other words, you are joining 2 tables.
This query displays the information about the history of changes made to each sales order service.
This includes the id of the sales order service, the date and time the change was made to the sales order service, any notes that were added to the entry,
and the name of the history type.
*/
SELECT 
    sales_order_service_id,
    entry_date,
    notes,
    name AS history_type_name
FROM
    sales_order_service_history
        JOIN
    history_types ON sales_order_service_history.history_type_id = history_types.id;

/*
Query 6: A query that performs a multi-table join. In other words, you are joining 3 or more tables.
This query displays information about all the sales order services.
This includes the name of the client who placed the sales order, the client's phone number, the date and time the sales order was placed,
the name of the service ordered, the scheduled date and time for the sales order service, the quantity of the sales order service, any extra information
about the sales order service, and any comments added to the sales order.
*/
SELECT 
    clients.name AS client_name,
    phone_number,
    order_date,
    services.name AS service_name,
    service_schedule_date,
    quantity,
    extra_information,
    comments
FROM
    clients
        JOIN
    sales_orders ON clients.id = sales_orders.client_id
        JOIN
    sales_order_services ON sales_orders.id = sales_order_services.sales_order_id
        AND clients.id = sales_order_services.client_id
        JOIN
    services ON sales_order_services.service_id = services.id;

/*
Query 7: A query that performs an aggregate (count, min, max, sum, avg, etc.).
This query displays the number of clients.
*/
SELECT 
    COUNT(*) AS number_of_clients
FROM
    clients;

/*
Query 8: A query that performs an aggregate (count, min, max, sum, avg, etc.) with a GROUP BY.
This query displays the number of clients in each country.
*/
SELECT 
    countries.name, COUNT(*) AS number_of_clients
FROM
    clients
        JOIN
    countries ON clients.country_id = countries.id
GROUP BY country_id;

/*
Query 9: A query that performs an aggregate (count, min, max, sum, avg, etc.). with a GROUP BY and a HAVING clause.
This query displays the ids of the clients who spent at least 10000, along with the total cost of all the sales
order services they purchased.
*/
SELECT 
    client_id,
    SUM(quantity * (cost - (discount * cost))) AS total_cost
FROM
    sales_order_services
        JOIN
    services ON sales_order_services.service_id = services.id
GROUP BY client_id
HAVING total_cost >= 10000;

/*
Query 10: A query that performs a subquery either as part of the WHERE clause or as a derived/virtual table.
This query displays the name and the contact information (phone number and email) of the clients who live in
the state/province of Ontario, Quebec, or Nova Scotia.
*/
SELECT 
    name, phone_number, email
FROM
    clients
WHERE
    states_province_id IN (SELECT 
            id
        FROM
            states_provinces
        WHERE
            name IN ('Ontario', 'Quebec', 'Nova Scotia'));

/*
Query 11: A query that performs an aggregate with a join and a group by.
This query displays all the clients and the number of sales orders they placed, along
with their name and id.
*/
SELECT 
    clients.id AS client_id, name, COUNT(*) AS number_of_orders
FROM
    clients
        JOIN
    sales_orders ON clients.id = sales_orders.client_id
GROUP BY clients.id;