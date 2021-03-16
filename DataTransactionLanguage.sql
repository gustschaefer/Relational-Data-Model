/*

DTL: Data Transaction Language 
Comandos para controle de transação.

DTL : BEGIN TRANSACTION, COMMIT e ROLLBACK
*/

-- Iniciar transação
BEGIN;
INSERT INTO MY_DATABASE(
	coluna_1, coluna_2, coluna_3, coluna_4, coluna_5)
	VALUES (VALUE_1, 'VALUE_2', 'VALUE_3', 'VALUE_4', VALUE_5);

-- Se foi verificado que o registro se encontra no banco, podemos executar um ROLLBACK
-- caso contrato, podemos realizar um COMMIT para salvar a transação
SELECT * FROM MY_DATABASE WHERE coluna_1 = 100;
 
 -- Cria ROLLBACK (retorna a transação anterior, caso haja falha) 
ROLLBACK;

-- Commit grava/finaliza a transação
--COMMIT
