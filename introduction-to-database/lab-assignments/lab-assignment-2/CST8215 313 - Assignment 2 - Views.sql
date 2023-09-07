/*
File Name: CST8215 313 - Assignment 2 - Views
Group Number: 7
Authors:
	Santiago Garcia (Student Number: 041085721)
	Lixdel Aggabao (Student Number: 041081985)
	Luc Ha (Student Number: 040802592)
Description: This file contains the views to abstract complex queries and hide data structures.
*/

-- A dynamic view for query 4 (query that displays the sales order services that have a quantity of more than 1 and a discount of at least 5%.) in the previous task.
CREATE OR REPLACE VIEW query4_v AS
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
    
-- A dynamic view for query 9 (query that displays the ids of the clients who spent at least 10000, along with the total cost of all the sales order services they purchased) in the previous task
CREATE OR REPLACE VIEW query9_v AS
    SELECT 
        client_id,
        SUM(quantity * (cost - (discount * cost))) AS total_cost
    FROM
        sales_order_services
            JOIN
        services ON sales_order_services.service_id = services.id
    GROUP BY client_id
    HAVING total_cost >= 10000;