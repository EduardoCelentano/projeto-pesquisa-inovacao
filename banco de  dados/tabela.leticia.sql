CREATE DATABASE projetoPI;
use projetoPI;

CREATE Table cadastro (
id INT PRIMARY KEY AUTO_INCREMENT,
empresa VARCHAR(50),
nome VARCHAR(100),
email VARCHAR(100),
senha VARCHAR(10),
CNPJ CHAR(18),
telefone CHAR(14)
);

-- DROP TABLE cadastro;
select * from cadastro;

INSERT INTO cadastro VALUES
(DEFAULT, 'Atacado', 'João da Silva', 'joao.silva@gmail.com', 'JO12345678', '00.623.904/0001-73', '(11)91122-3344'),
(DEFAULT, 'Açai', 'Maria Ferreira', 'maria.ferreira@gmail.com', 'MA12345678', '00.623.904/0001-74', '(11)91122-3355'),
(DEFAULT, 'Mercadinho da Ana', 'Ana Nascimento', 'ana.nascimento@gmail.com', 'ANA1234567', '00.623.904/0001-75', '(11)91122-3366'),
(DEFAULT, 'Varejo do Pedro', 'Pedro dos Santos', 'pedro.santos@gmail.com', 'PE12345678', '00.623.904/0001-76', '(11)91122-3377');



CREATE Table arduino (
id INT PRIMARY KEY AUTO_INCREMENT,
quantidadeDePessoas INT,
horárioEntrada time,
horárioSaída time, 
seção VARCHAR(50),
dtDaCompra date,
diaDaSemana VARCHAR(20)
CONSTRAINT chkSemana 
      CHECK (diaDaSemana IN ('Segunda-feira' , 'Terça-feira', 'Quarta-feira', 'Quinta-feira', 'Sexta-feira', 'Sábado', 'Domingo'))
);

-- DROP TABLE arduino;
SELECT * FROM arduino;

INSERT INTO arduino VALUES
(DEFAULT, 80, '18:30:25', '18:50:30', 'Hortifruti', '2025-08-20', 'Quarta-feira'),
(DEFAULT, 75, '10:45:15', '11:00:50', 'Frios e Laticínios', '2025-08-21', 'Quinta-feira'),
(DEFAULT, 68, '17:27:39', '17:52:18', 'Padaria', '2025-08-22', 'Sexta-feira'),
(DEFAULT, 84, '19:50:23', '20:15:11', 'Bebidas', '2025-08-23', 'Sábado');



CREATE Table validação (
idCliente INT PRIMARY KEY AUTO_INCREMENT,
venda_estimada decimal(8,2),
venda_real decimal(8,2),
fluxoDeClientes INT,
avaliação VARCHAR(20)
CONSTRAINT chk_avaliação
      CHECK (avaliação IN ('Ótimo', 'Bom', 'Regular', 'Ruim', 'Péssimo'))
);

INSERT INTO validação VALUES 
(DEFAULT, 100000.00, 130000.00, 537, 'Ótimo'),
(DEFAULT, 100000.00, 110000.00, 496, 'Bom'),
(DEFAULT, 100000.00, 100000.00, 458, 'Regular'),
(DEFAULT, 100000.00, 95000.00, 432, 'Ruim'),
(DEFAULT, 100000.00, 86000.00, 420, 'Péssimo');

SELECT * FROM validação;