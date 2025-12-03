DROP DATABASE IF EXISTS hospital;

CREATE DATABASE hospital;

USE hospital;

CREATE TABLE paciente(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    dataNascimento DATE
);

CREATE TABLE especialidade(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE medico(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    crm VARCHAR(50) NOT NULL,
    salario FLOAT NOT NULL,
    idEspecialidade INT NOT NULL,
    FOREIGN KEY (idEspecialidade) REFERENCES especialidade(id)
);

CREATE TABLE consulta(
	idMedico INT,
    idPaciente INT,
    dataConsulta DATETIME,
    PRIMARY KEY(idMedico, idPaciente, dataConsulta),
    FOREIGN KEY (idMedico) REFERENCES medico(id),
    FOREIGN KEY (idPaciente) REFERENCES paciente(id)
);

INSERT INTO especialidade (nome) VALUES
('Clínica geral'),
('Cardiologia'),
('Ortopedia'),
('Otorrinolaringologia');

INSERT INTO medico (nome, crm, salario, idEspecialidade) VALUES
('Rafael', '12345/PE', 10000, 1),
('Daniel', '99999/RN', 15000, 2),
('Fernando', '98765/RJ', 20000, 3),
('Suely', '77777/CE', 25000, 1),
('Roberta', '10101/PE', 30000, 3),
('Godofredo', '55555/RS', 35000, 1);

INSERT INTO paciente (nome, dataNascimento) VALUES
('José', '1988-05-03'),
('Maria', '1986-02-01'),
('Josué', '1985-11-22'),
('João', '2000-10-19'),
('Melissa', '1998-04-12'),
('Jéssica', '2005-09-30'),
('Caio', '1975-07-08'),
('Roger', '1993-04-17'),
('Cinthya', '2002-12-16'),
('Dennis', '1995-06-24');

INSERT INTO consulta (idMedico, idPaciente, dataConsulta) VALUES
(1, 7, '2024-11-24 13:30'),
(2, 10, '2022-12-19 12:00'),
(4, 3, '2025-05-29 09:30'),
(1, 5, '2021-03-11 18:50'),
(1, 5, '2024-02-03 15:00'),
(3, 6, '2023-05-07 11:30'),
(4, 9, '2020-01-23 10:00'),
(5, 2, '2022-09-30 15:00'),
(2, 8, '2024-10-01 14:15'),
(5, 1, '2025-06-05 19:00'),
(4, 8, '2024-08-15 13:25'),
(1, 7, '2023-09-17 08:00'),
(2, 5, '2024-04-29 15:45'),
(1, 10, '2019-08-10 16:00');
