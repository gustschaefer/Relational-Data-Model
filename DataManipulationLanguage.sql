/*

DML: Data Manipulation Language 
Comandos para manipular com dados em uma tabela.

DML: INSERT, DELETE e UPDATE

*/

-- INSERT: insere elemento(s) na tabela
INSERT INTO MY_DATABASE(
	coluna_1, coluna_2, coluna_3, coluna_4, coluna_5)
	VALUES (VALUE_1, 'VALUE_2', 'VALUE_3', 'VALUE_4', VALUE_5);

-- UPDATE: atualiza valores de um elemento a partir de uma condição
UPDATE MY_DATABASE
	SET coluna_2='NEW_VALUE_2', coluna_1=NEW_VALUE_1
	WHERE coluna_5 = SOME_CONDITION;

-- Especificar qual ou quais valores devem ser atualizados
-- utilizando "Where", senão a atualização é feita em TODO
-- banco de dado*

-- DELETE: deleta algum elemento da tabela
DELETE FROM MY_DATABASE
	WHERE coluna_4 = "VALUE_4";
