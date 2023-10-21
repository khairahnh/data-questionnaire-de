CREATE DATABASE bookstore
	WITH encoding = 'UTF-8';
	

CREATE TABLE customers (
	id SERIAL,
	name VARCHAR (50) NOT NULL,
	email VARCHAR (50),
	tel VARCHAR(20), 
	created_at TIMESTAMP,
	updated_at TIMESTAMP,
	PRIMARY KEY(id)
);

INSERT INTO customers
	(id, name, email, tel, created_at, updated_at)
VALUES 
	(1, 'Irfan Bakti', 'irfan88@example.com',' +60123456789', '2019-08-07 08:13:21', '2019-08-07 08:13:21'),
	(2, 'Jack Smmith', 'jack.smmith@acme.io', '+60132456781', '2019-08-07 08:13:21', '2019-08-07 08:13:21'),
	(3, 'Nazir', '', '+601185434012','2019-08-07 08:13:21',' 2019-08-07 08:13:21'),
	(4, 'Faiz Ma', 'faiz.ma@iholow.cn ', '+6019772002','2019-08-07 08:13:21',' 2019-08-07 08:13:21'),
	(5, 'Isham Rais', 'isham@pmo.gov.my', '+60135482020','2019-08-07 08:13:21',' 2019-08-07 08:13:21'),
	(6, 'Shanon Teoh', 'shahnon.teoh@st.com.sg', '','2019-08-07 08:13:21',' 2019-08-07 08:13:21');



CREATE TABLE invoices (
	id SERIAL,
	number INT NOT NULL,
	sub_total NUMERIC(1000,2),
	tax_total NUMERIC(1000,2),
	total NUMERIC(1000,2),
	customer_id INT,
	created_at TIMESTAMP,
	updated_at TIMESTAMP,
	PRIMARY KEY(id),
	CONSTRAINT fk_customer
		FOREIGN KEY(customer_id) REFERENCES customers(id)
);

INSERT INTO invoices
	(id, number, sub_total, tax_total, total, customer_id, created_at, updated_at)
VALUES 
	(1, 20190001, 30.00, 0.00, 30.00, 1,'2019-08-07 08:13:21', '2019-08-07 08:13:21'),
	(2, 20190002, 150.00,  0.00, 150.00, 2, '2019-08-07 08:13:21', '2019-08-07 08:13:21'),
	(3, 20190003, 30.00,  0.00, 30.00, 2,'2019-09-15 08:13:21',' 2019-09-15 08:13:21'),
	(4, 20190004, 55.00,  0.00, 55.00, 3, '2019-09-15 08:13:21',' 2019-09-15 08:13:21'),
	(5, 20190005, 450.00,  0.00, 0.00, 6, '2019-09-15 08:13:21',' 2019-09-15 08:13:21');
	
	
CREATE TABLE IF NOT EXISTS invoice_lines (
	id SERIAL,
	description VARCHAR(50),
	unit_price NUMERIC(1000,2),
	quantity INT,
	sub_total NUMERIC(1000,2),
	tax_total NUMERIC(1000,2),
	total NUMERIC(1000,2),
	tax_id varchar(30),
	sku_id INT,
	invoice_id INT,
	PRIMARY KEY(id), 
	CONSTRAINT fk_invoices
		FOREIGN KEY(invoice_id) REFERENCES invoices(id)
);


INSERT INTO invoice_lines
	(id, description, unit_price, quantity, sub_total,tax_total, total, tax_id, sku_id, invoice_id)
VALUES 
	(1, 'Book #1', 30.00, 1, 30.00, 0.00, 30.00,'NULL', 1, 1),
	(2, 'Book #2', 25.00, 4, 100.00, 0.00, 100.00, 'NULL', 2, 2),
	(3, 'Book #3', 50.00, 1, 50.00, 0.00, 50.00, 'NULL', 3, 2),
	(4, 'Book #1', 30.00, 1, 30.00, 0.00, 30.00, 'NULL', 1, 3),
	(5, 'Book #1', 30.00, 1, 30.00, 0.00, 30.00, 'NULL', 1, 4),
	(6, 'Book #2', 25.00, 1, 25.00, 0.00, 25.00, 'NULL', 2, 4),
	(7, 'Book #1', 30.00, 5, 150.00, 0.00, 150.00, 'NULL', 1, 5),
	(8, 'Book #3', 50.00, 6, 300.00, 0.00, 300.00, 'NULL', 3, 5);
	