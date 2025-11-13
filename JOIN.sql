
-- Fazer uma busca extraindo e juntando dados de tabelas diferentes;
/*
# Consulta:
  -Implcita: WHERE
  -Explicita: JOIN
*/
/*
# JOIN {
SELECT p.nomeprod, c.nomecat
FROM produto p
JOIN catgoria c ON p.idcategoria = c.idcategoria
}
# LEFT JOIN {
SELECT p.nomeprod, c.nomecat
FROM produto p
LEFT JOIN catgoria c ON p.idcategoria = c.idcategoria
}
# RIGHT JOIN {
SELECT p.nomeprod, c.nomecat
FROM produto p
RIGHT JOIN catgoria c ON p.idcategoria = c.idcategoria
}
# FULL JOIN (Depende do SGBD){
SELECT p.nomeprod, c.nomecat
FROM produto p
FULL JOIN catgoria c ON p.idcategoria = c.idcategoria
}
*/
/*
# (Junção Base)Produto cartesiano:
    select * from tabela1, tabela2
*/

use locadora;

select e.filme_id, e.titulo, i.nome as idioma
from filme f
join idioma i on f.idioma_id = i.idioma_id;


select c.primeiro_nome, c.email, e.telefone
from cliente c
join endereco e on c.endereco_id = e.endereco_id;


select f.titulo, c.nome
from filme f
join filme_categoria fc on f.filme_id = fc.filme_id
join categoria c on fc.categoria_id = c.categoria_id;


select c.primeiro_nome as cliente, f.primeiro_nome as funcionario, p.valor,  p.data_de_pagamento
from pagamento p
join cliente c on p.cliente_id = c.cliente_id
join funcionario f on p.funcionario_id = f.funcionario_id;


select c.primeiro_nome, c.ultimo_nome, c.email, ci.cidade 
from cliente c
join endereco e on c.endereco_id = e.endereco_id
join cidade ci on e.cidade_id = ci.cidade_id
join pais p on ci.pais_id = p.pais_id
where p.pais = "Brazil";


select f.primeiro_nome as nome_funcionario, p.valor as pagamentos_processados
from funcionario f
join pagamento p on f.funcionario_id = p.funcionario_id;













