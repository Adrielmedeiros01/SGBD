create database livraria;
use livraria;

create table autor(

idAutor int auto_increment,
nome varchar(50) not null,
dataNasc date not null,
localNasc varchar(50) not null,
primary key (idAutor)

);

create table catalogo(

idLivro int auto_increment,
nomeLivro varchar(50) not null,
quantPag int not null,
autorId int,
foreign key(autorId) references autor(idAutor),
primary key (idLivro)

);

insert into autor(nome, dataNasc, localNasc) value ("Goldofredo José da Silva","1920-12-31","Pindamonhangaba"),
("Josilene Maria do Carmo","1990-12-31","Paris");

insert into catalogo(nomeLivro, quantPag, autorId) select "Algoritmos e Estruturas de Dados", 600, autor.idAutor from autor where autor.idAutor = 1;
insert into catalogo(nomeLivro, quantPag, autorId) select "Banco de Dados", 215, autor.idAutor from autor where autor.idAutor = 1;
insert into catalogo(nomeLivro, quantPag, autorId) select "Harry Potter", 487, autor.idAutor from autor where autor.idAutor = 2;


create table categoria(

livroId int,
nomeCategoria varchar(50),
foreign key (livroId) references livro(idLivro)

);

insert into categoria(livroId, nomeCategoria) select catalogo.idLivro, "Computação" from catalogo where catalogo.nomeLivro = "Algoritmos e Estruturas de Dados";
insert into categoria(livroId, nomeCategoria) select catalogo.idLivro, "Computação" from catalogo where catalogo.nomeLivro = "Banco de Dados";
insert into categoria(livroId, nomeCategoria) select catalogo.idLivro, "Aventura, Ficção" from catalogo where catalogo.nomeLivro = "Harry Potter";
update categoria set nomeCategoria = "Computação, Passatempo" where livroId = 1 ;
update categoria set nomeCategoria = "Aventura" where livroId = 3 ;
update catalogo set quantPag = 300 where idLivro = 2;
