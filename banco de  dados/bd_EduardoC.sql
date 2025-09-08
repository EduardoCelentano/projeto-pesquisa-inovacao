create database sprint;

use sprint;

CREATE TABLE usuario (
id INT PRIMARY KEY auto_increment, 
nome VARCHAR(40),
empresa VARCHAR(30),
cnpj varchar(20),
endereco varchar(60),
email varchar(70)
);

INSERT INTO usuario (nome, empresa, cnpj, endereco,email) VALUES
	('Celber','Company','64.824.248/0001-50','rua strange 223','bajav82125@chaublog.com'),
	('Jenny','Movies','38.187.822/0001-04','rua blueberry 1067','monserra3580@uorak.com'),
	('Marcos','Casas salvador','11.220.183/0001-77','rua angaturama 350','gheroghe6866@uorak.com'),
	('Maria','Mb Donaldo','52.248.242/0001-00','rua velha da penha 265','badr355@uorak.com'),
	('Rogerio','Garfield','27.785.611/0001-49','rua donjuan 12','maiquel7026@uorak.com');
    
    select * from usuario;
    
    
CREATE TABLE arduino (
id INT PRIMARY KEY auto_increment, 
corredor VARCHAR(40),
loja VARCHAR(30),
quantidade varchar(20),
endereco varchar(60),
fluxo varchar(70)
);

INSERT INTO arduino (corredor, loja, quantidade, endereco,fluxo) VALUES
	(' corredor 1','Assai','2','rua arthur 245','239'),
	(' corredor 2','carfull','3','rua cleber 134','987'),
	(' corredor 3','Casas RJ','1','rua morename 333','34'),
	(' corredor 4','Pao doce','5','rua velha da casa 265','765'),
	(' corredor 5','Atacadinho','2','rua oruan 42','124'),
	(' corredor 6','mesxtra','7','rua jakquim 12','78'),
	(' corredor 7','zurist','6','rua machado 21','457'),
	(' corredor 8','credicty','9','rua cuscu 667','23'),
	(' corredor 9','kuyque','8','rua oplinho 908','1876'),
	(' corredor 10','membery','2','rua tue 30','57');
    
    select * from arduino;
    
    
    CREATE TABLE satisfacao (
id INT PRIMARY KEY auto_increment, 
cliente VARCHAR(40),
satisfeito VARCHAR(30),
insatisfeito varchar(20)
);

INSERT INTO satisfacao (cliente, satisfeito, insatisfeito) VALUES
('Celber','Sim','Nao'),
('Jenny','Nao','Sim'),
('Marcos','Sim','Nao'),
('Maria','Sim','Nao'),
('Rogerio','Sim','Nao');

select * from satisfacao;



