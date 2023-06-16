# 1. Create your own customers table, make sure you create it with an auto_increment primary key.

create table CUSTOMERS (
	ID INT auto_increment,
	FIRST_NAME VARCHAR(255),
	LAST_NAME VARCHAR(255),
	ACCOUNT_IS_ACTIVE BOOLEAN,
	primary key (ID)
);


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


