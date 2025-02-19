CREATE SEQUENCE seq_customers START WITH 1;

CREATE SEQUENCE seq_orders START WITH 1;

CREATE SEQUENCE seq_products START WITH 1;

CREATE TABLE customers (
    id INT DEFAULT nextval('seq_customers') PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    active boolean NOT NULL
);

CREATE TABLE orders (
    id INT DEFAULT nextval('seq_orders') PRIMARY KEY,
    customer_id INT NOT NULL,
    ordered_at TIMESTAMP NOT NULL,
    CONSTRAINT fk_customer_id
        FOREIGN KEY (customer_id)
        REFERENCES customers(id)
);

CREATE TABLE products (
    id INT DEFAULT nextval('seq_products') PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price_cents INT NOT NULL
);

CREATE TABLE order_products (
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT null default 1,
    PRIMARY KEY (order_id, product_id),
    CONSTRAINT fk_order_id
        FOREIGN KEY (order_id)
        REFERENCES orders(id),
    CONSTRAINT fk_product_id
        FOREIGN KEY (product_id)
        REFERENCES products(id)
);
