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