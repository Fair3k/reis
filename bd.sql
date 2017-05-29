-- Authors = Leonardo Camargo && Rafael Reis
-- Date = 22/05/2017


-- ------------- Criação -------------
show databases;

DROP DATABASE if exists venda;
CREATE DATABASE venda;

use venda;
create table Cliente(
  cli_codigo int not null primary key auto_increment,
  cli_nome varchar(255) not null,
  cli_nascimento date,
  cli_cpf varchar(15),
  cli_rg varchar(10),
  cli_endereco varchar(255),
  cli_email varchar(255)
);

create table Categoria(
  cat_codigo int not null primary key auto_increment,
  cat_descricao varchar(255)
);

create table Produto(
  pro_codigo int not null primary key auto_increment,
  cat_codigo int not null,
  foreign key(cat_codigo)
  references Categoria(cat_codigo),
  pro_nome varchar(255),
  pro_preco float(15),
  pro_estoque integer(15)
);

create table Venda(
  ven_codigo int not null primary key auto_increment,
  cli_codigo int not null,
  foreign key(cli_codigo) references Cliente(cli_codigo),
  ven_data date
);

create table Item_Venda(
  item_codigo int not null primary key auto_increment,
  pro_codigo int not null,
  foreign key(pro_codigo)
  references Produto(pro_codigo),
  ven_codigo int not null,
  foreign key(ven_codigo)
  references Venda(ven_codigo),
  item_quantidade varchar(15),
  item_valor decimal(15, 3)
);


--  ------------- Tabela Cliente -------------


insert into Cliente (cli_nome, cli_nascimento, cli_cpf, cli_rg, cli_endereco, cli_email)
  values('Gato de Schrodinger', 261001, '54545413/56', '65446586-4', 'Rua do paradoxo', 'morri@etec.sp.gov.br');

insert into Cliente (cli_nome, cli_nascimento, cli_cpf, cli_rg, cli_endereco, cli_email)
  values('Gravidade da Situacao', 120513, '667428700/00', '54544554-7', 'Rua da ForcaG', 'StephenHalking@etec.sp.gov.br');

insert into Cliente (cli_nome, cli_nascimento, cli_cpf, cli_rg, cli_endereco, cli_email)
  values('Vaccum', 111101, '299792458/00', '60130008-7', 'Rua da velocidade da luz', 'Einstein@etec.sp.gov.br');

insert into Cliente (cli_nome, cli_nascimento, cli_cpf, cli_rg, cli_endereco, cli_email)
  values('XABLAU', 261001, '111111111/11', '60130008-7', 'Rua dos numerozinteiro', 'integer@etec.sp.gov.br');

insert into Cliente (cli_nome, cli_nascimento, cli_cpf, cli_rg, cli_endereco, cli_email)
  values('Melhor numero que vc respeita', 261001, '314159265/35', '60130008-7', 'Rua do PI', 'pi3.141592653589793@etec.sp.gov.br');

insert into Cliente (cli_nome, cli_nascimento, cli_cpf, cli_rg, cli_endereco, cli_email)
  values('Tangente', 261001, '561651651/35', '60130008-7', 'Rua da hipotenusa', 'seno/cosseno=eu@etec.sp.gov.br');

insert into Cliente (cli_nome, cli_nascimento, cli_cpf, cli_rg, cli_endereco, cli_email)
  values('Senhor das Trevas', 261001, '90909090/35', '60130008-7', 'Rua Adjacente', 'systemctl@etec.sp.gov.br');

insert into Cliente (cli_nome, cli_nascimento, cli_cpf, cli_rg, cli_endereco, cli_email)
  values('Mol', 261001, '6022101100/00', '60130008-7', 'Rua do seno', ' AugustWilhelm@etec.sp.gov.br');

insert into Cliente (cli_nome, cli_nascimento, cli_cpf, cli_rg, cli_endereco, cli_email)
  values('minino', 261001, '30303030/30', '60130008-7', 'Rua do minino', 'dhcpd@etec.sp.gov.br');

insert into Cliente (cli_nome, cli_nascimento, cli_cpf, cli_rg, cli_endereco, cli_email)
  values('Linus Torvalds', 261001, '65132165/32', '60130008-7', 'Rua do Sistema bom', 'LinuxMelhorQueRuindows@etec.sp.gov.br');


-- ------------- Tabela Categoria -------------


insert into Categoria (cat_descricao) values ('Frutas');

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (1, 'Uva', 4.00, 10);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (1, 'Laranja', 2.00, 52);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (1, 'Maca', 3.00, 23);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (1, 'Kiwi', 4.00, 10);



insert into Categoria (cat_descricao) values ('Carne');

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (2, 'Picanha', 26.00, 10);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (2, 'Joelho de Porco', 10.00, 10);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (2, 'Maminha', 20.00, 5);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (2, 'Frango', 23.00, 3);



insert into Categoria (cat_descricao) values ('Graos');

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (3, 'Feijao', 3.00, 150);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (3, 'Arroz', 2.00, 150);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (3, 'Cereal', 4.00, 150);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (3, 'Cariopse', 10.00, 150);



insert into Categoria (cat_descricao) values ('Frios');

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (4, 'Salame', 8.00, 100);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (4, 'Presunto', 5.00, 100);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (4, 'Mussarela', 6.00, 100);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (4, 'Mortandela', 8.00, 100);



insert into Categoria (cat_descricao) values ('MAR');

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (5, 'Tilapia', 31.00, 50);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (5, 'Pacu', 20.00, 50);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (5, 'Camarao', 28.00, 50);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (5, 'Bicuda', 25.00, 50);



insert into Categoria (cat_descricao) values ('Bebidas');

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (6, 'Mountain Dew', 2.00, 100);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (6, 'Coca-Cola', 9.00, 100);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (6, 'Red Bull', 12.00, 100);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (6, 'TNT', 11.00, 100);



insert into Categoria (cat_descricao) values ('Doces');

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (7, 'Bala', 0.10, 2000);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (7, 'Chiclete', 1.75, 1000);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (7, 'Chocolate', 5.00, 1000);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (7, 'Pirulito', 1.50, 1000);



insert into Categoria (cat_descricao) values ('Chipps');

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (8, 'Doritos', 6.00, 1000);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (8, 'Cheetos', 5.50, 1000);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (8, 'Ruffles', 6.50, 1000);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (8, 'Pringles', 16.00, 1000);



insert into Categoria (cat_descricao) values ('Paes');

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (9, 'Croissant', 8.00, 1000);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (9, 'Bisnaguinha', 2.00, 1000);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (9, 'Forma', 3.00, 1000);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (9, 'Frances', 5.00, 1000);



insert into Categoria (cat_descricao) values ('Salgados');

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (10, 'Coxinha', 2.50, 30);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (10, 'Risoles', 3.50, 30);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (10, 'Pastel', 2.00, 1);

insert into Produto (cat_codigo, pro_nome, pro_preco, pro_estoque)
  values (10, 'Kibe', 2.00, 1);


-- ------------- Tabela Venda ---------------
