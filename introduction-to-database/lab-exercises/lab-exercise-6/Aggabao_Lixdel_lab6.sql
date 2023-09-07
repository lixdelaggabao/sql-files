-- Lixdel Louisse L. Aggabao
-- 041081985

CREATE DATABASE IF NOT EXISTS Lab6;
USE Lab6;

CREATE TABLE IF NOT EXISTS customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(150) NULL,
    phone_number VARCHAR(20) NULL,
    street_address VARCHAR(50) NULL,
    city VARCHAR(30) NULL,
    province CHAR(2) NULL,
    postal_code CHAR(6) NULL
);

CREATE TABLE IF NOT EXISTS orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATETIME NULL,
    customer_id INT NOT NULL,
    CONSTRAINT customerFK FOREIGN KEY (customer_id)
        REFERENCES customers (id)
        ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE IF NOT EXISTS product_types (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(75) NOT NULL,
    price DECIMAL(6 , 2 ) NULL,
    product_type_id INT NOT NULL,
    CONSTRAINT product_typeFK FOREIGN KEY (product_type_id)
        REFERENCES product_types (id)
        ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE IF NOT EXISTS order_lines (
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NULL,
    price DECIMAL(6 , 2 ) NULL,
    line_total DECIMAL(8 , 2 ) NULL,
    PRIMARY KEY (order_id , product_id),
    CONSTRAINT orderFK FOREIGN KEY (order_id)
        REFERENCES orders (id)
        ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT productFK FOREIGN KEY (product_id)
        REFERENCES products (id)
        ON UPDATE NO ACTION ON DELETE NO ACTION
);

INSERT INTO customers (name, email, phone_number, street_address, city, province, postal_code) VALUES ('Lixdel Aggabao', 'agga0041@algonquinlive.com', '210-758-2671', 'Cheryl Road', 'Ottawa', 'ON', 'K2G0V7');
INSERT INTO customers (name, email, phone_number, street_address, city, province, postal_code) VALUES ('Luc Ha', 'ha0012@algonquinlive.com', '613-501-7155', 'Hines Road', 'Ottawa', 'ON', 'K2K2M5');
INSERT INTO customers (name, email, phone_number, street_address, city, province, postal_code) VALUES ('Correy Wilkinson', 'wilk0156@algonquinlive.com', '613-749-7927', 'Foxtail Avenue', 'Ottawa', 'ON', 'K2R1A3');
INSERT INTO customers (name, email, phone_number, street_address, city, province, postal_code) VALUES ('Santiago Garcia', 'garc0094@algonquinlive.com', '613-981-1184', 'Rachael Avenue', 'Ottawa', 'ON', 'K1H6C6');
INSERT INTO customers (name, email, phone_number, street_address, city, province, postal_code) VALUES ('John Coghill', 'cogh0029@algonquinlive.com', '210-758-7903', 'Quill Street', 'Ottawa', 'ON', 'K1K3S7');
    
INSERT INTO product_types (name) VALUES ('Software');
INSERT INTO product_types (name) VALUES ('Hardware');
INSERT INTO product_types (name) VALUES ('Service');

INSERT INTO products (description, price, product_type_id) VALUES ('Windows', 259.99, 1);
INSERT INTO products (description, price, product_type_id) VALUES ('Visual Studio', 249.99, 1);
INSERT INTO products (description, price, product_type_id) VALUES ('Mouse', 24.88, 2);
INSERT INTO products (description, price, product_type_id) VALUES ('Keyboard', 29.88, 2);
INSERT INTO products (description, price, product_type_id) VALUES ('Computer Repair', 130.24, 3);
INSERT INTO products (description, price, product_type_id) VALUES ('Adobe Acrobat Pro', 38.99, 1);

UPDATE customers 
SET 
    phone_number = '210-758-7123'
WHERE
    id = 1;
    
UPDATE customers 
SET 
    postal_code = 'K2J1V6'
WHERE
    id = 2;

DELETE FROM products 
WHERE
    product_type_id = 1;
DELETE FROM product_types 
WHERE
    id = 1;