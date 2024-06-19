# SGBD

https://youtu.be/wXViczeTr6Q?si=UvH77gNxTWNlgc6G

# CRIANDO O BD:

create database meuBD
default character set utf8 
default collate utf8_general_ci;

# CRIANDO UMA TABELA:

create table minhatab(

item1 int not null auto_incremente,
item2 varchar(20) not null,
item3 enum('M', 'F'),
item4 date,
item5
primary Key(item1)

)default charset=utf8;


