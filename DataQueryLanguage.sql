/*

DQL: Data Query Language 
Comandos de consulta de dados em uma tabela.

*/

-- Consulta genérica de todas as colunas
select * from MY_DATABASE;

-- Especificar valores usando "Where"
select coluna_1, coluna_2, ... from MY_DATABASE
where coluna_1 = SOME_VALUE; -- Para strings, usar 'SOME_VALUE'

-- OR: returna um valor OU outro
select coluna_1, coluna_2 from MY_DATABASE
where coluna_1 = SOME_VALUE_1 OR coluna_1 = SOME_VALUE_2;

-- IN: retorna todos os valores especificados
select coluna_1, coluna_2 from MY_DATABASE
where coluna_1 IN('SOME_VALUE_1','SOME_VALUE_2');

-- NOT: retorna valores diferentes dos especificados
select coluna_1, coluna_2 from MY_DATABASE
where coluna_1 NOT IN('SOME_VALUE_1','SOME_VALUE_2');

-- LIKE: utilizando para datatype character
-- o exemplo abaixo, vai retornar todos os chars de 'coluna' que possuem 
-- a palavra "test". Ao utilizar like 'Test%', retornaria todos os chars
-- que iniciam com a palavra teste
select coluna from MY_DATABASE
where coluna like '%test%';

-- Comparação: retorna tudo em que a 'coluna' é maior que 1000
-- Pode ser: < (menor), = (igual), != (diferente). Além disso, podemos
-- usar outros operadores como SUM (soma), AVG (media), MIN (minimo), MAX (maximo)
select * from MY_DATABASE
where coluna > 1000;

-- BETWEEN: retorna valores entre 1000 e 2000
select * from MY_DATABASE
where coluna between 1000 and 2000;

-- Agregação: conta todos os valores do banco, nesse caso
-- retorna a quantidade de linhas
select count(*) from MY_DATABASE;

-- Agregação usando "Where": rotorna a quantidade de valores
-- em que a 'coluna' é maior que 1000
select count(*) from MY_DATABASE
where coluna > 1000;

-- Agrupamento: retorna valores agrupados e ordena em ordem 
-- decresente
select coluna, count(coluna) from MY_DATABASE
group by coluna order by desc;

-- DISTINCT: retorna valores unicos, sem repetição
select distinct coluna from MY_DATABASE;  

------------------------- JOINS -------------------------

--INNER JOINS
-- Ex: existem 20 vendedeores
select COUNT(*) from MY_SCHEMA.vendedores ;

--Ex: existem 500 vendas
select COUNT(*) from MY_SCHEMA.vendas ;

-- INNER JOIN deve retornar 500, ja que toda venda possui um vendedor
select count(*) from MY_SCHEMA.vendas as vendas
inner join MY_SCHEMA.vendedores as vendedores on(vendas.VENDEDORES = vendedores.VENDEDORES);

--LEFT JOIN deeve retornar 500, ja que toda venda possui um vendedor
select count(*)  from MY_SCHEMA.vendas as vendas
left join MY_SCHEMA.vendedores as vendedores on(vendas.VENDEDORES = vendedores.VENDEDORES);

--insere novo vendedor
INSERT INTO MY_SCHEMA.vendedores(nome) VALUES ('Gustavo');

--RIGHT JOIN deve retornar 501, pois há um vendedor sem vendas (Gustavo)
select count(*)  from MY_SCHEMA.vendas as vendas 
right join MY_SCHEMA.vendedores as vendedores on(vendas.VENDEDORES = vendedores.VENDEDORES);

-- Retorna o ultimo registro (venda e seu vendedor)
select *  from MY_SCHEMA.vendas as vendas
right join MY_SCHEMA.vendedores as vendedores  
on(vendas.VENDEDORES = vendedores.VENDEDORES) order by VENDEDORES desc limit 1;
