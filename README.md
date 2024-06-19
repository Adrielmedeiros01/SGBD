# SGBD

##

https://youtu.be/wXViczeTr6Q?si=UvH77gNxTWNlgc6G

##

# CRIANDO O BD:

##

create database meuBD

default character set utf8 

default collate utf8_general_ci;

##

# CRIANDO UMA TABELA:

##

create table minhatab(

item1 int not null auto_increment,

item2 varchar(20) not null,

item3 enum('M', 'F'),

item4 date,

item5 decimal(3,2),

item6 varchar(20) default 'Brasil',

primary key(item1)

) default charset=utf8;

##

# INSERINDO DADOS:

##

insert into minhatab  

(item1, item2, item3, item4, item5, item6) 

values 

('value1','value2', 'value3', 'value4', 'value5','value6'); 
 
##

- Inserindo vários dados:

##

insert into minhatab

(item1, item2, item3, item4, item5, item6) 

values 

('value1','value2', 'value3', 'value4', 'value5','value6'),

('value1','value2', 'value3', 'value4', 'value5','value6'),

('value1','value2', 'value3', 'value4', 'value5','value6'); 

##

# ADICIONAR COLUNAA: 

##

alter table minhatab 
add column nomecoluna tipoprimitivo; 

- Dessa forma a coluna sempre será adicionada ao fim da tabela; 


## 

##

# REMOVER COLUNAS: 

##

alter table minhatab

drop column nomecoluna; 


##

# POSIÇÃO ESPECÍFICA:

##

alter table minhatab 

add column nomecoluna tipoprimitivo after nomecoluna;

##

# PRIMEIRA COLUNA: 

alter table minhatab 

add column nomecolum tipoprimitivo first; 

##

*Para alterar a estrutura da definição { 

alter table nometable 
modify column profissão varchar(EX:20); 


Você consegue alterar o tipo primitivo e constrencts; 

} 

*Para modificar um nome de uma coluna { 

alter table nometabela 
change column profissao EX: prof varchar(20) 


} 

*Para renomear a tabela { 

alter table pessoas 
rename to garfanhotos; 


} 


Para apagar a tabela { 

drop table nometabela; 
drop id exists nometabela; 



} 


