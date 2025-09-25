create database hospital;
use hospital;

create table paciente(

idPaciente int auto_increment,
nome varchar(50) not null,
telefone varchar(50) not null,
primary key (idPaciente)

);

create table especialidade(

idEspecialidade int auto_increment,
nome varchar(50) not null,
primary key(idEspecialidade)

);

create table medico(

idMedico int auto_increment,
nome varchar(50) not null,
crm varchar(50) not null,
especialidadeId int,
foreign key (especialidadeId) references especialidade(idEspecialidade),
primary key(idMedico)

);

create table consulta(

pacienteId int,
medicoId int,
dataConsulta date not null,
foreign key (pacienteId) references paciente(idPaciente),
foreign key (medicoId) references medico(idMedico),
primary key (pacienteId, medicoId, dataConsulta)

);

insert into paciente(nome, telefone) value
("Rafael","99999999"),
("Maria","88888888");
 
insert into especialidade(nome) value ("Cardiologia"),("Ortopedia");
 
insert into medico(nome,crm,especialidadeId) VALUES ("Godofredo","12345/PE", (SELECT idEspecialidade from especialidade where nome = "Cardiologia")); 
 
insert into medico(nome,crm,especialidadeId) select "Godofredo","12345/PE", especialidade.idEspecialidade from especialidade where especialidade.nome = "Cardiologia";

insert into medico(nome,crm,especialidadeId) select "Josefina","98765/RN",especialidade.idEspecialidade from especialidade where especialidade.nome = "Ortopedia";

insert into consulta(pacienteId, medicoId, dataConsulta) values ((select idPaciente from paciente where nome = "Maria" ),(select idMedico from medico where nome = "Josefina"), "2024-12-02");

update consulta set dataConsulta = "2025-01-08" where pacienteId = (select idPaciente from paciente where nome = "Maria");

delete from paciente where idPaciente = 1;

alter table paciente drop column telefone;


select * from medico
where crm = "12345/PE";

select * from especialidade
order by nome desc;






