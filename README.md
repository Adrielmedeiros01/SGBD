# SGBD

https://youtu.be/wXViczeTr6Q?si=UvH77gNxTWNlgc6G

# CRIANDO O BD:

create database meuBD

default character set utf8 

default collate utf8_general_ci;

##

# CRIANDO UMA TABELA:

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




insert into nomedatabela  

(id, nome, nascimento, sexo, peso, altura, nacionalidade) 

values 

('0','Adriel', '2002-03-15', 'M', '59.0','1.65', 'brasileiro'); 
 
- Inserindo vários dados:

insert into pessoas 

(nome, nascimento, sexo, peso, altura, nacionalidade) 

values 

('Alice', '2019-01-25', 'F', '30.0','1.00', 'Brasil'), 

('Alice', '2019-01-25', 'F', '30.0','1.00', 'Brasil'), 

('Alice', '2019-01-25', 'F', '30.0','1.00', 'Brasil'); 


##


