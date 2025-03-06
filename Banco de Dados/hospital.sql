CREATE DATABASE consulta;
USE consulta;


CREATE TABLE pessoa(
id_pessoa  INT PRIMARY KEY AUTO_INCREMENT,
NOME VARCHAR(40) NOT NULL,
CPF VARCHAR(15) NOT NULL,
RG INT ,
IDADE INT,
TELEFONE VARCHAR(15),
SITUACAO CHAR(5)
);

CREATE TABLE medico(
id_medico INT PRIMARY KEY AUTO_INCREMENT, 
SALARIO DECIMAL(10,2) NOT NULL,
CRM VARCHAR(20) NOT NULL,
ESPECIALIDADE VARCHAR(40) NOT NULL,
SITUACAO CHAR(5),
id_pessoa INT UNIQUE NOT NULL,
FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa)
);


CREATE TABLE paciente(
id_paciente INT PRIMARY KEY AUTO_INCREMENT,
PLANO_SAUDE VARCHAR(20) NOT NULL,
CODIGO_CARTEIRINHA INT,
SITUACAO CHAR(5) NOT NULL,
id_pessoa INT NOT NULL,
FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa)
);


CREATE TABLE consulta(
id_consulta INT PRIMARY KEY AUTO_INCREMENT,
AGENDAMENTO DATETIME DEFAULT CURRENT_TIMESTAMP,
STATUS_CONSULTA VARCHAR(30) NOT NULL,
DATA_FINAL_CONSULTA DATETIME DEFAULT CURRENT_TIMESTAMP,
id_medico INT NOT NULL,
id_paciente INT NOT NULL,
FOREIGN KEY (id_medico) REFERENCES medico(id_medico),
FOREIGN KEY(id_paciente) REFERENCES paciente(id_paciente)
);

SELECT * FROM pessoa;
SELECT * FROM medico;
SELECT * FROM paciente;
SELECT * FROM consulta;

DELETE FROM medico 
WHERE id_pessoa = 1;


INSERT INTO pessoa(NOME,CPF,RG,IDADE,TELEFONE,SITUACAO)
VALUES('Hugo Ruan','77700099987',234567,17,'(61)987767890','Ativo' ),
('Iraildo','33213030025','123478','25','(61)40028922','Ativo'),
('Andreia','778978945','98796634',37,'(61)9161651','A'),
('Adriano','8897897','4564564',19,'(61)7121623','A'),
('Paulo','9634234','97897564',28,'(61)76126','A'),
('Victor','3456464','648787',34,'(61)894651','A'),
('Ana Maria','978978954','78973645',41,'(61)811156','A'),
('Maria Braga','4789754','9789678',47,'(61)8465156','A');


INSERT INTO medico(SALARIO,CRM,ESPECIALIDADE,SITUACAO,id_pessoa)
VALUES(8500.90,'CR5565456','Pediatra','A',1),
(10000,'CR85455','Clinico Geral','A',2),
(7500,'CR5643','Cardiologia','A',3),
(9500,'CR87644','Dermatologia','A',4);

INSERT INTO paciente(PLANO_SAUDE,CODIGO_CARTEIRINHA,SITUACAO,id_pessoa)
VALUES('Possui',4567,'Ativo',1),
('Nao possui',8723,'Ativo',2),
('Caixa',845665,'A',3),
('Amil',897789,'A',4);

INSERT INTO consulta(AGENDAMENTO,STATUS_CONSULTA,DATA_FINAL_CONSULTA,id_medico,id_paciente)
VALUES('2025-02-07 16:20:00','Atendido','2025-03-15 15:00:00',1,1),
('2025-05-22 09:15:00','Agendado','2025-06-15 17:00:00',2,2),
('2025-02-27 12:30:00','Finalizado','2025-02-27 13:30:00',1,3);

--------------------------------------------------------------------------------------------

SELECT  * FROM consulta;##Nome, cpf,telefone,codigo-carteirinha,agendamento,status_consulta
SELECT 
p2.NOME AS paciente ,
p2.CPF AS paciente ,
p2.TELEFONE AS paciente,
p.CODIGO_CARTEIRINHA,
p.AGENDAMENTO,
c.STATUS_CONSULTA

FROM consulta c
INNER JOIN paciente p ON p.id_paciente = p.id.paciente
INNER JOIN pessoa p2 ON p.id_pessoa = m.id_pessoa

------------------------------------------------------------------------------------------
 /*Outros INNER JOIN*/

SELECT 
p.NOME ,
p.TELEFONE ,
m.CRM,
m.ESPECIALIDADE,
c.STATUS_CONSULTA,
c.AGENDAMENTO
FROM consulta c
INNER JOIN medico m ON m.id_medico = c.id_medico 
INNER JOIN pessoa p ON p.id_pessoa = m.id_pessoa

----------------------------------------------------------------------------------------


SELECT 
pm.NOME AS Nome_medico,
pp.NOME AS Nome_paciente,
m.CRM,
m.ESPECIALIDADE,
c.STATUS_CONSULTA,
c.AGENDAMENTO,
pm.TELEFONE 
FROM consulta c
INNER JOIN medico m ON m.id_medico = c.id_medico 
INNER JOIN pessoa pm ON m.id_pessoa = pm.id_pessoa
INNER JOIN paciente pc ON pc.id_paciente = c.id_paciente
INNER JOIN pessoa pp ON pc.id_pessoa = pp.id_pessoa;


