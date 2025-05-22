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

ALTER TABLE cliente
DROP COLUMN procedimento;
CREATE TABLE cliente(
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
historico_saude VARCHAR(45) ,
procedimento VARCHAR(40),
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

ALTER TABLE agenda
ADD procedimento VARCHAR(40);
CREATE TABLE agenda(
id_agenda INT PRIMARY KEY AUTO_INCREMENT,
horario TIME  ,
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

ALTER TABLE entrada_saida
ADD tipo_receita VARCHAR(20);

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

INSERT INTO cliente(historico_saude,procedimento,id_pessoa)
VALUES("Nenhum","Limpeza de Pele",1);

INSERT INTO funcionario(salario,cargo,situacao,id_pessoa)
VALUES('3500.00','Chefe da Clínica','A',30);


SELECT * FROM login;
SELECT * FROM pessoa;
SELECT * FROM cliente;
SELECT * FROM agenda;
SELECT * FROM funcionario;
SELECT * FROM estoque;
SELECT * FROM entrada_saida;
SELECT * FROM receita;
SELECT * FROM despesas;

SHOW TABLES;

SELECT * FROM dados_agenda;
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
SELECT * FROM dados_agenda;

##SEGUNDO INNER JOIN (data_marcada,horario,retorno,status_agenda,procedimento)
DROP VIEW dados_agenda;
CREATE VIEW dados_agenda AS
SELECT 
a.id_agenda,
a.data_marcada,
a.horario,
a.retorno,
a.procedimento,
a.status_agenda,
pc.nome AS cliente,
pf.nome AS funcionario

 FROM agenda a 
INNER JOIN cliente c ON a.id_cliente = c.id_cliente
INNER JOIN pessoa pc ON pc.id_pessoa = c.id_pessoa
INNER JOIN funcionario f ON f.id_funcionario = a.id_funcionario
INNER JOIN pessoa pf ON pf.id_pessoa = f.id_pessoa
ORDER BY a.id_agenda DESC;

SELECT id_cliente FROM cliente ORDER BY id_cliente DESC LIMIT 1;
##TERCEIRO INNER JOIN(nome = receita,recebimento = entrada_saida,categoria = entrada_saida ,data = entrada_saida,descricao = entrada_saida,receita = categoria de entrada_saida)
SELECT 
es.nome_receita,
es.recebimento,
es.categoria,
es.data_entrada_valor,
es.descricao


 FROM entrada_saida es
 INNER JOIN receita rec ON rec.id_receita = es.id_receita;








## TESTES
SELECT * FROM dados_agenda;
SELECT id_pessoa FROM pessoa ORDER BY id_pessoa DESC LIMIT 1;
SELECT * FROM pessoa;
SELECT id_funcionario FROM funcionario ORDER BY id_funcionario DESC LIMIT 1;
SELECT nome FROM cliente ORDER BY id_cliente DESC LIMIT 1;
SELECT procedimento FROM dados_agenda;
SELECT historico_saude  FROM cliente ORDER BY id_cliente DESC LIMIT 1;
SELECT * FROM entrada_saida;
SELECT id_pessoa FROM cliente ORDER BY id_cliente DESC LIMIT 1;

