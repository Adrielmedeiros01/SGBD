-- # Operador like:

-- * Utilizado para procurar um padrão especificado em uma coluna;

-- (EX:)
select * from nomeTabela
where nomeColuna LIKE '_L%'  -- Começa com uma letra qualquer '_' e a segunda letra é um L

-- O sinal de porcentagem % representa zero, um ou vários caracteres;
-- O sinal de sublinhado _ representa um único caractere qualquer;

--# Retornar todos que contém a letra 'L':
SELECT * FROM Customers
WHERE city LIKE '%L%';


--# Retornar todos que iniciam com a letra 'A':
SELECT * FROM Customers
WHERE city LIKE 'A%';

--# Retornar todos que iniciam com a letra 'A':
SELECT * FROM Customers
WHERE city LIKE '%A';


-- # Começa com a letra 'A' e tem 4 caracteres:
select * from cliente where primeiro_nome like 'M___'; 


-- Selecionando os 3 primeiros em ordem crescente começando pela letra 'C%'
select * from filme where titulo like 'C%'
order by titulo
limit 3;

-- Seleciona todos que possua 'dog' no título ou na descrição e que o ano seja 2006 com a duração do filme de forma decrescente:
select * from filme where titulo like '%dog%' or descricao like '%dog%' and ano_de_lancamento = '2006'
order by duracao_do_filme desc;
