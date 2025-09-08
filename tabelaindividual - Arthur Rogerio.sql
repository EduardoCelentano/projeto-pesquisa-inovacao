CREATE DATABASE sprint1;

USE sprint1;

CREATE TABLE usuarios (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome_empresa VARCHAR(100) NOT NULL,
    cnpj VARCHAR(18) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(200) NOT NULL,
    telefone CHAR(11),
    data_cadastro DATETIME
);

INSERT INTO usuarios (nome_empresa, cnpj, email, senha, telefone) VALUES
('Tech Solutions LTDA', '12.345.678/0001-90', 'contato@techsolutions.com', 'senha123', '11912345678'),
('Smart Retail SA', '98.765.432/0001-55', 'suporte@smartretail.com', 'smart2024', '21998765432'),
('Eco Monitor ME', '45.678.912/0001-33', 'eco@monitor.com', 'eco#1234', '31987651111');

SELECT * FROM usuarios;

CREATE TABLE arduino (
    id_sensor INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    local_instalacao VARCHAR(150),
    status VARCHAR (7),
CONSTRAINT ChkStatus CHECK (status IN('ativo', 'inativo')),
    data_instalacao DATETIME
);

INSERT INTO arduino (id_usuario, local_instalacao, status) VALUES
(1, 'Loja - Setor de entrada', 'ativo'),
(1, 'Loja - Setor de carnes', 'inativo'),
(2, 'Supermercado - Corredor 1', 'ativo'),
(2, 'Supermercado - Corredor 2', 'ativo'),
(3, 'Supermercado - Corredor 3', 'ativo');

SELECT * FROM arduino;

CREATE TABLE planos (
    id_plano INT PRIMARY KEY AUTO_INCREMENT,
    nome_plano VARCHAR(100) NOT NULL,
    CONSTRAINT ChkNomeplano CHECK (nome_plano IN('diário', 'semanal','mensal','anual')),
    preco_mensal DECIMAL(10,2) NOT NULL,
    limite_sensores INT NOT NULL
);

INSERT INTO planos (nome_plano, preco_mensal, limite_sensores) VALUES
('Semanal', 99.90, 5),
('Mensal', 199.90, 2),
('Anual', 499.90, 4);

SELECT * FROM planos;
