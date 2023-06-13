# 1. Create your own customers table, make sure you create it with an auto_increment primary key.

create table CUSTOMERS (
	ID INT auto_increment,
	FIRST_NAME VARCHAR(255),
	LAST_NAME VARCHAR(255),
	ACCOUNT_IS_ACTIVE BOOLEAN,
	primary key (ID)
)


# 2. Insert some customers with an insert statement.
insert into CUSTOMERS(FIRST_NAME, LAST_NAME, ACCOUNT_IS_ACTIVE)
	values ('Rocco', 'Tripodi', true),
	('Giovanni', 'Rossi', false),
	('Sofia', 'Bianchi', false),
	('Isabella', 'Esposito', true),
	('Francesco', 'Ricci', false);
	

# 3. Edit these customers using the UPDATE statement with a WHERE clause referring to the id.
select * from customers;

update customers 
set LAST_NAME = 'Tripodi'
where ID = 4;


# 4. Delete some customers with delete from statement with a WHERE clause referring to the id.
delete from customers
where ID = 2;

delete from customers 
where ID = 5;


# 5. Delete all customers with a truncate statement.
TRUNCATE CUSTOMERS;




# Look at the tables below and write which column(s) you think would make a good primary key.

# 6. Question

CREATE TABLE Customers (
 customer_id INT NOT NULL AUTO_INCREMENT,
 first_name VARCHAR(255) NOT NULL,
 last_name VARCHAR(255) NOT NULL,
 email VARCHAR(255) NOT NULL,
 PRIMARY KEY (customer_id)
);

# 6. Answer: Oltre al customer_id, potrebbe essere buona norma identificare come unica anche l'email.


# 7. Question

CREATE TABLE Products (
 product_name VARCHAR(255) NOT NULL,
 product_description VARCHAR(255) NOT NULL,
 product_price DECIMAL(10, 2) NOT NULL,
 product_quantity INT NOT NULL
);

# 7. Answer: Qui non bisognerebbe inserire una chiave primaria perchè ci potrebbero essere due o più elementi aventi quegli attributi.


# 8. Question

CREATE TABLE Orders (
 order_id INT NOT NULL AUTO_INCREMENT,
 customer_id INT NOT NULL,
 expected_arrival_time DATE
);

# 8. Answer: Qui sia l'ordine che il cliente potrebbero avere delle chiavi primarie in quanto potremmo identificare l'unicità per ogni ordine. 


# 9. Question

CREATE TABLE Product_Orders (
 order_id INT NOT NULL AUTO_INCREMENT,
 product_name VARCHAR(255) NOT NULL,
 total_revenue DOUBLE
);

# 9. Answer: Qui la chiave primaria potrebbe essere l'ID dell'ordine.




