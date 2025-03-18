#Atividade 
CREATE DATABASE Exercicio_trigger;
USE Exercicio_trigger;

CREATE TABLE pessoa(
id_pessoa INT PRIMARY KEY AUTO_INCREMENT,
NOME VARCHAR(30) NOT NULL,
IDADE INT NOT NULL,
CPF_CNPJ VARCHAR(30) NOT NULL,
TELEFONE VARCHAR(20),
EMAIL VARCHAR(40),
SITUACAO CHAR(5) NOT NULL
);

SELECT * FROM pessoa;

INSERT INTO pessoa(NOME,IDADE,CPF_CNPJ,TELEFONE,EMAIL,SITUACAO)
VALUES('Ana Paula Costa', 28, '123.456.789-00', '(11) 99876-5432', 'ana.costa@email.com', 'A'),
  ('Carlos Henrique Lima', 35, '987.654.321-99', '(21) 91234-5678', 'carlos.lima@email.com', 'A'),
  ('Maria Fernanda Souza', 40, '234.567.890-12', '(31) 98765-4321', 'maria.souza@email.com', 'B'),
  ('João Pedro Alves', 50, '12.345.678/0001-99', '(41) 91234-6789', 'joao.alves@empresa.com', 'A'),
  ('Beatriz Oliveira', 60, '345.678.901-23', '(61) 99988-7766', 'beatriz.oliveira@email.com', 'I');

#---------------------------------------------------------------------------------------------------

#Trigger DELETE

CREATE TABLE trigger_01(
id_trigger_01 INT PRIMARY KEY AUTO_INCREMENT,
id_pessoa INT, 
NOME VARCHAR(30) NOT NULL,
IDADE INT NOT NULL,
CPF_CNPJ VARCHAR(30) NOT NULL,
TELEFONE VARCHAR(20),
EMAIL VARCHAR(40),
SITUACAO CHAR(5) NOT NULL
);

SELECT * FROM pessoa ORDER BY id_pessoa DESC; # Ordem decrescente
INSERT INTO pessoa(NOME,IDADE,CPF_CNPJ,TELEFONE,EMAIL,SITUACAO)
VALUES('Joao Pinheiros Ferreira',32,'009765432-89','(61)987766521','joaoferreira15@gmail.com','I')

DELIMITER //
CREATE TRIGGER trigger_01
BEFORE DELETE # Antes de deletar, ele vai analisar se tera algum delete 
ON pessoa FOR EACH ROW #Em pessoa, para cada linha
BEGIN #Analise
INSERT INTO trigger_01(id_pessoa,NOME,IDADE,CPF_CNPJ,TELEFONE,EMAIL,SITUACAO)
VALUES(OLD.id_pessoa,OLD.NOME,OLD.IDADE,OLD.CPF_CNPJ,OLD.TELEFONE,OLD.EMAIL,OLD.SITUACAO);
END
//

SELECT * FROM trigger_01;

#------------------------------------------------------------------------------
#Trigger update
DROP TRIGGER trigger_02; 


CREATE TABLE trigger_02(
id_trigger_02 INT PRIMARY KEY AUTO_INCREMENT,
id_pessoa INT, 
NOME VARCHAR(30) NOT NULL,
IDADE INT NOT NULL,
CPF_CNPJ VARCHAR(30) NOT NULL,
TELEFONE VARCHAR(20),
EMAIL VARCHAR(40),
SITUACAO CHAR(5) NOT NULL
);

DELIMITER //
CREATE TRIGGER trigger_02
BEFORE UPDATE
ON pessoa FOR EACH ROW
BEGIN
INSERT INTO trigger_02(id_pessoa,NOME,IDADE,CPF_CNPJ,TELEFONE,EMAIL,SITUACAO)
VALUES(OLD.id_pessoa,OLD.NOME,OLD.IDADE,OLD.CPF_CNPJ,OLD.TELEFONE,OLD.EMAIL,OLD.SITUACAO);
END
//

SELECT * FROM pessoa;
SELECT * FROM trigger_02;













