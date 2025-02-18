create database codeminer_orders_management

CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    active boolean NOT NULL
);

CREATE TABLE "order" (
    id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    ordered_at TIMESTAMP NOT NULL,
    CONSTRAINT fk_customer_id
        FOREIGN KEY (customer_id)
        REFERENCES customers(id)
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
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
        REFERENCES "order"(id),
    CONSTRAINT fk_product_id
        FOREIGN KEY (product_id)
        REFERENCES products(id)
);