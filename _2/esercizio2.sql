/*N.B: le tabelle create negli esercizi a venire cambieranno aspetto grafico a causa di malfunzionamenti
nel sito sqlfiddle in fase di creazione delle query, che mi hanno portato ad utilizzare invece il sito dbfiddle */


/* 1. Write insert statements to insert the following 5 ingredients */

CREATE TABLE INGREDIENTS (
  NAME VARCHAR(255)
);

INSERT INTO INGREDIENTS(NAME)
VALUES('Eggs');

INSERT INTO INGREDIENTS(NAME)
VALUES('Bread');

INSERT INTO INGREDIENTS(NAME)
VALUES('Beef Patty');

INSERT INTO INGREDIENTS(NAME)
VALUES('Lettuce');

INSERT INTO INGREDIENTS(NAME)
VALUES('Yoghurt');

/* */

/* 2. Write a SELECT statement to select the NAME of all the ingredients.*/

SELECT NAME FROM INGREDIENTS;

/* */

/* 3. Write a SELECT statement to select the NAME and the PRICE of the ingredients. */

CREATE TABLE INGREDIENTS (
  NAME VARCHAR(255),
  PRICE DOUBLE
);

INSERT INTO INGREDIENTS(NAME, PRICE)
VALUES('Eggs', 3.86);

INSERT INTO INGREDIENTS(NAME, PRICE)
VALUES('Bread', 4.96);

INSERT INTO INGREDIENTS(NAME, PRICE)
VALUES('Beef Patty', 10.57);

INSERT INTO INGREDIENTS(NAME, PRICE)
VALUES('Lettuce', 1.10);

INSERT INTO INGREDIENTS(NAME, PRICE)
VALUES('Yoghurt', 3.78);

SELECT NAME, PRICE FROM INGREDIENTS;

/* */

/*4. Write a SELECT statement to select all columns of ingredients, ordered by NAME. */

SELECT * FROM INGREDIENTS
ORDER BY NAME;

/* */

/*5. Write a SELECT statement to select all columns of ingredients, ordered by "GLUTEN_FREE" with the "true" items on top */

CREATE TABLE INGREDIENTS (
  NAME VARCHAR(255),
  PRICE DOUBLE,
  GLUTEN_FREE BOOLEAN
);

INSERT INTO INGREDIENTS(NAME, PRICE, GLUTEN_FREE)
VALUES('Eggs', 3.86, true);

INSERT INTO INGREDIENTS(NAME, PRICE, GLUTEN_FREE)
VALUES('Bread', 4.96, false);

INSERT INTO INGREDIENTS(NAME, PRICE, GLUTEN_FREE)
VALUES('Beef Patty', 10.57, true);

INSERT INTO INGREDIENTS(NAME, PRICE, GLUTEN_FREE)
VALUES('Lettuce', 1.10, true);

INSERT INTO INGREDIENTS(NAME, PRICE, GLUTEN_FREE)
VALUES('Yoghurt', 3.78, true);

SELECT * FROM INGREDIENTS
ORDER BY GLUTEN_FREE DESC;