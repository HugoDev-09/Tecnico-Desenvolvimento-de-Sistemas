CREATE DATABASE sistema_clinica;
USE sistema_clinica;

CREATE TABLE pessoa(
id_pessoa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
idade INT ,
cpf VARCHAR(20) NOT NULL,
telefone VARCHAR(20) ,
sexo VARCHAR(15) NOT NULL,
situacao CHAR(1) NOT NULL,
endereco VARCHAR(50) 
);

CREATE TABLE login(
id_login INT PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(40) NOT NULL,
senha VARCHAR(40) NOT NULL,
tipo_usuario VARCHAR(20) NOT NULL,
situacao CHAR(1) 
);

CREATE TABLE cliente(
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
historico_saude VARCHAR(45) ,
id_pessoa INT NOT NULL,
FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa)
);


CREATE TABLE funcionario (
id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
salario DOUBLE ,
cargo VARCHAR(30) ,
situacao CHAR(1),
id_pessoa INT NOT NULL,
FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa)
);

CREATE TABLE agenda(
id_agenda INT PRIMARY KEY AUTO_INCREMENT,
horario DATETIME DEFAULT CURRENT_TIMESTAMP ,
data_marcada DATE NOT NULL,
retorno DATE ,
status_agenda VARCHAR(30) ,
id_funcionario	INT NOT NULL,
id_cliente INT NOT NULL,
FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario),
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE pagamento (
id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
forma_pagamento VARCHAR(30) NOT NULL
);

CREATE TABLE servico(
id_servico INT PRIMARY KEY AUTO_INCREMENT,
valor_total DOUBLE ,
status_servico VARCHAR(30),
id_pagamento INT NOT NULL,
id_agenda INT NOT NULL,
FOREIGN KEY (id_agenda) REFERENCES agenda(id_agenda),
FOREIGN KEY (id_pagamento) REFERENCES pagamento(id_pagamento)
);

CREATE TABLE receita(
id_receita INT PRIMARY KEY AUTO_INCREMENT,
categoria VARCHAR(30) NOT NULL,
valor_receita DOUBLE NOT NULL
);

CREATE TABLE despesas(
id_despesa INT PRIMARY KEY AUTO_INCREMENT,
categoria VARCHAR(30) NOT NULL,
valor_despesa DOUBLE NOT NULL
);


CREATE TABLE entrada_saida(
id_entrada_saida INT PRIMARY KEY AUTO_INCREMENT,
data_entrada_valor DATE ,
recebimento DOUBLE ,
gastos DOUBLE ,
saldo_lucro DOUBLE,
descricao VARCHAR(100),
categoria VARCHAR(50) NOT NULL,
id_servicos INT NOT NULL,
id_receita INT NOT NULL,
id_despesas INT NOT NULL
);


CREATE TABLE estoque(
id_estoque INT PRIMARY KEY AUTO_INCREMENT,
produto VARCHAR(50) ,
quantidade INT ,
valor_produto DOUBLE ,
recebimento_produto DATE ,
validade_produto INT , 
reposicao VARCHAR(30) ,
situacao VARCHAR(30)
);

CREATE TABLE procedimento(
id_procedimento INT PRIMARY KEY AUTO_INCREMENT,
id_servico INT NOT NULL,
id_estoque INT NOT NULL,	
FOREIGN KEY (id_servico) REFERENCES servico(id_servico),
FOREIGN KEY (id_estoque) REFERENCES estoque(id_estoque)
);

INSERT INTO pessoa(nome,idade,cpf,telefone,sexo,situacao,endereco)
VALUES('Hugo Ruan',18,'xx','61998379048','Masculino','A','xx');

INSERT INTO login(usuario,senha,tipo_usuario,situacao)
VALUES('admin',UPPER(MD5('1516')),'Administrador','A');

INSERT INTO cliente(historico_saude,id_pessoa)
VALUES("Nenhum",1);

SELECT * FROM login;
SELECT * FROM pessoa;
SELECT * FROM cliente;

SHOW TABLES;

##PRIMEIRO INNER JOIN : Nome, idade, cpf,telefone,sexo,endereco,historico saude

CREATE VIEW dados_cliente AS 
SELECT
p.id_pessoa, 
p.nome,
p.idade,
p.cpf,
p.telefone,
p.sexo,
p.endereco,	
c.historico_saude
FROM cliente c
INNER JOIN pessoa p ON c.id_pessoa = p.id_pessoa;

SELECT id_pessoa FROM pessoa ORDER BY id_pessoa DESC LIMIT 1;


SELECT * FROM pessoa









