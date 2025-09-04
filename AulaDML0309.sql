create database redeSocial;
use redeSocial;

create table usuario(

idUser int auto_increment,
nome varchar(50) not null,
email varchar(50) not null,
senha varchar(50) not null,
login varchar(50) not null,
primary key (idUser)
);

create table comentario(
idComent int auto_increment,
comentario varchar(1000),
datac datetime not null,
userId int,
foreign key (userId) references usuario(idUser),
primary key (idComent)
);

insert into usuario(nome,email,senha,login) value
("Maria", "m@gmail.com", 123, "maria"),
("José", "j@gmail.com", 111, "jose"),
("Paulo", "p@gmail.com", 999, "paulo"),
("Ana", "a@gmail.com", 22, "ana"),
("Felipe", "f@gmail.com", 98765, "felipe");

insert into comentario(comentario, datac) value
("Legal", "2020-05-23 16:12:00"),
("Muito bom!",  "2021-05-23 00:30:00"),
("Gostei", "2027-05-23 12:15:00"),
("UP", "2029-05-23 07:47:00");

update comentario set userId = 3
where idComent = 4;

update comentario set userId = 3
where idComent = 7 or idComent = 9;

show databases;
use redeSocial;
select * from usuario;

delete from usuario where idUser = 4;
delete from comentario where comentario = "Gostei";
delete from usuario where email = "m@gmail.com";

update usuario set senha = "777"
where idUser = 5;

update comentario set comentario = "Massa"
where idComent = 4;

update comentario set datac = "2025-09-03 21:27:00"
where idComent = 4;












