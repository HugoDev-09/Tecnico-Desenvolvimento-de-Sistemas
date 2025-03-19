CREATE DATABASE sistema_venda;
USE sistema_venda;

CREATE TABLE pessoa(
id_pessoa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40) NOT NULL,
CPF VARCHAR(12) NOT NULL,
TELEFONE VARCHAR(12) ,
EMAIL VARCHAR(50),
SITUACAO CHAR(2) NOT NULL);

CREATE TABLE vendedor(
id_vendedor INT PRIMARY KEY AUTO_INCREMENT,
SALARIO DECIMAL(10,2),
MATRICULA VARCHAR(30) NOT NULL,
SITUACAO CHAR(2) NOT NULL,
id_pessoa INT NOT NULL,
FOREIGN KEY(id_pessoa) REFERENCES pessoa(id_pessoa));


CREATE TABLE cliente(
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
FIDELIDADE VARCHAR(20),
DESCONTO DECIMAL(10,2) ,
SITUACAO CHAR(1),
id_pessoa INT NOT NULL,
FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa));

CREATE TABLE pagamento(
id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
DESCRICAO VARCHAR(40) ,
PARCELA INT,
PRAZO INT,
SITUACAO CHAR(1));

CREATE TABLE venda(
id_venda INT PRIMARY KEY AUTO_INCREMENT,
DATA_COMPRA DATETIME DEFAULT CURRENT_TIMESTAMP,
VALOR_TOTAL DECIMAL(10,2),
DESCONTO DECIMAL(10,2),
ACRESCIMO DECIMAL(10,2),
numero_pedido INT NOT NULL,
CANCELADA CHAR(1),
id_cliente INT NOT NULL,
id_vendedor INT NOT NULL,
id_pagamento INT NOT NULL,
FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente),
FOREIGN KEY(id_vendedor) REFERENCES vendedor(id_vendedor),
FOREIGN KEY(id_pagamento) REFERENCES pagamento(id_pagamento)
);

CREATE TABLE itens_venda(
id_itens_venda INT PRIMARY KEY AUTO_INCREMENT,
DESCONTO DECIMAL(10,2),
ACRESCIMO DECIMAL(10,2),
QUANTIDADE INT NOT NULL,
PRECO DECIMAL(10,2),
VALOR_TOTAL DECIMAL(10,2),
CANCELADA CHAR(1),
id_produto INT NOT NULL,
id_venda INT NOT NULL,
FOREIGN KEY(id_produto) REFERENCES produto(id_produto),
FOREIGN KEY(id_venda) REFERENCES venda(id_venda));

CREATE TABLE produto(
id_produto INT PRIMARY KEY AUTO_INCREMENT,
DENOMINACAO VARCHAR(20) NOT NULL, 
QTD_ESTOQUE INT NOT NULL, 
PRECO DECIMAL(10,2) NOT NULL,
SITUACAO CHAR(2) NOT NULL);

CREATE TABLE endereco(
id_endereco INT PRIMARY KEY AUTO_INCREMENT,
RUA INT ,
BAIRRO VARCHAR(30),
CIDADE VARCHAR(25),
UF CHAR(2) NOT NULL,
CEP VARCHAR(15) NOT NULL,
SITUACAO CHAR(2) ,
id_pessoa INT NOT NULL,
FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa)
);

SELECT * FROM pessoa;
SELECT * FROM vendedor;
SELECT * FROM cliente;
SELECT * FROM pagamento;
SELECT * FROM venda;
SELECT * FROM produto;
SELECT * FROM endereco;
SELECT * FROM itens_venda;

INSERT INTO pessoa(nome,cpf,telefone,email,situacao)
VALUES('HUGO', '000999876','6140028922', 'iraildosantana@gmail.com','A');

INSERT INTO vendedor(SALARIO,MATRICULA,SITUACAO,id_pessoa)
VALUES(1510.10, '234567', 'A', 1);

INSERT INTO cliente(FIDELIDADE,DESCONTO,SITUACAO,id_pessoa)
VALUES('1 ano', 40, 'A',1);

INSERT INTO pagamento(DESCRICAO,SITUACAO)
VALUES('Pagamento a vista', 'A');

INSERT INTO venda( VALOR_TOTAL, DESCONTO,numero_pedido,CANCELADA,id_cliente,id_vendedor,id_pagamento)
VALUES(120, 30, 13456,'N',1,4,1 );##Erro

INSERT INTO produto(DENOMINACAO,QTD_ESTOQUE,PRECO,SITUACAO)
VALUES('LIVRO', 1, 20, 'A');

INSERT INTO endereco(RUA,BAIRRO,CIDADE,UF,CEP,SITUACAO,id_pessoa)
VALUES(17,'Monteiro Lobato', 'Pato de Minas', 'MG', '65789-976','A',1);

INSERT INTO itens_venda(DESCONTO, ACRESCIMO,QUANTIDADE,PRECO,VALOR_TOTAL,CANCELADA,id_produto,id_venda)
VALUES(10,0,25,100,90,'N',1,1);

*---------------------------------------------------------------------------------------


SELECT * FROM pessoa;
SELECT * FROM vendedor;
SELECT * FROM cliente;
SELECT * FROM pagamento;
SELECT * FROM venda;
SELECT * FROM produto;
SELECT * FROM endereco;
SELECT * FROM itens_venda;

INSERT INTO venda( VALOR_TOTAL, DESCONTO,numero_pedido,CANCELADA,id_cliente,id_vendedor,id_pagamento)
VALUES(0,0,0,'I',2,1,1);

INSERT INTO produto(DENOMINACAO,QTD_ESTOQUE,PRECO,SITUACAO)
VALUES('Creatina' , 50,54.69,'A'),
('Mochila',25,70.99,'A'),
('Estojo',1,10,'E'),
('Notebook',5,1499.99,'A'),
('Mentos',12,2.00,'A'),
('Teclado',0,'69.99','E');

INSERT INTO itens_venda(DESCONTO, ACRESCIMO,QUANTIDADE,id_produto,id_venda)
VALUES(0,0,2,3);


#-------------------------------------------------------------------------------------------------------

DELIMITER // 
CREATE TRIGGER preco
AFTER INSERT
ON itens_venda FOR EACH ROW
BEGIN
UPDATE itens_venda SET NEW.preco = (SELECT preco FROM produto WHERE id_produto = NEW.id_produto ) WHERE NEW.id_venda = NEW.id_venda;
END
//
