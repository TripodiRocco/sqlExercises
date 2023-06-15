/*
CREATE TABLE PERSONA (
  ID_PERSONA INT PRIMARY KEY,
  NOME VARCHAR(255),
  COGNOME VARCHAR(255)
);
*/

/*
INSERT INTO PERSONA (ID_PERSONA, NOME, COGNOME)
values (1, 'Mario', 'Rossi'),
  (2, 'Luca', 'Verdi'),
  (3, 'Giovanni', 'Bianchi');
  */
 
 /*
 CREATE TABLE DATI_PERSONA (
  ID_PERSONA INT PRIMARY KEY,
  PROFESSIONE VARCHAR(50),
  CITTA VARCHAR(50)
);
*/


/*
INSERT INTO DATI_PERSONA (ID_PERSONA, PROFESSIONE, CITTA)
VALUES
  (1, 'Ingegnere', 'Roma'),
  (2, 'Avvocato', 'Milano'),
  (4, 'Medico', 'Napoli');
  */

# 1. Creazione inner join  
/* 
SELECT *
FROM PERSONA P
INNER JOIN DATI_PERSONA DP 
ON P.ID_PERSONA = DP.ID_PERSONA;
*/

# 2. Creazione left join 
/*
SELECT *
FROM PERSONA P
LEFT JOIN DATI_PERSONA DP 
ON P.ID_PERSONA = DP.ID_PERSONA;
*/

# 3. Creazione right join
/*
SELECT *
FROM PERSONA P
RIGHT JOIN DATI_PERSONA DP 
ON P.ID_PERSONA = DP.ID_PERSONA;
*/

# 4. Creazione left join con esclusione dei dati da tabella dx e di matching
/*
SELECT *
FROM PERSONA P
LEFT JOIN DATI_PERSONA DP
ON P.ID_PERSONA = DP.ID_PERSONA
where DP.ID_PERSONA is null;
*/

# 5. Creazione left join con esclusione dei dati da tabella sx e di matching
SELECT *
FROM PERSONA P
RIGHT JOIN DATI_PERSONA DP
ON P.ID_PERSONA = DP.ID_PERSONA
where P.ID_PERSONA is null;