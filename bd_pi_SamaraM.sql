create database ProjetoPI;
use ProjetoPI;

-- nome: Análise e Monitoramento do Fluxo de Clientes em Mercados Varejistas utilizando Sensores Ultrassônicos
-- cadastro dos clientes (mercados varejistas)

create table cadastro_clientes (
    id_cliente int primary key auto_increment,
    nome_responsavel varchar(50) not null,
    nome_estabelecimento varchar(100) not null,
    email varchar(100) not null unique,
    cep varchar(10) not null,
    rua varchar(50) not null,
    bairro varchar(50) not null,
    cidade varchar(50) not null,
    uf char(2) not null,
    cnpj varchar(20) not null unique,
    telefone1 varchar(15) not null,
    telefone2 varchar(15),
    modelo_negocio varchar(20) not null default 'Varejo',
    senha varchar(200) not null,
    constraint chk_modelo_negocio check(modelo_negocio in ('Varejo'))
);

insert into cadastro_clientes 
(nome_responsavel, nome_estabelecimento, email, cep, rua, bairro, cidade, uf, cnpj, telefone1, telefone2, modelo_negocio, senha) values
('Samara Mendonça', 'Varejo Sams', 'varejo.sams@outlook.com', '06262-621', 'Rua Cebolinha', 'Limoeiro', 'São Paulo', 'SP', '55.421.719/1009-00', '(11)1919-0000', null, 'Varejo', '123456'),
('Leticia Costa', 'Varejo Costa', 'varejo.costa@outlook.com', '06263-621', 'Rua Magali', 'Limoeiro', 'São Paulo', 'SP', '00.421.719/1009-00', '(11)9919-0000', null, 'Varejo', 'abcdef'),
('Nattalia Siqueira', 'Siqueira Varejista', 'siqueira.varejo@outlook.com', '06692-621', 'Rua Mônica', 'Limoeiro', 'São Paulo', 'SP', '55.000.719/1009-00', '(11)8919-0000', null, 'Varejo', 'senha123'),
('Vicky Silva', 'Varejo Vickys', 'varejo.vickys@outlook.com', '06292-621', 'Rua Cascão', 'Limoeiro', 'São Paulo', 'SP', '55.421.719/1209-09', '(11)1919-1244', null, 'Varejo', '321654'),
('Luana Nascimento', 'Nascimento Varejo', 'nascimento.varejo@outlook.com', '06062-621', 'Rua Anjinho', 'Limoeiro', 'São Paulo', 'SP', '09.421.719/1079-00', '(11)9119-9876', null, 'Varejo', 'luana2025');


-- leituras do sensor ultrassônico (fluxo de clientes)
-- lembrete: a 'qtd_clientes' é a quantidade de clientes passados naquele horario

create table fluxo_clientes (
    id_fluxo int primary key auto_increment,
    id_cliente int,
    data_leitura date not null,
    hora_leitura time not null,
    secao varchar(30) not null,
    qtd_clientes decimal(6,1) not null,
    constraint fk_cliente_fluxo foreign key (id_cliente) references cadastro_clientes(id_cliente)
);

-- Leituras de fluxo no Varejo Sams (cliente 1)
insert into fluxo_clientes (id_cliente, data_leitura, hora_leitura, secao, qtd_clientes) values
(1, '2025-08-25', '08:00:00', 'Padaria', 35.0),
(1, '2025-08-25', '10:00:00', 'Hortifruti', 58.0),
(1, '2025-08-25', '12:00:00', 'Carnes', 72.0),
(1, '2025-08-25', '14:00:00', 'Frios', 40.0),
(1, '2025-08-25', '16:00:00', 'Não Perecíveis', 95.0);

-- análise/validação do fluxo pelos clientes
-- o id analise e cliente - serão as mesmas infos

create table analise_fluxo (
    id_analise int primary key auto_increment,
    id_cliente int,
    vendas_estimada decimal(10,2),
    fluxo_medio int,
    avaliacao int,
    satisfacao varchar(15),
    constraint fk_cliente_analise foreign key (id_cliente) references cadastro_clientes(id_cliente),
    constraint chk_avaliacao check(avaliacao between 0 and 10),
    constraint chk_satisfacao check(satisfacao in ('Ótimo','Bom','Ruim'))
);

insert into analise_fluxo (id_cliente, vendas_estimada, fluxo_medio, avaliacao, satisfacao) values
(1, 150000.00, 60, 9, 'Ótimo'),       -- varejo Sams
(2, 120000.00, 52, 8, 'Bom'),         -- varejo Costa
(3, 180000.00, 70, 10, 'Ótimo'),      -- Siqueira varejista
(4, 100000.00, 48, 7, 'Bom'),         -- varejo Vickys
(5, 90000.00, 40, 6, 'Ruim');         -- Nascimento varejo

