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

insert into nomedatabela  

(item1, item2, item3, item4, item5, item6) 

values 

('value1','value2', 'value3', 'value4', 'value5','value6'); 
 
##

- Inserindo vários dados:

##

(item1, item2, item3, item4, item5, item6) 

values 

('value1','value2', 'value3', 'value4', 'value5','value6'),

('value1','value2', 'value3', 'value4', 'value5','value6'),

('value1','value2', 'value3', 'value4', 'value5','value6'); 
 
 



##


