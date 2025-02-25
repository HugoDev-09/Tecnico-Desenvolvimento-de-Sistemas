CREATE DATABASE aula01;## Criar o banco de dados
USE aula01;##Usar o banco de dados

CREATE TABLE pessoa( ##Criar tabela
id_pessoa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
cpf VARCHAR(15) NOT NULL,
rg 	VARCHAR(11) NOT NULL,
idade INT,
situacao CHAR(2) NOT NULL);

CREATE TABLE funcionario(
id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
salario DECIMAL(10,2),
funcao VARCHAR(30) NOT NULL,
situacao CHAR(1) NOT NULL,
id_pessoa INT NOT NULL,
foreign key(id_pessoa) references pessoa(id_pessoa)
);

CREATE TABLE cliente(
id_cliente INT PRIMARY KEY AUTO_INCREMENT, 
fidelidade VARCHAR(20),
saldo DECIMAL(10,2),
situacao CHAR(2) NOT NULL,
id_pessoa INT NOT NULL,
foreign key(id_pessoa) references pessoa(id_pessoa)
);

CREATE TABLE endereco(
id_endereco INT PRIMARY KEY AUTO_INCREMENT,
rua VARCHAR(30) ,
cep VARCHAR(10) NOT NULL,
numero INT,
complemento VARCHAR(50),
uf CHAR(2) NOT NULL,
cidade VARCHAR(25),
país VARCHAR(20),
id_pessoa INT NOT NULL ,
foreign key(id_pessoa) references pessoa(id_pessoa)
);

SELECT * FROM pessoa,cliente;

INSERT INTO pessoa(nome,cpf,rg,idade,situacao)
VALUES('Joao ', '00099988876', '98775', 17, 'P'),
('Maria ', '00099988876', '98775', 17, 'P');

INSERT INTO cliente(fidelidade,saldo,situacao,id_pessoa)
VALUES('SIM', 1000, 'P', 3)




