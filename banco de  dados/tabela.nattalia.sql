CREATE DATABASE ProjetoPI;

USE ProjetoPI;
CREATE DATABASE PI;
USE PI;

CREATE TABLE Cadastro (
id INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR (100),
CNPJ VARCHAR (14),
Email VARCHAR(50),
Telefone VARCHAR(11)
);

INSERT INTO Cadastro (Nome, CNPJ, Email, Telefone) VALUES
('Ataí','12356487964725', 'ataiatacadista@outlook.com', '11966396825'),
('Atacadions','12356487964725', 'atacadionsmercados@outlook.com', '11966396825'),
('Ciga Atacado','12356487964725', 'cigatacado@outlook.com', '11966396459'),
('Senda Atacado','12356487964725', 'sendaatacado@outlook.com', '11966897645');


CREATE TABLE Arduino (
id INT PRIMARY KEY AUTO_INCREMENT,
DatadoFluxo DATE,
DiadaSemana VARCHAR(8) 
CONSTRAINT chkSemana
	CHECK (DiadaSemana= 'Segunda' OR DiadaSemana= 'Terça' OR DiadaSemana= 'Quarta' OR DiadaSemana= 'Quinta' OR DiadaSemana= 'Sexta' OR DiadaSemana= 'Sabádo' OR DiadaSemana= 'Domingo'),
Turno VARCHAR (6)
 CONSTRAINT chkTurno
	CHECK (Turno = 'Manhã' OR Turno = 'Tarde' OR Turno = 'Noite'),
Setor VARCHAR(70)
);

INSERT INTO Arduino (DatadoFluxo, DiadaSemana, Turno, Setor) VALUE
('2025-02-01', 'Segunda', 'Manhã', 'Laticínios'),
('2025-02-01', 'Segunda', 'Tarde', 'Laticínios'),
('2025-02-01', 'Segunda', 'Noite', 'Laticínios'),
('2025-02-02', 'Terça', 'Manhã', 'Congelados'),
('2025-02-02', 'Terça', 'Tarde', 'Congelados'),
('2025-02-02', 'Terça', 'Noite', 'Congelados'),
('2025-02-03', 'Quarta', 'Manhã', 'Grãos'),
('2025-02-03', 'Quarta', 'Tarde', 'Grãos'),
('2025-02-03', 'Quarta', 'Noite', 'Grãos');

SELECT * FROM Arduino;


CREATE TABLE funcionarios (
id INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(50),
sobrenome VARCHAR(50),
idade INT,
sexo VARCHAR(10),
CONSTRAINT chkSexo
		CHECK (sexo = 'masculino' OR sexo = 'feminino'),
cargo VARCHAR(30),
CONSTRAINT chkCargo
		CHECK (cargo = 'gerente' OR cargo = 'repositor' OR cargo = 'analista')
);


INSERT INTO funcionarios (Nome, sobrenome, idade, cargo) VALUES
('joão', 'silva', 18, 'analista'),
('natalia', 'sousa', 25, 'gerente'),
('lucas', 'mendes', 19, 'repositor');



