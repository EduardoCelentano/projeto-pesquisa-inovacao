create database tpi;
use tpi;

create table cadastros (
id int primary key auto_increment,
nome varchar (60),
empresa varchar (50),
CNJP varchar (20),
CEP varchar (10),
RUA varchar (50),
Bairro varchar (50),
Cidade varchar (20),
UF varchar (2),
TELEFONE varchar (20),
Email varchar (40),
RAMO varchar (40),
Senha varchar(105)
);
 
insert into cadastro (nome,empresa,CNJP,CEP,RUA,Bairro,Cidade,UF,TELEFONE,Email,RAMO,Senha) Value
('A',"Ridinho","66.034.282.0001-56","64213-306",'Quadra S4','Primavera',"Parnaíba",'PI',"11993487389",'12345@gmaiu.jon','alimenticio','JDm20981518HH'),
('B', 'Loja Sol','123.456.789-01','64213-306','Rua das Flores','Centro','Parnaíba', 'PI','11998887766','lojasol@email.com','vestuário','KEYa90231XK'),
('C', 'Mercadinho B','987.654.321-00','64000-100','Av. Brasil','São José','Teresina', 'PI','86991234567','mercb@dominio.com','alimentício','ACCd9281JJ'),
('D', 'Super Alfa','456.789.123-55','64300-222','Rua Verde','Primavera','Parnaíba', 'PI','86999887711','supalfa@email.com','bebidas','PWDm1182ZZ'),
('E', 'Padaria Doce','741.852.963-44','64010-500','Rua do Pão','Centro','Teresina', 'PI','86991112233','padaria@teste.org','alimentício','YTGm2019HH'),
('F', 'Boutique X','852.963.741-22','64220-310','Av. Maranhão','Cidade Alta','Parnaíba','PI','86992223344','boutique@email.org','moda','TTRq6618QQ'),
('G', 'Loja Digital','369.258.147-99','64005-200','Travessa Norte','Industrial','Teresina','PI','86993334455','lojadtl@dominio.com','eletrônicos','KLPn7745MM');



create table arduino(
id int primary key auto_increment,
Setor VARCHAR (20),
Fluxo VARCHAR (4),
dt_dado datetime

);

INSERT INTO Arduino (Setor, Fluxo,dt_dado) VALUES
('Setor A',62,'2025-08-29 10:15:32'),
('Setor B',34,'2025-08-29 12:45:07'),
('Setor C',26,'2025-08-29 15:23:54'),
('Setor D',67,'2025-08-29 18:40:12'),
('Setor E',98,'2025-08-30 08:05:44'),
('Setor O',73,'2025-08-30 11:59:27'),
('Setor Z',38,'2025-08-30 20:33:59');


select * from arduino;

CREATE TABLE crescimento_venda (
    id INT PRIMARY KEY AUTO_INCREMENT,
    periodo DATETIME,             
    percentual_crescimento DECIMAL(5,2)   
);


INSERT INTO crescimento_vendas (periodo, percentual_crescimento) VALUES
('2025-01-10 14:32:45', 5.20),
('2025-02-15 09:12:10', 3.75),
('2025-03-20 18:45:33', 7.10),
('2025-04-05 11:05:50', -2.45),
('2025-05-08 20:15:27', 4.80),
('2025-06-12 08:30:14', 6.00),
('2025-07-25 23:59:59', 8.33);

truncate table crescimento_vendas;