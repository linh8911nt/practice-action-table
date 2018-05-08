CREATE DATABASE mydata;
USE mydata;
CREATE TABLE contacs (
	contact_id INT(11) NOT NULL AUTO_INCREMENT,
    last_name VARCHAR(30) NOT NULL,
    first_name VARCHAR(25),
    birthday DATE,
    CONSTRAINT contacts_pk PRIMARY KEY (contact_id)
);

CREATE TABLE suppliers(
	supplier_id INT(11) NOT NULL AUTO_INCREMENT,
    supplier_name VARCHAR(50) NOT NULL,
    account_rep VARCHAR(30) NOT NULL DEFAULT 'TBD',
    CONSTRAINT suppliers_pk PRIMARY KEY (supplier_id)
);

CREATE TABLE users(
	user_id INT AUTO_INCREMENT PRIMARY KEY,
    uername VARCHAR(30),
    password VARCHAR(20),
    email VARCHAR(255)
);

CREATE TABLE roles(
	role_id INT AUTO_INCREMENT,
    role_name VARCHAR(50),
    PRIMARY KEY (role_id)
);

CREATE TABLE userroles(
	user_id INT NOT NULL,
    role_id INT NOT NULL,
    PRIMARY KEY (user_id, role_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(role_id) REFERENCES roles(role_id)
);

CREATE TABLE customers(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(40),
    address VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE orders(
	id INT AUTO_INCREMENT,
    staff VARCHAR(50),
    PRIMARY KEY (id),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

DROP TABLE contacs;

ALTER TABLE contacs
	ADD add_last_name VARCHAR(40) NOT NULL
		AFTER contact_id;
        
ALTER TABLE contacs
	MODIFY last_name VARCHAR(50) NOT NULL;
    
ALTER TABLE contacs
	DROP COLUMN add_last_name;
    
ALTER TABLE contacs
	CHANGE COLUMN birthday user_birthday
		VARCHAR(20) NOT NULL;
        
ALTER TABLE contacs
	RENAME TO people;