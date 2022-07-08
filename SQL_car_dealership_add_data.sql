CREATE OR REPLACE PROCEDURE addCustomer
    (
        _first_name VARCHAR(255),
        _last_name VARCHAR(255),
        _phone_number VARCHAR(255),
        _payment_info VARCHAR(255)
    )
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO customer (
        first_name,
        last_name,
        phone_number,
        payment_info
    ) VALUES (
        _first_name,
        _last_name,
        _phone_number,
        _payment_info
    );
END;
$$

CALL addCustomer('Mark', 'John', '504-456-3466', 'Visa');
CALL addCustomer('Joshua', 'Gottlieb',  '504-464-7687', 'MasterCard');
CALL addCustomer('Michael', 'Bunton', '504-452-1235', 'AMEX');
CALL addCustomer('Kyler', 'Ramsey', '504-678-8799', 'Visa');
CALL addCustomer('Lucas', 'Lang', '504-656-8799', 'Visa');


CREATE OR REPLACE PROCEDURE addCar
    (
        _serial_num VARCHAR(255),
        _type_car VARCHAR(255),
        _car_year INTEGER,
        _make VARCHAR(255),
        _model VARCHAR(255),
        _customer_id INTEGER
    )
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO car (
        serial_num,
        type_car,
        car_year,
        make,
        model,
        customer_id 
    ) VALUES (
        _serial_num,
        _type_car,
        _car_year,
        _make,
        _model, 
        _customer_id 
    );
END;
$$

CALL addCar('1f8429kb90', 'Sedan', 2009, 'Toyota', 'Camry', 1);
CALL addCar('1f84k9kb90', 'Sedan', 2009, 'Honda', 'Civic', 2);
CALL addCar('1f88g9kb90', 'SUV', 2009, 'Ford', 'Escape', 3);
CALL addCar('1f84d9kb90', 'Truck', 2009, 'Dodge', 'Truckster', 4);
CALL addCar('1f84g7kb90', 'SUV', 2009, 'Tesla', 'Big One', 5);


CREATE OR REPLACE PROCEDURE addStaff
    (
        _first_name VARCHAR(255),
        _last_name VARCHAR(255),
        _staff_role INTEGER
    )
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO staff (
        first_name,
        last_name,
        staff_role
    ) VALUES (
        _first_name,
        _last_name,
        _staff_role
    );
END;
$$

CALL addStaff('Salsey', 'Salesman', 1);
CALL addStaff('Martin', 'Mechanic', 2);
CALL addStaff('Sally', 'Saleston', 1);


CREATE OR REPLACE PROCEDURE addSale
    (
        _car_id INTEGER,
        _staff_id INTEGER,
        _total_price VARCHAR(255)
    )
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO sale (
        car_id,
        staff_id,
        total_price
    ) VALUES (
        _car_id,
        _staff_id,
        _total_price
    );
END;
$$


CALL addSale(1, 1, '$25,500');
CALL addSale(2, 1, '$32,000');
CALL addSale(3, 3, '$43,600');


CREATE OR REPLACE PROCEDURE addService
    (
        _service_description VARCHAR(255),
        _issue_id INTEGER,
        _invoice_description VARCHAR(255),
        _car_id INTEGER,
        _customer_id INTEGER
    )
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO service (
        service_description,
        issue_id,
        invoice_description,
        car_id,
        customer_id
    ) VALUES (
        _service_description,
        _issue_id,
        _invoice_description,
        _car_id,
        _customer_id
    );
END;
$$

CALL addService('Oil Change', 1, '$49.99', 1, 1);
CALL addService('Tire Patch', 2, '$69.99', 1, 1);
CALL addService('Tire Rotation', 3, '$100', 2, 2);


CREATE OR REPLACE PROCEDURE addStaffService
    (
        _service_id INTEGER,
        _staff_id INTEGER
    )
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO staff_service (
        service_id,
        staff_id
    ) VALUES (
        _service_id,
        _staff_id
    );
END;
$$

CALL addStaffService(1, 2);
CALL addStaffService(2, 2);
CALL addStaffService(3, 2);
