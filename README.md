# Modelo de Dados Relacional

Este repositório tem como objetivo principal demonstrar conceitos teóricos e nomeclaturas do modelo de banco de dados relacional, além de possuir alguns exemplos **simples** e explicativos de comandos em PostgreSQL.

## Sobre o modelo 

O modelo relacional, criado por Edgar Frank Codd em 1970, utiliza como principio o uso de **tabelas** para armazenamento de dados. O modelo se centra em dois conceitos: entidade e relação. 

- Uma entidade é um elemento com caracteristicas informadas na tabela. Na medida em que valores são atribuidos para uma entidade, a contrução da tabela é feita.
- A relação determina como os registros e informações de uma tabela se associam com os de outras tabelas.

Diversas implementações foram aplicadas usando o modelo relacional como base, dentre elas podemos citar [MySQL](https://www.mysql.com/), [Firebird](https://firebirdsql.org/), [PostgreSQL](https://www.postgresql.org/), [Oracle Database](https://www.oracle.com/br/database/), [SQL Server](https://www.microsoft.com/pt-br/sql-server/) e diversos outros.

A linguagem padrão do banco de dados relacional é o SQL, sigla para *Structured Query Language* (Linguagem de Consulta Estruturada). A linguagem SQL possui diversos subconjuntos, cada um com diferentes comandos para realizar operações especificas. Os subconjuntos são:

### Data Manipulation Language (DML)

Subconjunto responsável por realizar inserções, atualizações e exclusões no banco de dados. Seus comandos são:

- INSERT: usado para inserir um registro de uma tabela.
- UPDATE: usado para alterar/atualizar dados especificos de uma tabela.
- DELETE: usado para remover linhas/elementos de uma tabela.

### Data Definition Language (DDL)

Subconjunto responsável por criar tabelas, schemas e elementos. Seus comandos sâo:

- CREATE: cria um objeto para o banco de dados.
- DROP: deleta um objeto do banco de dados.

### Data Transaction Language (DTL)

Subconjunto resposável por efetuar transações (podem ser de gerenciamento) dentro do bano de dados. Seus comandos sâo:

- BEGIN: inicia qualquer transação.
- COMMIT: finaliza uma transação.
- ROLLBACK: descarta mudanças feitas desde o último COMMIT ou ROLLBACK.

### Data Query Language (DQL)

Subconjunto mais utilizado, por permite fazer consultar dentro de banco de dados utilizando o SELECT, que em sua construção permite elaborar uma Query mais elaborada. A estrutura primária da DQL é formada por:

- SELECT coluna(s) FROM table;

Entretando, podemos complementar a Query de diversas maneiras, para obter uma lista completa, você pode conferir a documentação do seu provedor. 

* [Documentação do PostgreSQL](https://www.postgresql.org/docs/9.3/sql.html)
* [Documentação do MySQL](https://dev.mysql.com/doc/)
* [Documentação do Oracle Database](https://docs.oracle.com/en/database/)

### Vantagens e Desvantagens

Dentre as principais **vantagens** do modelo relacional, podemos destacar:

* Suporte a controle de transações como: *incluir*, *excluir*, *alterar* e *consultar*
* Manter integridade
* Reduzir redundância
* Acesso concorrente

Entretando, o modelo relacional não é indicado para aplicações:

* Analíticas
* Que exigam alta escalabilidade
* Necessitem redundância de dados

## Sistemas de Operação

