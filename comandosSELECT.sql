-- Link BANCO DE DADOS EXEMPLO PARA CONSULTA: https://drive.google.com/file/d/1piXa1YKubaulDQDG_R5b0wBwwcfYQWP8/view

/*
Sintaxe:
	'select' nomeColuna
	'from' nomeTabela 
	'where' condição
*/
use locadora;

-- Trás todos os dados da tabela:
select * from cliente;

-- Trás os dados apenas das colunas solicitadas:
select primeiro_nome, ultimo_nome, email
from cliente;

-- Trás uma quantidade específica de linhas de acordo com a quantidade colocada no LIMIT:
select *
from filme
limit 5;

-- Força a eliminação de duplicações/repetições:

select distinct primeiro_nome
from ator;

-- Criar apelidos para colunas e tabelas utilizando os AS:
	-- Coluna:
	-- select nomeColuna 'as' 'apelido' from tabela;
	-- Tabela:
	-- select c.nome from cliente as c;
select primeiro_nome as nome, ultimo_nome as sobrenome 
from cliente;

-- Concatenar registros de colunas utilizando o CONCAT:
select concat(primeiro_nome, ' - ', ultimo_nome) as "Nome_completo" from ator;

-- Expressões aritméticas:
	 -- Criando uma nova coluna com apelido:
select titulo, preco_da_locacao, preco_da_locacao*5 as preco_reais  from filme;

select *  from filme where ano_de_lancamento = 2006 and classificacao =  "PG";

-- Verificar a quantidade de rasultados da consulta:
select count(*)  from filme where ano_de_lancamento = 2006 and classificacao =  "PG";


select * from filme where preco_da_locacao >= 0.99 and preco_da_locacao <= 2.99;

-- Especificar condições em que o valor deve estar contido com o BETWEEN: 
select * from filme where preco_da_locacao between 0.99 and 2.00;
select * from filme where preco_da_locacao not between 0.99 and 2.00;
select * from filme where duracao_do_filme between 60 and 80;
select data_de_aluguel from aluguel  where data_de_aluguel between "2005-05-24" and "2005-06-24" limit 10;

-- A ORDER BY palavra-chave classifica os registros em ordem 
-- crescente por padrão. Para classificar os registros em ordem decrescente,
-- use a DESC palavra-chave.

use locadora;

select * from cliente;
select distinct primeiro_nome, ultimo_nome
from cliente
order by ultimo_nome;

select * from endereco;
select endereco, bairro, cep, telefone
from endereco
order by bairro, endereco;

select * from filme;
select titulo, descricao, duracao_do_filme, preco_da_locacao
from filme
where duracao_do_filme >= 100 and ano_de_lancamento = 2006
order by preco_da_locacao desc
limit 5;

