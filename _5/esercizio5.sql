/* 1. Use all of the functions below, find out what they do, write a description for them here or in the comments of the code. Add a meaningful column alias

CONCAT(COLUMN1, COLUMN2) AS ALIAS_NAME
 LOWER(COLUMN)
 UPPER(COLUMN)
 TRIM(COLUMN)
 LENGTH(COLUMN)
 SUBSTRING(COLUMN, START, LENGTH)
 ROUND(COLUMN, DECIMAL_PLACES)
 DATE_ADD(COLUMN, INTERVAL EXPRESSION UNIT)
 DATE_SUB(COLUMN, INTERVAL EXPRESSION UNIT)
 FORMAT(COLUMN, FORMAT_STRING)
 */


 CREATE TABLE MEALS (
  NAME VARCHAR(255),
  PRICE DOUBLE,
  CALORIES INT,
  ORDERED_MEALS TIMESTAMP
);

INSERT INTO MEALS(NAME, PRICE, CALORIES)
VALUES('Spaghetti Bolognese', 12.99, 600);

INSERT INTO MEALS(NAME, PRICE, CALORIES)
VALUES('Grilled Chicken Sandwich', 8.99, 400);

INSERT INTO MEALS(NAME, PRICE, CALORIES)
VALUES('Pesto Pasta', 10.99, 550);

INSERT INTO MEALS(NAME, PRICE, CALORIES)
VALUES('Steak and Mash', 19.99, 800);

INSERT INTO MEALS(NAME, PRICE, CALORIES)
VALUES('Sushi Platter', 15.99, 700);

CREATE TABLE MEALS_TABLE AS
SELECT * FROM MEALS;        /* Creazione schema */



/* Creazione query */

SELECT
CONCAT (NAME, ' = ', PRICE) AS MEALS_COSTS FROM MEALS_TABLE;
/* Concatena due colonne, in questo caso NAME e PRICE e li fonde in un'unica colonna denominata MEALS_COSTS*/

LOWER(NAME) AS LOWER_NAME FROM MEALS_TABLE;
/* Applica il lowercase a tutti gli items della colonna che viene rinominata per l'appunto LOWER_CASE*/

UPPER(NAME) AS UPPER_NAME FROM MEALS_TABLE;
/* Applica L'uppercase a tutti gli items della colonna che viene rinominata per l'appunto UPPER_CASE */

TRIM(CALORIES) AS TABLE_OF_ONLY_CALORIES FROM MEALS_TABLE;
/* Taglia e ottiene la colonna separandola da tutto il resto */

LENGTH(PRICE) AS HOW_MANY_DIGITS FROM MEALS_TABLE;
/* Ottiene la lunghezza dei caratteri (stringhe e anche numeri) di ogni item presente nella specifica colonna */

SUBSTR(PRICE, 2, 3) AS DIGIT_EXTRACTION FROM MEALS_TABLE;
/* Parte ottenendo la stringa o in questo caso anche il numero dalla posizione scelta e subito dopo, se indicato, estrae il numero dei caratteri */

ROUND(PRICE, 1) AS ROUND_PRICES FROM MEALS_TABLE;
/* Arrotonda i numeri di quella specifica colonna e specificando la parte decimale */

DATE_ADD(ORDERED_MEALS, INTERVAL 5 MONTH) AS FORWARD_IN_TIME FROM MEALS_TABLE;
/* Aggiunge alla data odierna un intervallo di tempo impostato a scelta */

DATE_SUB(ORDERED_MEALS, INTERVAL 10 DAY) AS BACK_IN_TIME FROM MEALS_TABLE;
/* Sottrae, al contrario di DATE_ADD, alla data odierna un intervallo di tempo impostato a scelta */

FORMAT(CALORIES, 2) AS FORMATTING FROM MEALS_TABLE;
/* Formatta gli items della tabella nello stile richiesto */



/* 2. Using DATE_ADD or DATE_SUB and the following SQL

     SELECT NOW();

     Select your birthday by passing the result into the next item

     i.e. DATE_ADD(DATE_ADD(NOW(), INTERVAL 7 DAY), INTERVAL 2 MONTH) as BIRTHDAY_DATE

     If you're feeling really adventurous try to get the time to exactly midnight! */


CREATE TABLE MY_BIRTHDATE (
  BIRTHDATE TIMESTAMP
);

INSERT INTO MY_BIRTHDATE(BIRTHDATE)
VALUES(BIRTHDATE);

SELECT NOW();


SELECT
DATE_ADD(DATE_ADD(DATE_ADD(DATE_ADD(DATE_ADD(DATE_ADD(NOW(), INTERVAL -30 YEAR), INTERVAL 9 MONTH), INTERVAL 3 DAY), INTERVAL 8 HOUR), INTERVAL 11 MINUTE), INTERVAL -8 SECOND)
FROM MY_BIRTHDATE;