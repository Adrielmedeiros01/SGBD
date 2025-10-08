
create database biblioteca;
use biblioteca;

create table cliente(

idCliente int auto_increment,
nome varchar(50) not null,
cpf varchar(50) not null,
telefone varchar(50)  not null,
primary key(idCliente)


);


create table bibliotecario(

idBibliotecario int auto_increment,
nome varchar(50) not null,
matricula varchar(50) not null,
primary key (idBibliotecario)

);

create table categoria(

idCateg int auto_increment,
nome varchar(50) not null,
primary key(idCateg)

);

create table autor(

idAutor int auto_increment,
nome varchar(50) not null,
primary key (idAutor)

);


create table livro(

idLivro int auto_increment,
nome varchar(50) not null,
preco float not null,
autorId int,
categId int,

foreign key (autorId) references autor(idAutor),
foreign key (categId) references categoria(idCateg),
primary key (idLivro)

);

create table reserva(

clienteId int,
livroId int,
dataReserva date not null,
bibliotecarioId int,

foreign key (clienteId) references cliente(idCliente),
foreign key (livroId) references livro(idLivro),
foreign key (bibliotecarioId) references bibliotecario(idBibliotecario),
primary key (clienteId, livroId, dataReserva)

);


insert into cliente(nome, cpf, telefone) values 
("João Godofredo", "555555","(87)9999999"),
("Maria das Graças","777777","(81)8888888");

insert into autor(nome) values 
("J. K. Rowling"),
("J. R. R. Tolkien");

insert into categoria(nome) values 
("Suspense"),
("Aventura");

insert into livro(nome, preco, autorId, categId) values
("Harry Potter", 7, (select idAutor from autor where nome = "J. K. Rowling"),
(select idCateg from categoria where nome = "Suspense"));
 
 insert into livro(nome, preco, autorId, categId) values
("O Senhor dos Anéis", 5, (select idAutor from autor where nome = "J. R. R. Tolkien"),
 (select idCateg from categoria where nome = "Aventura"));
 
 insert into bibliotecario(nome, matricula) values ("Eduardo José", "12345");
 
 insert into reserva(clienteId, livroId, dataReserva, bibliotecarioId) values
 ((select idCliente from cliente  where nome = "João Godofredo"),
 (select idLivro from livro where nome = "O Senhor dos Anéis"),
 "2025/10/08",
 (select idBibliotecario from bibliotecario where nome = "Eduardo José")
 );
 
 
delete from cliente where nome = "Maria das Graças";
update cliente set telefone = "(81)2222222" where nome = "João Godofredo";
alter table livro add column dataIsercao date default "2025/10/08";


select nome, cpf from cliente where telefone = "";
select nome, preco from livro where preco between 5 and 10;
 
 
