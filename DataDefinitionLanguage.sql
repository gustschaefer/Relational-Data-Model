/*

DDL: Data Definition Language
Comandos que interagem e/ou criam os objetos do banco de dados.

DDL: CREATE, ALTER e DROP

*/

SET DATESTYLE TO PostgreSQL, European;

-- Cria TABLE com cinco colunas, especifica o datatype (int, char, etc)
-- Define coluna_1 como primary key

CREATE TABLE MY_TABLE
(
	coluna_1 integer NOT NULL DEFAULT
nextval(MY_TABLE::regclass),
	coluna_2 character varying(50),
	coluna_3 character varying(2),
	coluna_4 character (1),
	coluna_5 integer NOT NULL,
	CONSTRAINT coluna_pkey PRIMARY KEY
(coluna_1)
)
