CREATE OR REPLACE PACKAGE customer_pkg AS
    PROCEDURE change_telephone(
        idcustomer IN NUMBER,
        telephone_type IN VARCHAR2,
        telephone_number IN VARCHAR2
    );
    
    PROCEDURE change_address(
        idcustomer IN NUMBER,
        address_street IN VARCHAR2,
        address_city IN VARCHAR2,
        address_province IN VARCHAR2,
        address_postalcode IN VARCHAR2
    );
    
    PROCEDURE change_name(
        idcustomer IN NUMBER,
        name_firstname IN VARCHAR2,
        name_lastname IN VARCHAR2
    );
    
    FUNCTION new_customer(
        customer_birthdate IN TIMESTAMP,
        customer_password IN VARCHAR2,
        telephone_type IN VARCHAR2 DEFAULT NULL,
        telephone_number IN VARCHAR2 DEFAULT NULL,
        address_street IN VARCHAR2 DEFAULT NULL,
        address_city IN VARCHAR2 DEFAULT NULL,
        address_province IN VARCHAR2 DEFAULT NULL,
        address_postalcode IN VARCHAR2 DEFAULT NULL,
        name_firstname IN VARCHAR2 DEFAULT NULL,
        name_lastname IN VARCHAR2 DEFAULT NULL
    ) RETURN NUMBER;
END customer_pkg;
/

CREATE OR REPLACE PACKAGE BODY customer_pkg AS
    PROCEDURE change_telephone(
        idcustomer IN NUMBER,
        telephone_type IN VARCHAR2,
        telephone_number IN VARCHAR2
    ) IS
        v_sysdate TIMESTAMP;
        v_telephone_id NUMBER;
    BEGIN
        v_sysdate := SYSDATE;
        v_telephone_id := telephone_sequence.NEXTVAL;
        
        INSERT INTO telephone
            VALUES (v_telephone_id, telephone_type, telephone_number);
            
        UPDATE customer_telephone
            SET enddate = v_sysdate
            WHERE customer_idcustomer = idcustomer
                AND enddate IS NULL;
        
        INSERT INTO customer_telephone
            VALUES (customer_telephone_sequence.NEXTVAL, v_sysdate, NULL, idcustomer, v_telephone_id);
    END change_telephone;

    PROCEDURE change_address(
        idcustomer IN NUMBER,
        address_street IN VARCHAR2,
        address_city IN VARCHAR2,
        address_province IN VARCHAR2,
        address_postalcode IN VARCHAR2
    ) IS
        v_sysdate TIMESTAMP;
        v_address_id NUMBER;
    BEGIN
        v_sysdate := SYSDATE;
        v_address_id := address_sequence.NEXTVAL;
        
        INSERT INTO address
            VALUES (v_address_id, address_street, address_city, address_province, address_postalcode);
        
        UPDATE customer_address
            SET enddate = v_sysdate
            WHERE customer_idcustomer = idcustomer
                AND enddate IS NULL;
        
        INSERT INTO customer_address
            VALUES (customer_address_sequence.NEXTVAL, v_sysdate, NULL, idcustomer, v_address_id);
    END change_address;

    PROCEDURE change_name(
        idcustomer IN NUMBER,
        name_firstname IN VARCHAR2,
        name_lastname IN VARCHAR2
    ) IS
        v_sysdate TIMESTAMP;
        v_name_id NUMBER;
    BEGIN
        v_sysdate := SYSDATE;
        v_name_id := cname_sequence.NEXTVAL;
        
        INSERT INTO cname
            VALUES (v_name_id, name_firstname, name_lastname);
        
        UPDATE customer_name
            SET enddate = v_sysdate
            WHERE customer_idcustomer = idcustomer
                AND enddate IS NULL;
        
        INSERT INTO customer_name
            VALUES (customer_name_sequence.NEXTVAL, v_sysdate, NULL, idcustomer, v_name_id);
    END change_name;

    FUNCTION new_customer(
        customer_birthdate IN TIMESTAMP,
        customer_password IN VARCHAR2,
        telephone_type IN VARCHAR2 DEFAULT NULL,
        telephone_number IN VARCHAR2 DEFAULT NULL,
        address_street IN VARCHAR2 DEFAULT NULL,
        address_city IN VARCHAR2 DEFAULT NULL,
        address_province IN VARCHAR2 DEFAULT NULL,
        address_postalcode IN VARCHAR2 DEFAULT NULL,
        name_firstname IN VARCHAR2 DEFAULT NULL,
        name_lastname IN VARCHAR2 DEFAULT NULL
    ) RETURN NUMBER IS
        customer_id NUMBER;
    BEGIN
        INSERT INTO customer
            VALUES (customer_sequence.NEXTVAL, customer_birthdate, customer_password);
        
        customer_id := customer_sequence.CURRVAL;

        IF telephone_type IS NOT NULL OR telephone_number IS NOT NULL THEN
            change_telephone(customer_id, telephone_type, telephone_number);
        END IF;

        IF address_street IS NOT NULL OR address_city IS NOT NULL OR address_province IS NOT NULL OR address_postalcode IS NOT NULL THEN
            change_address(customer_id, address_street, address_city, address_province, address_postalcode);
        END IF;

        IF name_firstname IS NOT NULL OR name_lastname IS NOT NULL THEN
            change_name(customer_id, name_firstname, name_lastname);
        END IF;

        RETURN customer_id;
    END new_customer;
END customer_pkg;
/