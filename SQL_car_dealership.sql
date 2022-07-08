CREATE TABLE IF NOT EXISTS customer (
    customer_id SERIAL PRIMARY KEY, 
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    phone_number VARCHAR(255),
    payment_info VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS car (
    car_id SERIAL PRIMARY KEY, 
    serial_num VARCHAR(255),
    type_car VARCHAR(255),
    car_year INTEGER NOT NULL,
    make VARCHAR(255),
    model VARCHAR(255),
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);


CREATE TABLE IF NOT EXISTS staff (
    staff_id SERIAL PRIMARY KEY, 
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    staff_role INTEGER NOT NULL
);


CREATE TABLE IF NOT EXISTS sale (
    sale_id SERIAL PRIMARY KEY, 
    car_id INTEGER NOT NULL,
    staff_id INTEGER NOT NULL,
    total_price VARCHAR(255),
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);


CREATE TABLE IF NOT EXISTS service (
    service_id SERIAL PRIMARY KEY, 
    service_description VARCHAR(255),
    issue_id INTEGER NOT NULL,
    invoice_description VARCHAR(255),
    car_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);


CREATE TABLE IF NOT EXISTS staff_service (
    staff_service_id SERIAL PRIMARY KEY, 
    service_id INTEGER NOT NULL,
    staff_id INTEGER NOT NULL,
    FOREIGN KEY (service_id) REFERENCES service(service_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);

