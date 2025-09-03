create database maternidade;

use maternidade;

CREATE TABLE mae (
  idMae int AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  telefone varchar(20) NOT NULL,
  dataNascimento datetime NOT NULL,
  PRIMARY KEY (idMae)
);

CREATE TABLE especialidade (
  idEspecialidade int AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  PRIMARY KEY (idEspecialidade)
);

CREATE TABLE medico (
  idMedico int  AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  crm varchar(100) NOT NULL,
  telefone varchar(100) NOT NULL,
  medicoEspecialidade int,
  PRIMARY KEY (idMedico),
  FOREIGN KEY (medicoEspecialidade) REFERENCES especialidade(idEspecialidade)
);


CREATE TABLE parto (
  idParto int AUTO_INCREMENT,
  dataHora datetime NOT NULL,
  localidade varchar(100) NOT NULL,
  idmed int,
  PRIMARY KEY (idParto),
  FOREIGN KEY (idmed) REFERENCES  medico(idMedico)
);

CREATE TABLE bebe (
  idBebe int  AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  dataNascimento datetime NOT NULL,
  pesoNascimento double NOT NULL,
  alturaNascimento double NOT NULL,
  partoId int,
  maeId int,
  PRIMARY KEY (idBebe),
  FOREIGN KEY (partoId) REFERENCES parto(idParto),
  FOREIGN KEY (maeId) REFERENCES mae(idMae)
)










