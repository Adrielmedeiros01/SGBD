create database livraria;
use livraria;

CREATE TABLE `autores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `dataNasc` datetime NOT NULL,
  `localNasc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `catalogo` (
  `idCatalogo` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `quantPag` int NOT NULL,
  `autorId` int DEFAULT NULL,
  PRIMARY KEY (`idCatalogo`),
  KEY `autorId` (`autorId`),
  CONSTRAINT `catalogo_ibfk_1` FOREIGN KEY (`autorId`) REFERENCES `autores` (`id`)
);


create table categorias(
idCategorias int auto_increment,
nome varchar(50) not null,
primary key(idCategorias)
);

create table livroCateg(
categId int,
livroId int,
foreign key (categId) references categorias(idCategorias),
foreign key (livroId) references catalogo(idCatalogo),
primary  key (categId, livroId)
);

insert into categorias(nome) values ("Computação"),("Aventura"),("Ficção");
insert into livroCateg(categId, livroId) values (1,1),(1,2),(2,3),(3,3);


insert into categorias (nome) values ("Eletronica");
insert into livrocateg(categId, livroId) values (4, 1);

delete from livrocateg where categId = 3 and livroId = 3;

update catalogo set quantPag = 300 where nome = "Banco de Dados";


show databases;
use livraria;
select * from autores;

show databases;
use livraria;
select * from catalogo;

show databases;
use livraria;
select * from livroCateg;

show databases;
use livraria;
select * from categorias;



